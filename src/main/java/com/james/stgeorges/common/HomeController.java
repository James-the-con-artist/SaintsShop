package com.james.stgeorges.common;

import com.james.stgeorges.post.Post;
import com.james.stgeorges.post.PostServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/")
public class HomeController {
    @Autowired
    PostServiceImpl postService;

    @GetMapping("/")
    public String view(Model m) throws Exception {
        return "redirect:/post/list";

    }

}
