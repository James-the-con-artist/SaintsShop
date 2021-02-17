package com.james.stgeorges.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/test")
public class TestController {
    @Autowired
    TestServiceImpl testService;

    @GetMapping("/view/{id}")
    public String view(@PathVariable UUID id, Model m) throws Exception {
        TestModel testModel = testService.get(id);
        m.addAttribute("testModel", testModel);
        return "test/detail";

    }

    @GetMapping("/list")
    public String search(@RequestParam(required = false) String keyword,
                         @RequestParam(required = false, defaultValue = "0") int pageNo,
                         @RequestParam(required = false, defaultValue = "20") int pageSize, Model m) throws Exception {
        List<TestModel> list = testService.search(keyword, pageNo, pageSize);
        m.addAttribute("list", list);
        return "test/list";
    }

    @GetMapping({"/edit/{id}","/edit"})
    public String edit(@PathVariable(required = false) UUID id, Model m) throws Exception {
        if(id!=null) {
            TestModel testModel = testService.get(id);
            m.addAttribute("testModel", testModel);
        }
        return "test/edit";

    }
    @PostMapping("/save")
    public String save(@ModelAttribute TestModel testModel, Model m) throws Exception {
        testModel = testService.save(testModel);
        m.addAttribute("testModel", testModel);
        m.addAttribute("message", "Save Success!");
        return this.edit(testModel.getId(),m);
    }
}
