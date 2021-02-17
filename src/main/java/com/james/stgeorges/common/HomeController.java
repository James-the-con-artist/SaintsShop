package com.james.stgeorges.common;

import com.james.stgeorges.post.PostModel;
import com.james.stgeorges.post.PostServiceImpl;
import com.james.stgeorges.test.TestModel;
import com.james.stgeorges.test.TestRepository;
import com.james.stgeorges.test.TestServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/")
public class HomeController {
    @Autowired
    PostServiceImpl postService;

    @GetMapping("/")
    public String view(Model m) throws Exception {
        List<PostModel> list=postService.search("",0,20);
        m.addAttribute("list",list);
        return "home";

    }

}
