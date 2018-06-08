package service.impl;

import domain.Category;

import java.util.List;

public interface BusinessService {

    /**
     * ��ӷ���
     **/
    void addCategory(Category category);

    /**
     * ���ҷ���
     **/
    Category findCategory(String id);

    /**
     * �õ����з���
     **/
    List<Category> getAllCategory();

}