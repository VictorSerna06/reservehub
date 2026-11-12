package com.reservehub.api.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "services")
@Getter
@Setter
@NoArgsConstructor
public class Service {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(length = 50, nullable = false, unique = true)
    private String name;

    @Column(length = 255, nullable = false)
    private String description;

    @Column(name = "duration_min", nullable = false)
    private Integer durationMin;

    @ManyToOne
    @JoinColumn(name = "state_id", nullable = false)
    private State state;
}
