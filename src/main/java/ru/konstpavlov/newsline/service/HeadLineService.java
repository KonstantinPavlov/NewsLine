package ru.konstpavlov.newsline.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.konstpavlov.newsline.entity.Category;
import ru.konstpavlov.newsline.entity.HeadLine;
import ru.konstpavlov.newsline.repository.HeadLineDAO;

import java.util.List;

@Service
@Transactional
public class HeadLineService {

    private HeadLineDAO headLineDAO;

    @Autowired
    public HeadLineService(HeadLineDAO headLineDAO) {
        this.headLineDAO = headLineDAO;
    }

    public void addHeadLine(HeadLine headLine){
        headLineDAO.addHeadLine(headLine);
    }

    public void updateHeadLine(HeadLine headLine){
        headLineDAO.updateHeadLine(headLine);
    }

    public void deleteHeadLine(HeadLine headLine){
        headLineDAO.deleteHeadLine(headLine);
    }

    public HeadLine getHeadLinebyId (long id){
        return headLineDAO.getHeadLine(id);
    }
    public List<HeadLine> getAllHeadLine(){
        return headLineDAO.getAllHeadLine();
    }
    public List<HeadLine> getAllCategoryHeadLine(Category category){
        return headLineDAO.getAllCategoryHeadLine(category);
    }
}
