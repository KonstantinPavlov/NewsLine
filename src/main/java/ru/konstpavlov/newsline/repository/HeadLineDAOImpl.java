package ru.konstpavlov.newsline.repository;


import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ru.konstpavlov.newsline.entity.Category;
import ru.konstpavlov.newsline.entity.HeadLine;

import java.util.List;

@Repository
@Transactional
public class HeadLineDAOImpl implements HeadLineDAO {

    private SessionFactory sessionFactory;

    @Autowired
    public HeadLineDAOImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }


    @Override
    public void addHeadLine(HeadLine headLine) {
        sessionFactory.getCurrentSession().save(headLine);
    }

    @Override
    public HeadLine getHeadLine(long id) {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(HeadLine.class);
        criteria.add(Restrictions.eq("id",id));
        return (HeadLine) criteria.uniqueResult();
    }

    @Override
    public void updateHeadLine(HeadLine headLine) {
        sessionFactory.getCurrentSession().update(headLine);
    }

    @Override
    public void deleteHeadLine(HeadLine headLine) {
        sessionFactory.getCurrentSession().delete(headLine);
    }

    @Override
    public List<HeadLine> getAllHeadLine() {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(HeadLine.class);
        criteria.addOrder(Order.desc("date"));
        return (List<HeadLine>) criteria.list();
    }

    @Override
    public List<HeadLine> getAllCategoryHeadLine(Category category) {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(HeadLine.class);
        criteria.add(Restrictions.eq("category",category));
        criteria.addOrder(Order.desc("date"));
        return (List<HeadLine>) criteria.list();
    }
}
