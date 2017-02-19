package ru.konstpavlov.newsline.entity;


import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.transaction.annotation.Transactional;
import ru.konstpavlov.newsline.config.HibernateConfig;
import ru.konstpavlov.newsline.config.application.WebConfig;
import ru.konstpavlov.newsline.repository.HeadLineDAO;

import java.util.Date;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(classes = { WebConfig.class, HibernateConfig.class})
@Rollback
public class HeadLineDAOTest {

    @Autowired
    HeadLineDAO headLineDAO;

    @Test
    @Transactional
    @Rollback( value = true)
    public void addHeadLine(){
        HeadLine headLine = new HeadLine();
        int count = headLineDAO.getAllHeadLine().size();
        headLine.setDate(new Date());
        headLineDAO.addHeadLine(headLine);
        Assert.assertNotEquals(count,headLineDAO.getAllHeadLine().size());
        Assert.assertEquals(count+1,headLineDAO.getAllHeadLine().size());

    }

    @Test
    @Transactional
    @Rollback( value = true)
    public void addHeadLineToCategory(){
        HeadLine headLine = new HeadLine();
        headLine.setCategory(Category.AUTOMOBILES);
        int count = headLineDAO.getAllCategoryHeadLine(Category.AUTOMOBILES).size();
        headLine.setDate(new Date());
        headLineDAO.addHeadLine(headLine);
        Assert.assertNotEquals(count,headLineDAO.getAllCategoryHeadLine(Category.AUTOMOBILES).size());
        Assert.assertEquals(count+1,headLineDAO.getAllCategoryHeadLine(Category.AUTOMOBILES).size());

    }

    @Test
    @Transactional
    @Rollback(value = true)
    public void deleteHeadLine(){
        HeadLine headLine = new HeadLine();
        int count = headLineDAO.getAllHeadLine().size();
        headLineDAO.addHeadLine(headLine);
        Assert.assertNotEquals(count,headLineDAO.getAllHeadLine().size());
        Assert.assertEquals(count+1,headLineDAO.getAllHeadLine().size());
        headLineDAO.deleteHeadLine(headLine);
        Assert.assertEquals(count,headLineDAO.getAllHeadLine().size());
    }

    @Test
    @Transactional
    @Rollback(value = true)
    public void updateHeadLine(){
        HeadLine headLine = new HeadLine();
        headLine.setTitle("Test title");
        headLine.setDate(new Date());
        headLineDAO.addHeadLine(headLine);
        List<HeadLine> headLineList = headLineDAO.getAllHeadLine();
        // headlines sorted by date
        HeadLine headLineFromDB = headLineList.get(0);
        Assert.assertNotNull(headLineFromDB);
        headLine.setId(headLineFromDB.getId());
        Assert.assertEquals(headLine.getTitle(),headLineFromDB.getTitle());
        headLineFromDB.setTitle("Test title 2");
        headLineDAO.updateHeadLine(headLineFromDB);

        List<HeadLine> headLineList2 = headLineDAO.getAllHeadLine();
        HeadLine headLineFromDB2 = headLineList2.get(0);
        Assert.assertEquals(headLineFromDB2.getTitle(),headLineFromDB.getTitle());

    }

}
