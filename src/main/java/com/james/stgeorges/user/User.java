package com.james.stgeorges.user;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class User {
    @Id
    private Long userId;
    private String name;
    private String email;
    private String phoneNumber;
}
