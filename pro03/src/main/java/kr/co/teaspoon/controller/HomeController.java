package kr.co.teaspoon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

@Controller
public class HomeController {

    @RequestMapping(value = "/")
//    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Locale locale, Model model){
        Date date = new Date();
        DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
        String today = dateFormat.format(date);
        model.addAttribute("today",today);
        model.addAttribute("myName","백준철");

        return "/index";
    }
}
