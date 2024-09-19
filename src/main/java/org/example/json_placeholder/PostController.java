package org.example.json_placeholder;

import lombok.RequiredArgsConstructor;
import org.example.json_placeholder.model.dto.CommentDTO;
import org.example.json_placeholder.model.dto.PostDTO;
import org.example.json_placeholder.model.entity.Post;
import org.example.json_placeholder.service.PostService;
import org.springframework.web.bind.annotation.*;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@RestController
@RequiredArgsConstructor
@RequestMapping("/")
public class PostController {

    private final PostService service;

    @GetMapping("/posts")
    public Flux<PostDTO> getAllPosts() {
        return service.getAllPosts();
    }

    @GetMapping("/posts/{id}")
    public Mono<PostDTO> getPostById(@PathVariable Long id) {
        return service.getPostById(id);
    }

    @GetMapping("/posts/{id}/comments")
    public Flux<CommentDTO> getAllCommentsByPostId(@PathVariable Long id) {
        return service.getAllCommentsByPostId(id);
    }

    @GetMapping("/comments")
    public Flux<CommentDTO> getAllCommentsByPostIdParameter(@RequestParam Long postId) {
        return service.getAllCommentsByPostIdParameter(postId);
    }

    @PostMapping("/posts")
    public Mono<Post> createPost(@RequestBody PostDTO postRequest) {
        return service.createPost(postRequest);
    }

    @PutMapping("/posts/{id}")
    public Mono<Post> updatePost(@PathVariable Long id, @RequestBody PostDTO postEntity) {
        return service.updatePost(id, postEntity);
    }

    @DeleteMapping("/posts/{id}")
    public Mono<Void> deletePost(@PathVariable Long id) {
        return service.deletePost(id);
    }


}
