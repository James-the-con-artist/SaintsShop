package com.james.stgeorges.post;

import com.james.stgeorges.user.User;

import javax.persistence.*;
import java.text.SimpleDateFormat;
import java.util.*;

@Entity
public class Post {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;
    private String title;
    @Column(columnDefinition = "CLOB")
    private String description;
    private String price;
    private Date createdDate;
    private String contactPhone;
    private String contactEmail;
    private String pictureUrl0;
    private String pictureUrl1;
    private String pictureUrl2;
    private String pictureUrl3;
    private String pictureUrl4;
    private String pictureUrl5;
    private String pictureUrl6;
    private String pictureUrl7;
    private String pictureUrl8;

    public enum EPostStatus{
        Published,Hidden
    }
    private EPostStatus status;
    public enum ECategories{
        Books, Electronics, Uniform, Sports, Instruments, Miscellaneous
    }
    private ECategories category;
    @ManyToOne
    private User user;

    public Post() {
    }
    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getCreatedDate() {
        return createdDate;
    }
    public String getCreatedDateText() {
        if(getCreatedDate()!=null){
            SimpleDateFormat simpleDateFormat=new SimpleDateFormat("YYYY-MM-dd");
            return simpleDateFormat.format(getCreatedDate());
        }
        return "";
    }
    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public ECategories getCategory() {
        return category;
    }

    public void setCategory(ECategories category) {
        this.category = category;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getContactPhone() {
        return contactPhone;
    }

    public void setContactPhone(String contactPhone) {
        this.contactPhone = contactPhone;
    }

    public String getContactEmail() {
        return contactEmail;
    }

    public void setContactEmail(String contactEmail) {
        this.contactEmail = contactEmail;
    }

    public String getPictureUrl0() {
        return pictureUrl0;
    }

    public void setPictureUrl0(String pictureUrl0) {
        this.pictureUrl0 = pictureUrl0;
    }

    public String getPictureUrl1() {
        return pictureUrl1;
    }

    public void setPictureUrl1(String pictureUrl1) {
        this.pictureUrl1 = pictureUrl1;
    }

    public String getPictureUrl2() {
        return pictureUrl2;
    }

    public void setPictureUrl2(String pictureUrl2) {
        this.pictureUrl2 = pictureUrl2;
    }

    public String getPictureUrl3() {
        return pictureUrl3;
    }

    public void setPictureUrl3(String pictureUrl3) {
        this.pictureUrl3 = pictureUrl3;
    }

    public String getPictureUrl4() {
        return pictureUrl4;
    }

    public void setPictureUrl4(String pictureUrl4) {
        this.pictureUrl4 = pictureUrl4;
    }

    public String getPictureUrl5() {
        return pictureUrl5;
    }

    public void setPictureUrl5(String pictureUrl5) {
        this.pictureUrl5 = pictureUrl5;
    }

    public String getPictureUrl6() {
        return pictureUrl6;
    }

    public void setPictureUrl6(String pictureUrl6) {
        this.pictureUrl6 = pictureUrl6;
    }

    public String getPictureUrl7() {
        return pictureUrl7;
    }

    public void setPictureUrl7(String pictureUrl7) {
        this.pictureUrl7 = pictureUrl7;
    }

    public String getPictureUrl8() {
        return pictureUrl8;
    }

    public void setPictureUrl8(String pictureUrl8) {
        this.pictureUrl8 = pictureUrl8;
    }

    public EPostStatus getStatus() {
        return status;
    }

    public void setStatus(EPostStatus status) {
        this.status = status;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
    public List<String> getPictureUrls() {
        List<String> pictureUrls=new ArrayList<>();
        if(this.getPictureUrl0()!=null&&this.getPictureUrl0().length()>0)
            pictureUrls.add(this.getPictureUrl0());
        if(this.getPictureUrl1()!=null&&this.getPictureUrl1().length()>0)
            pictureUrls.add(this.getPictureUrl1());
        if(this.getPictureUrl2()!=null&&this.getPictureUrl2().length()>0)
            pictureUrls.add(this.getPictureUrl2());
        if(this.getPictureUrl3()!=null&&this.getPictureUrl3().length()>0)
            pictureUrls.add(this.getPictureUrl3());
        if(this.getPictureUrl4()!=null&&this.getPictureUrl4().length()>0)
            pictureUrls.add(this.getPictureUrl4());
        if(this.getPictureUrl5()!=null&&this.getPictureUrl5().length()>0)
            pictureUrls.add(this.getPictureUrl5());
        if(this.getPictureUrl6()!=null&&this.getPictureUrl6().length()>0)
            pictureUrls.add(this.getPictureUrl6());
        if(this.getPictureUrl7()!=null&&this.getPictureUrl7().length()>0)
            pictureUrls.add(this.getPictureUrl7());
        if(this.getPictureUrl8()!=null&&this.getPictureUrl8().length()>0)
            pictureUrls.add(this.getPictureUrl8());
        return pictureUrls;
    }


    public void setPictureUrls(List<String> newFileNames) {
        if(newFileNames!=null&&newFileNames.size()>0){
            newFileNames.stream().filter(s -> s!=null&&s.length()>0);
            if(newFileNames.size()>0)
                this.setPictureUrl0(newFileNames.get(0));
            else
                this.setPictureUrl0(null);
            if(newFileNames.size()>1)
                this.setPictureUrl1(newFileNames.get(1));
            else
                this.setPictureUrl1(null);
            if(newFileNames.size()>2)
                this.setPictureUrl2(newFileNames.get(2));
            else
                this.setPictureUrl2(null);
            if(newFileNames.size()>3)
                this.setPictureUrl3(newFileNames.get(3));
            else
                this.setPictureUrl3(null);
            if(newFileNames.size()>4)
                this.setPictureUrl4(newFileNames.get(4));
            else
                this.setPictureUrl4(null);
            if(newFileNames.size()>5)
                this.setPictureUrl5(newFileNames.get(5));
            else
                this.setPictureUrl5(null);
            if(newFileNames.size()>6)
                this.setPictureUrl6(newFileNames.get(6));
            else
                this.setPictureUrl6(null);
            if(newFileNames.size()>7)
                this.setPictureUrl7(newFileNames.get(7));
            else
                this.setPictureUrl7(null);
            if(newFileNames.size()>8)
                this.setPictureUrl8(newFileNames.get(8));
            else
                this.setPictureUrl8(null);
        }
    }

}
