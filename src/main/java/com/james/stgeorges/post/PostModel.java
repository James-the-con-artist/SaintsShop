package com.james.stgeorges.post;

import com.james.stgeorges.user.User;

import javax.persistence.*;
import java.util.Date;
import java.util.UUID;

@Entity
@Table (name = "Post")
public class PostModel {
    @Id
    @Column (name = "id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;
    private String name;
    private String description;
    private Date date;
    private String pictureURL;
    private String price;
    //private User owner;
    public enum ECategories{

        BOOKS, VIDEOGAMES, SPORTS, ELECTRONICS, UNIFORMS, INSTRUMENTS, OTHER

    }
    private ECategories category;


    public UUID getId() {
        return id;
    }
    public void setId(UUID id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {return description;}
    public void setDescription(String description) {this.description = description;}

    public Date getDate() {return date;}
    public void setDate(Date date) {this.date = date;}

    public String getPictureURL() {return pictureURL;}
    public void setPictureURL(String pictureURL) {this.pictureURL = pictureURL;}

    public String getPrice() {return price;}
    public void setPrice(String price) {this.price = price;}

//    public User getOwner() {return owner;}
//    public void setOwner(User owner) {this.owner = owner;}

    public ECategories getCategory() {return category;}
    public void setCategory(ECategories category) {this.category = category;}


}
