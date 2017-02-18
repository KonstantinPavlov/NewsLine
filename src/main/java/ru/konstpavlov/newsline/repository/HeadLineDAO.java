package ru.konstpavlov.newsline.repository;

import ru.konstpavlov.newsline.entity.Category;
import ru.konstpavlov.newsline.entity.HeadLine;

import java.util.List;

public interface HeadLineDAO {

    void addHeadLine (HeadLine headLine);

    HeadLine getHeadLine(long id);

    void updateHeadLine(HeadLine headLine);

    void deleteHeadLine(HeadLine headLine);

    List<HeadLine> getAllHeadLine();

    List<HeadLine> getAllCategoryHeadLine(Category category);
}
