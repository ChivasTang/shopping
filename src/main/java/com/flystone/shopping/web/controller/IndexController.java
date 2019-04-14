package com.flystone.shopping.web.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RestController
@RequestMapping("/")
public class IndexController {

    @GetMapping
    public ModelAndView index(HttpServletRequest req, HttpServletResponse res, Model model){
        ModelAndView mv=new ModelAndView("index");
        mv.addObject("locale","ja");
        return mv;
    }

}
