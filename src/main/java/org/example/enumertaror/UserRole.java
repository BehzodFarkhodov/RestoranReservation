package org.example.enumertaror;

import jakarta.persistence.Enumerated;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter

public enum UserRole {
   USER,ADMIN;
}
