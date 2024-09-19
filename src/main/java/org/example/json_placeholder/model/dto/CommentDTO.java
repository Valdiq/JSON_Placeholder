package org.example.json_placeholder.model.dto;

import jakarta.validation.constraints.Email;
import org.springframework.validation.annotation.Validated;

@Validated
public record CommentDTO(
        Long id,
        Long postId,
        String name,
        @Email
        String email,
        String body
) {
}
