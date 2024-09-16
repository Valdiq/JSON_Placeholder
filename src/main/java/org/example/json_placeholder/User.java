package org.example.json_placeholder;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import lombok.experimental.Accessors;

@Entity
@Table(name = "user")
@Accessors(chain = true)
public record User(
        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        Long id,
        String name,
        String username,
        @Email
        String email,
        @OneToOne(cascade = CascadeType.ALL)
        @JoinColumn(name = "address_id", referencedColumnName = "id")
        Adress adress,
        String phone,
        String website,
        @OneToOne(cascade = CascadeType.ALL)
        @JoinColumn(name = "company_id", referencedColumnName = "id")
        Company company
) {
}
