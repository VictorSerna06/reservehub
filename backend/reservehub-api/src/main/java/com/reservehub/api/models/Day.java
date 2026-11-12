package com.reservehub.api.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "days_of_week")
@Getter
@Setter
@NoArgsConstructor
public class Day {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "day_name", length = 15, nullable = false, unique = true)
    private String dayName;
}
