package com.james.stgeorges.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import javax.xml.bind.DatatypeConverter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@Controller
public class UserController {
    @Autowired
    UserServiceImpl userService;

    @GetMapping("/login")
    public String viewLogin(Model m) {
        return "user/login";
    }

    @PostMapping("/login")
    public String login(@RequestParam String email, @RequestParam String password, Model m, HttpSession httpSession) throws NoSuchAlgorithmException {
        User existUser = userService.getByEmail(email.trim()+"@stgeorges.bc.ca");
        if (existUser == null) {
            m.addAttribute("message", "Email not found");
            return viewLogin(m);
        }
        if (password != null && password.trim().length() >= 4){
            String hash=md5(password);
            if(existUser.getPassword().equalsIgnoreCase(hash)){
                httpSession.setAttribute("loginUser",existUser);
                return "redirect:/";
            }else{
                m.addAttribute("message", "Invalid password");
                return viewLogin(m);
            }
        }else{
            m.addAttribute("message", "Invalid password");
            return viewLogin(m);
        }
    }

    @GetMapping("/register")
    public String viewRegister(Model m) {
        return "user/register";
    }

    @PostMapping("/register")
    public String register(@RequestParam String email, @RequestParam String password, @RequestParam String repassword, Model m, HttpSession httpSession) throws NoSuchAlgorithmException {
        User existUser = userService.getByEmail(email.trim());
        if (existUser != null) {
            m.addAttribute("message", "Email is exist");
            return viewRegister(m);
        }
        if (password != null && password.trim().length() >=4 && repassword != null && repassword.trim().length() >= 4
                && password.equals(repassword)) {
            User user=new User();
            user.setEmail(email.trim()+"@stgeorges.bc.ca");
            user.setPassword(md5(password));
            user= userService.save(user);
            httpSession.setAttribute("loginUser",user);
            return "redirect:/";
        } else {
            m.addAttribute("message", "Invalid password");
            return viewRegister(m);
        }

    }

    private String md5(String password) throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("MD5");
        md.update(password.getBytes());
        byte[] digest = md.digest();
        String myHash = DatatypeConverter.printHexBinary(digest).toUpperCase();
        return myHash;
    }
}
