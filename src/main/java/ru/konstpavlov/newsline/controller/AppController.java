package ru.konstpavlov.newsline.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ru.konstpavlov.newsline.entity.Category;
import ru.konstpavlov.newsline.entity.HeadLine;
import ru.konstpavlov.newsline.service.HeadLineService;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Controller
public class AppController {

    HeadLineService headLineService;
    List<Category> categoryList = new ArrayList<>();


    @Autowired
    public AppController(HeadLineService headLineService) {
        this.headLineService = headLineService;
        categoryList.add(Category.MAIN_NEWS);
        categoryList.add(Category.POLITICS);
        categoryList.add(Category.SOCIETY);
        categoryList.add(Category.ECONOMY);
        categoryList.add(Category.SPORT);
        categoryList.add(Category.INCIDENTS);
        categoryList.add(Category.CULTURE);
        categoryList.add(Category.SCIENCE);
        categoryList.add(Category.AUTOMOBILES);
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView index(Model model, @RequestParam( value = "category", required = false) String category,@RequestParam( value = "search", required = false) String searchString ){
        ModelAndView modelAndView = new ModelAndView("index");
        modelAndView.addObject("categories",categoryList);
        if (category !=null){
            modelAndView.addObject("headLines",headLineService.getAllCategoryHeadLine(Category.valueOf(category)));
            modelAndView.addObject("currCategory",Category.valueOf(category).toString());
        }
        else {
            modelAndView.addObject("headLines", headLineService.getAllHeadLine());

        }
        return modelAndView;
    }

    @RequestMapping("/add")
    public ModelAndView addHeadLine(@ModelAttribute("headline") HeadLine headline){
        ModelAndView modelAndView = new ModelAndView("addHeadLine");
        modelAndView.addObject("categories",categoryList);
        modelAndView.addObject("headline",new HeadLine());
        return modelAndView;
    }


    @RequestMapping(value = "/addNews", method = RequestMethod.POST)
    public ModelAndView addNewHeadLine(@ModelAttribute("headline") HeadLine headline){
        headline.setDate(new Date());
        headLineService.addHeadLine(headline);
        String message = "You successfully added a: "+ headline.getTitle();
        return new ModelAndView("redirect:/","addMessage", message) ;
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView deleteHeadLine(@PathVariable("id") Long id){
        HeadLine headLine = headLineService.getHeadLinebyId(id);
        headLineService.deleteHeadLine(headLine);
        String message = "You successfully delete a: "+ headLine.getTitle();
        return new ModelAndView("redirect:/","addMessage", message) ;
    }

    @RequestMapping(value = "/news/{id}", method = RequestMethod.GET)
    public ModelAndView showHeadLine(@PathVariable("id") Long id){
        HeadLine headLine = headLineService.getHeadLinebyId(id);
        ModelAndView modelAndView = new ModelAndView("headLine");
        modelAndView.addObject("categories",categoryList);
        modelAndView.addObject("news",headLine);
        return modelAndView;
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView editHeadLine(@PathVariable("id") Long id){
        HeadLine headLine = headLineService.getHeadLinebyId(id);
        ModelAndView modelAndView = new ModelAndView("updateHeadLine");
        modelAndView.addObject("categories",categoryList);
        modelAndView.addObject("news",headLine);
        return modelAndView;
    }
    @RequestMapping(value = "/updateNews/{id}", method = RequestMethod.POST)
    public ModelAndView updateHeadLine(@PathVariable("id") Long id, @ModelAttribute("headline") HeadLine headLine){
        headLine.setId(id);
        headLine.setDate(new Date());
        headLineService.updateHeadLine(headLine);
        String message = "You successfully update a: "+ headLine.getTitle();
        return new ModelAndView("redirect:/","addMessage", message) ;
    }
}
