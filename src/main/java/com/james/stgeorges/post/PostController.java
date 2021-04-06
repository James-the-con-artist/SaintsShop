package com.james.stgeorges.post;

import com.james.stgeorges.user.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.*;

@Controller
@RequestMapping("/post")
public class PostController {
    @Autowired
    PostServiceImpl postService;
    @Value("${file_upload_path}")
    private String fileUploadPath;

    @GetMapping("/view/{id}")
    public String view(@PathVariable UUID id, Model m, HttpSession httpSession) throws Exception {
        Post post = postService.get(id);
        m.addAttribute("post", post);
        User loginUser = (User) httpSession.getAttribute("loginUser");
        if (loginUser != null && loginUser.getUserId().equals(post.getUser().getUserId())) {
            m.addAttribute("isMyPost", true);
        }
        return "post/detail";

    }

    @GetMapping(value = {"/list", "/list/{category}"})
    public String search(@PathVariable(name = "category",required = false) Post.ECategories category,
                         @RequestParam(required = false) String keyword,
                         @PageableDefault(size = 8, direction = Sort.Direction.DESC, sort = {"createdDate"}) Pageable page
                         ,Model m) throws Exception {
        Page<Post> pageList = postService.search(category,keyword,page);
        m.addAttribute("category", category);
        m.addAttribute("keyword", keyword);
        m.addAttribute("pageList", pageList);
        return "post/list";
    }

    @GetMapping({"/edit/{id}", "/edit"})
    public String edit(@PathVariable(required = false) UUID id, Model m, HttpSession httpSession) throws Exception {
        User loginUser = (User) httpSession.getAttribute("loginUser");
        if (loginUser == null) {
            return "redirect:/login";
        }
        if (id != null) {
            Post post = postService.get(id);
            m.addAttribute("post", post);
        }
        return "post/edit";

    }

    @PostMapping("/save")
    public String save(@ModelAttribute Post post, @RequestParam("files") MultipartFile[] files, Model m, HttpSession httpSession) throws Exception {
        User loginUser = (User) httpSession.getAttribute("loginUser");
        List<String> newFileNames = new ArrayList<>();
        if (loginUser != null) {
            if (files != null) {
                for (MultipartFile file : files) {
                    if (!file.isEmpty()) {
                        File targetFile = File.createTempFile(System.currentTimeMillis() + "_",
                                "." + this.getExtensionByStringHandling(file.getOriginalFilename()), new File(fileUploadPath));
                        newFileNames.add("/upload/" + targetFile.getName());
                        file.transferTo(targetFile);
                    }
                }
            }
            if (post.getId() == null) {
                post.setUser(loginUser);
                post.setCreatedDate(new Date());
                post.setPictureUrls(newFileNames);
                post = postService.save(post);
            } else {
                Post postDB = postService.get(post.getId());
                if (postDB != null) {
                    post.setCreatedDate(postDB.getCreatedDate());
                    post.setUser(postDB.getUser());
                    newFileNames.addAll(post.getPictureUrls());
                    post.setPictureUrls(newFileNames);
                    post = postService.save(post);
                }
            }
            m.addAttribute("postModel", post);
            m.addAttribute("message", "Save Success!");
            return this.edit(post.getId(), m, httpSession);
        } else {
            return "redirect:/login";
        }
    }

    @GetMapping("/myposts")
    public String viewMyPosts(@PageableDefault(size = 20, direction = Sort.Direction.DESC, sort={"createdDate"}) Pageable page,
                              Model m, HttpSession httpSession) throws  Exception{
        User loginUser = (User) httpSession.getAttribute("loginUser");
        if(loginUser!=null){
            Page<Post> pageList = postService.getByUser(loginUser, page);
            m.addAttribute("pageList", pageList);
            m.addAttribute("pageTitle", "My Posts");
            return "post/list";
        }else{
            return "redirect:/login";
        }
    }

    public String getExtensionByStringHandling(String filename) {
        if (filename != null && filename.length() > 3)
            return filename.substring(filename.lastIndexOf(".") + 1);
        else
            return "";
    }
}
