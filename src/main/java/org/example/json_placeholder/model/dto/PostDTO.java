package org.example.json_placeholder.model.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

public record PostDTO(
        @JsonProperty(value = "id")
        Long id,
        @JsonProperty(value = "userId")
        Long userId,
        @JsonProperty(value = "title")
        String title,
        @JsonProperty(value = "body")
        String body
) {
}
