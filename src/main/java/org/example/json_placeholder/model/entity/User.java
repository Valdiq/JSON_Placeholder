package org.example.json_placeholder.model.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.experimental.Accessors;

@Entity
@Data
@Table(name = "user")
@Accessors(chain = true)
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private String username;

    private String email;

    private String phone;

    private String website;

    @OneToOne
    @JoinColumn(name = "address_id")
    private Address addressId;

    @OneToOne
    @JoinColumn(name = "company_id")
    private Company companyId;
}
