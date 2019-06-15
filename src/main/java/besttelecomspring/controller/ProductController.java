package besttelecomspring.controller;

import besttelecomspring.domain.Product;
import besttelecomspring.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductService productService;

//    @GetMapping(value = {"/", "/index"})
//    public ModelAndView viewProductList() {
//        ModelAndView mav = new ModelAndView("index1");
//        mav.addObject("productList", productService.getProductList());
//        return mav;
//    }

//    @PostMapping("/add")
//    public String addProduct (
//            @RequestParam(name = "name") String name,
//            @RequestParam(name = "price") long price,
//            @RequestParam(name = "type") String type,
//            @RequestParam(name = "image") String image,
//            @RequestParam(name = "mark") String mark
//    ){
//
//        productService.addProduct(new Product(12 ,name, price, type, image, mark));
//        return "redirect:/product/";
//
//    }

}