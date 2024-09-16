package org.example.json_placeholder;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.experimental.Accessors;

@Entity
@Table(name = "company")
@Accessors(chain = true)
public record Company(
        @Id
        Long id,
        String name,
        String catchPhrase,
        String bs,
        @OneToOne(mappedBy = "company")
        User user
) {
}
