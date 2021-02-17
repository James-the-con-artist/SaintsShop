package com.james.stgeorges.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Service
public class TestServiceImpl {
    @Autowired
    TestRepository testRepository;

    public TestModel save(TestModel model)throws Exception{
        model=testRepository.save(model);
        return model;
    }

    public TestModel get(UUID id) throws Exception{
        TestModel testModel=testRepository.getOne(id);
        return testModel;
    }

    public List<TestModel> search(String keyword,int pageNo, int pageSize) throws Exception{
        return testRepository.findAll();
    }
}
