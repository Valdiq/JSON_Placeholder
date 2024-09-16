package org.example.json_placeholder;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.experimental.Accessors;

@Entity
@Table(name = "geo")
@Accessors(chain = true)
public record Geo(
        @Id
        Long id,
        String lat,
        String lng,
        @OneToOne(mappedBy = "geo")
        Adress adress
) {
}
