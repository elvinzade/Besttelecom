package besttelecomspring.controller;


import besttelecomspring.domain.Mark;
import besttelecomspring.domain.Product;
import besttelecomspring.domain.Type;
import besttelecomspring.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Optional;



@Controller
@RequestMapping("/home")
public class HomeController {

    @Autowired
    private ProductService productService;


    @GetMapping("/category/productList")
    @ResponseBody
    public List<Product> productList(){
        return productService.getProductList();

    }

    @GetMapping("/category/typeList")
    @ResponseBody
    public List<Type> typeList(){
        return productService.getTypeList();

    }

    @GetMapping("/category/markList")
    @ResponseBody
    public List<Mark> markList(){
        return productService.getMarkList();
    }

    @GetMapping("/category/productListByType")
    @ResponseBody
    public List<Product> productListByType(
            @RequestParam("typeName") String type
    ){

        return productService.getProductListByType(type);
    }

    @GetMapping("/category/productListByMark")
    @ResponseBody
    public List<Product> productListByMark(
            @RequestParam("markName") String mark
    ){

        return productService.getProductListByMark(mark);
    }



    @GetMapping("/category")
    public ModelAndView viewProductList() {
         ModelAndView mav = new ModelAndView("home/category");
//         mav.addObject("maxPrice", productService.getMaxPrice());
//         mav.addObject("productListByMark", productService.getProductMark());
//         mav.addObject("productListByType", productService.getProductType());
         return mav;
    }



    @GetMapping("/category/type")
    public ModelAndView viewProductListByType(
            @RequestParam("type") String type
    ) {
        ModelAndView mav = new ModelAndView("home/category");
        mav.addObject("productList", productService.getProductListByType(type));
        return mav;
    }

    @GetMapping("/category/mark")
    public ModelAndView viewProductListByMark(
            @RequestParam("mark") String mark
    ){
        ModelAndView mav = new ModelAndView("home/category");
        mav.addObject("productList", productService.getProductListByMark(mark));
        return mav;
    }

    @GetMapping("/")
    public ModelAndView viewIndexPage(){
        ModelAndView mav = new ModelAndView(("home/index"));
        return mav;
    }

    @GetMapping("/about")
    public ModelAndView viewAboutPage(){
        ModelAndView mav = new ModelAndView("home/about");
        return mav;
    }

    @GetMapping("/contact")
    public ModelAndView viewContactPage(){
        ModelAndView mav = new ModelAndView(("home/contact"));
        return mav;
    }

    @GetMapping("/login")
    public ModelAndView getLoginPage(){
        ModelAndView mav = new ModelAndView("home/login");
        return mav;
    }

    @GetMapping("/productDetail")
    public ModelAndView getProductDetail(
            @RequestParam("id") long id
    ){
        ModelAndView mav = new ModelAndView("home/productdetail");
        Optional<Product> optionalProduct = productService.getProductById(id);
        mav.addObject("product", optionalProduct.get());
        return mav;
    }




}
