package org.example.json_placeholder.service;

import org.example.json_placeholder.model.dto.CommentDTO;
import org.example.json_placeholder.model.dto.PostDTO;
import org.example.json_placeholder.model.entity.Post;
import org.example.json_placeholder.model.entity.User;
import org.example.json_placeholder.repository.PostRepository;
import org.example.json_placeholder.repository.UserRepository;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.reactive.function.client.WebClient;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@Service
public class PostService {

    private PostRepository postRepository;

    private UserRepository userRepository;

    private WebClient webClient;

    public PostService(WebClient.Builder builder, PostRepository postRepository, UserRepository userRepository) {
        this.postRepository = postRepository;
        this.userRepository = userRepository;
        this.webClient = builder.baseUrl("https://jsonplaceholder.typicode.com")
                .defaultHeader(HttpHeaders.ACCEPT, "application/json")
                .build();
    }

    public Flux<PostDTO> getAllPosts() {
        return webClient.get()
                .uri("/posts")
                .retrieve()
                .bodyToFlux(PostDTO.class)
                .log();
    }

    public Mono<PostDTO> getPostById(Long id) {
        return webClient.get()
                .uri(uriBuilder ->
                        uriBuilder.path("/posts/{id}")
                                .build(id))
                .retrieve()
                .bodyToMono(PostDTO.class)
                .log();
    }

    public Flux<CommentDTO> getAllCommentsByPostId(Long id) {
        return webClient.get()
                .uri(uriBuilder ->
                        uriBuilder.path("/posts/{id}/comments")
                                .build(id))
                .retrieve()
                .bodyToFlux(CommentDTO.class)
                .log();
    }

    public Flux<CommentDTO> getAllCommentsByPostIdParameter(Long id) {
        return webClient.get()
                .uri(uriBuilder ->
                        uriBuilder.path("/comments")
                                .queryParam("postId", id)
                                .build())
                .retrieve()
                .bodyToFlux(CommentDTO.class)
                .log();
    }

    public Mono<Post> createPost(PostDTO postRequest) {
        User user = userRepository.findById(postRequest.userId())
                .orElseThrow(() -> new RuntimeException("User Not Found!"));

        Post postToSave = new Post()
                .setTitle(postRequest.title())
                .setBody(postRequest.body())
                .setUserId(user);

        return Mono.just(postRepository.save(postToSave));
    }

    @Transactional
    public Mono<Post> updatePost(Long id, PostDTO updatePostRequest) {
        var postToUpdate = postRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Post Not Found!"))
                .setBody(updatePostRequest.body())
                .setTitle(updatePostRequest.title());

        return Mono.just(postRepository.save(postToUpdate));
    }

    public Mono<Void> deletePost(Long id) {
        postRepository.deleteById(id);
        return Mono.empty();
    }

}
