package org.example.json_placeholder.model.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.experimental.Accessors;

@Entity
@Data
@Table(name = "address")
@Accessors(chain = true)
public class Address {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String street;

    private String suite;

    private String city;

    private String zipcode;

    @OneToOne
    @JoinColumn(name = "geo_id")
    private Geo geoId;
}
