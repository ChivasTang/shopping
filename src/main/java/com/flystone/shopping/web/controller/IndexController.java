package com.flystone.shopping.web.controller;

import com.flystone.shopping.domain.CategoryShopDomain;
import com.flystone.shopping.service.CategoryShopService;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@RestController
public class IndexController {
    @Resource
    private CategoryShopService categoryShopService;

    @GetMapping("/")
    public ModelAndView index(HttpServletRequest req, HttpServletResponse res, Model model){
        ModelAndView mv=new ModelAndView("index");
        mv.addObject("locale","ja");
        return mv;
    }

    @RequestMapping(value = "/getCategoryShopList", method = RequestMethod.GET)
    public @ResponseBody List<CategoryShopDomain> getCategoryShopList(@RequestParam("categoryId") Long categoryId, HttpServletRequest req, HttpServletResponse res, Model model){
        CategoryShopDomain param=new CategoryShopDomain();
        param.setCategoryId(categoryId);
        return categoryShopService.getCategoryShopList(param);
    }

}
