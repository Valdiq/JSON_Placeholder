package org.example.json_placeholder;

import jakarta.persistence.*;
import lombok.experimental.Accessors;

@Entity
@Table(name = "adress")
@Accessors(chain = true)
public record Adress(
        @Id
        Long id,
        String street,
        String suite,
        String city,
        String zipCode,
        @OneToOne(cascade = CascadeType.ALL)
        @JoinColumn(name = "geo_id", referencedColumnName = "id")
        Geo geo
) {
}
