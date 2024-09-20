package org.example.json_placeholder.mapper;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.example.json_placeholder.model.dto.PostDTO;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Stream;

@Slf4j
@Service
@RequiredArgsConstructor
public class PostJsonToPostDtoMapper {

    private final ObjectMapper objectMapper;

    public List<PostDTO> mapPostsJsonListToPostsDtoList() {
        List<PostDTO> postDTOList = new ArrayList<>();

        try (Stream<Path> stream = Files.list(Paths.get(System.getProperty("user.home")))) {
            stream
                    .filter(file -> !Files.isDirectory(file) && file.getFileName().toString().startsWith("post") && file.getFileName().toString().endsWith(".json"))
                    .forEach(path -> {
                        try {
                            postDTOList.addAll(objectMapper.readValue(path.toFile(), new TypeReference<List<PostDTO>>() {
                            }));
                        } catch (IOException e) {
                            log.error("Cannot open file {}", path.getFileName().toString(), e);
                        }
                    });
        } catch (IOException e) {
            log.error("Error listing files", e);
        }
        return postDTOList;
    }
}
