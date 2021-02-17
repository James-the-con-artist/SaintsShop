package com.james.stgeorges.post;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/post")
public class PostController {
    @Autowired
    PostServiceImpl postService;

    @GetMapping("/view/{id}")
    public String view(@PathVariable UUID id, Model m) throws Exception {
        PostModel postModel = postService.get(id);
        m.addAttribute("postModel", postModel);
        return "post/detail";

    }

    @GetMapping("/list")
    public String search(@RequestParam(required = false) String keyword,
                         @RequestParam(required = false, defaultValue = "0") int pageNo,
                         @RequestParam(required = false, defaultValue = "20") int pageSize, Model m) throws Exception {
        List<PostModel> list = postService.search(keyword, pageNo, pageSize);
        m.addAttribute("list", list);
        return "post/list";
    }

    @GetMapping({"/edit/{id}","/edit"})
    public String edit(@PathVariable(required = false) UUID id, Model m) throws Exception {
        if(id!=null) {
            PostModel postModel = postService.get(id);
            m.addAttribute("postModel", postModel);
        }
        return "post/edit";

    }
    @PostMapping("/save")
    public String save(@ModelAttribute PostModel postModel, Model m) throws Exception {
        postModel = postService.save(postModel);
        m.addAttribute("postModel", postModel);
        m.addAttribute("message", "Save Success!");
        return this.edit(postModel.getId(),m);
    }
}