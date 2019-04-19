package com.flystone.shopping.web.controller;

import com.flystone.shopping.domain.CategoryShopDomain;
import com.flystone.shopping.domain.GoodDomain;
import com.flystone.shopping.domain.ShopGoodDomain;
import com.flystone.shopping.service.CategoryShopService;
import com.flystone.shopping.service.ShopGoodService;
import org.springframework.http.MediaType;
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

    @Resource
    private ShopGoodService shopGoodService;

    @GetMapping("/")
    public ModelAndView index(HttpServletRequest req, HttpServletResponse res, Model model){
        ModelAndView mv=new ModelAndView("index");
        mv.addObject("locale","ja");
        return mv;
    }

    @RequestMapping(value = "/getCategoryShopList", method = RequestMethod.GET)
    @ResponseBody
    public List<CategoryShopDomain> getCategoryShopList(@RequestParam("categoryId") Long categoryId, HttpServletRequest req, HttpServletResponse res, Model model){
        CategoryShopDomain param=new CategoryShopDomain();
        param.setCategoryId(categoryId);
        return categoryShopService.getCategoryShopList(param);
    }

    @RequestMapping(value = "/loadGoodListPage", method = RequestMethod.GET)
    public ModelAndView loadGoodListPage(@RequestParam("shopId") Long shopId, HttpServletRequest req, HttpServletResponse res, Model model ){
        ModelAndView mv=new ModelAndView("good/goodList");
        mv.addObject("selectedShop", shopId);
        return mv;
    }

    @RequestMapping(value = "getShopGoodList", method = RequestMethod.GET)
    @ResponseBody
    public ShopGoodDomain getShopGoodList(@RequestParam("shopId") Long shopId,HttpServletRequest req, HttpServletResponse res, Model model ){
        ShopGoodDomain param=new ShopGoodDomain();
        param.setShopId(shopId);
        ShopGoodDomain shopGood=shopGoodService.getOneShop(param);
        shopGood.setGoodList(shopGoodService.getGoodList(shopGood));
        return shopGood;
    }

}
