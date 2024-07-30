    package org.example.entity;

    import jakarta.persistence.*;
    import lombok.AllArgsConstructor;
    import lombok.Getter;
    import lombok.NoArgsConstructor;
    import lombok.Setter;
    import org.example.enumertaror.TableField;
    import org.example.enumertaror.TableType;

    import java.time.LocalDateTime;

    @AllArgsConstructor
    @NoArgsConstructor
    @Getter
    @Setter
    @Entity
    @Table(name = "reservation")
    public class ReservationEntity extends BaseEntity {
        @ManyToOne
        private UserEntity user;
        @ManyToOne
        private RestaurantEntity restaurant;
        private Integer numberOfPeople;
        private String status;
        private String phoneNumber;
        private LocalDateTime reservationDate;
        private TableType type;
       @Enumerated(EnumType.STRING)
        private TableField nearTheWindow;
    }



