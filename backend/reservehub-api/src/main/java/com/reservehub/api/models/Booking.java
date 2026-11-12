package com.reservehub.api.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;
import java.time.LocalTime;

@Entity
@Table(name = "bookings")
@Getter
@Setter
@NoArgsConstructor
public class Booking {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "service_name", length = 50, nullable = false)
    private String serviceName;

    @Column(name = "service_description", nullable = false)
    private String serviceDescription;

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @ManyToOne
    @JoinColumn(name = "service_id", nullable = false)
    private Service service;

    @Column(name = "booking_date", nullable = false)
    private LocalDate  bookingDate;

    @Column(name = "start_time", nullable = false)
    private LocalTime startTime;

    @Column(name = "service_duration_min", nullable = false)
    private Integer serviceDurationMin;

    @ManyToOne
    @JoinColumn(name = "status_id", nullable = false)
    private Status status;
}
