package org.example.json_placeholder.job;

import lombok.RequiredArgsConstructor;
import org.example.json_placeholder.controller.PostController;
import org.example.json_placeholder.mapper.PostJsonToPostDtoMapper;
import org.example.json_placeholder.model.dto.PostDTO;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ImportPostJob {

    private final PostJsonToPostDtoMapper mapper;

    private final PostController postController;

    @Scheduled(fixedDelay = 60000)
    @Async
    public void importPostsToDb() {
        List<PostDTO> postDTOList = mapper.mapPostsJsonListToPostsDtoList();
        postDTOList.forEach(postController::createPost);
    }

}
