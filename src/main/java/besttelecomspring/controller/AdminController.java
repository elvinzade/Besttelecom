package besttelecomspring.controller;

import besttelecomspring.domain.*;
import besttelecomspring.exception.StorageException;
import besttelecomspring.property.StorageProperty;
import besttelecomspring.repository.ContactRepository;
import besttelecomspring.service.ProductService;
import besttelecomspring.web.AdditionForm;
import besttelecomspring.web.AdditionFormValidator;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/admin")
public class AdminController {


    @Autowired
    private ProductService productService;

    @Autowired
    private ContactRepository contactRepository;

    @Autowired
    private AdditionFormValidator additionFormValidator;

    private final Path rootLocation;

    @Autowired
    public AdminController(StorageProperty properties) {
        this.rootLocation = Paths.get(properties.getLocation());
    }

    @InitBinder
    protected void initBinder(WebDataBinder dataBinder){
        Object target = dataBinder.getTarget();
        if(target == null){
            return;
        }
        if(target.getClass() == AdditionForm.class){
            dataBinder.setValidator(additionFormValidator);
        }
    }
    @GetMapping("/")
    public ModelAndView productList(){
        ModelAndView mav = new ModelAndView("admin/index");
        return mav;
    }

    @GetMapping("/getProductList")
    public ModelAndView viewProductList(
            @RequestParam(name = "draw") int draw,
            @RequestParam(name = "start") int start,
            @RequestParam(name = "length") int length,
            @RequestParam(name = "search[value]") String query
    ) {
        DataTable dataTable = new DataTable();
        dataTable.setDraw(draw);
        int totalCount = productService.getProductFilteredListCount("");
        int filteredCount = productService.getProductFilteredListCount(query);
        dataTable.setRecordsTotal(totalCount);
        dataTable.setRecordsFiltered(filteredCount);
        List<Product> filteredProductList = productService.getProductFilteredList(start, length, query);
        String[][] data = new String[filteredProductList.size()][6];
        for(int i = 0; i < filteredProductList.size(); i++){
            Product product = filteredProductList.get(i);
            data[i][0] = String.valueOf(i + 1);
            data[i][1] = product.getName();
            data[i][2] = String.valueOf(product.getPrice());
            data[i][3] = String.valueOf(product.getType());
            data[i][4] = String.valueOf(product.getMark());
            data[i][5] = "<a href='/admin/editProduct?id=" + product.getId() + "'>Update</a>" + "\t<a href='/admin/deleteProduct?id=" + product.getId() + "'>Delete</a>";
        }
        dataTable.setData(data);
        Gson gson = new Gson();
        String dataTableJson = gson.toJson(dataTable);
        ModelAndView mav = new ModelAndView("admin/ajaxreceiver");
        mav.addObject("dataTable", dataTableJson);
        return mav;
    }


    @GetMapping("/addProduct")
    public ModelAndView viewAddProduct() {
         ModelAndView mav = new ModelAndView("admin/addproduct");
         return mav;
    }

    @PostMapping("/addProduct")
    public ModelAndView addProduct (
            @RequestParam("name") String name,
            @RequestParam("price") long price,
            @RequestParam("type") String typeName,
            @RequestParam("image") MultipartFile image,
            @RequestParam("mark") String markName

    ){

        try (
                InputStream inputStream = image.getInputStream()){

            String filename = StringUtils.cleanPath(image.getOriginalFilename());

        if(image.isEmpty()){
            throw new StorageException("Failed to store empty file" + filename);
        }

        if(filename.contains("..")){
            throw new StorageException("Cannot store file with relative path " +
                    "outside current directory" + filename);
        }

        String rootlocation = String.valueOf(this.rootLocation.resolve(filename));

        Files.copy(inputStream, this.rootLocation.resolve(filename), StandardCopyOption.REPLACE_EXISTING);

        Mark mark = new Mark();
        mark.setMarkName(markName);

        Type type = new Type();
        type.setTypeName(typeName);

//        productService.addMark(new Mark(markName, 0));
//        productService.addType(new Type(typeName, 0));

//        type.setTypeId(type.getTypeId());
//        mark.setMarkId(mark.getMarkId());


        productService.addProduct(new Product(0, name, price, type, rootlocation.substring(16), mark));

        } catch (IOException e) {
            e.printStackTrace();
        }


        ModelAndView mav = new ModelAndView("admin/addproduct-success");
        return mav;
    }



    @GetMapping("/editProduct")
    public ModelAndView viewEditProduct(
        @RequestParam("id") long id
    ){
        ModelAndView mav = new ModelAndView("admin/editproduct");
        Optional<Product> optionalProduct = productService.getProductById(id);
        if (optionalProduct.isPresent()){
            mav.addObject("product", optionalProduct.get());
        }else{
            mav.setViewName("redirect:/admin/");
        }
        return mav;
    }

    @PostMapping("/editProduct")
    public String editProduct(
            @RequestParam("id") long product_id,
            @RequestParam("name") String name,
            @RequestParam("price") long price,
            @RequestParam("type") Type type,
            @RequestParam("image") MultipartFile image,
            @RequestParam("mark") Mark mark
    ) {

        try (
                InputStream inputStream = image.getInputStream()){

            String filename = StringUtils.cleanPath(image.getOriginalFilename());

            if(image.isEmpty()){
                throw new StorageException("Failed to store empty file" + filename);
            }

            if(filename.contains("..")){
                throw new StorageException("Cannot store file with relative path " +
                        "outside current directory" + filename);
            }

            String rootlocation = String.valueOf(this.rootLocation.resolve(filename));

            Files.copy(inputStream, this.rootLocation.resolve(filename), StandardCopyOption.REPLACE_EXISTING);

            productService.editProduct(new Product(product_id, name, price, type, rootlocation.substring(16), mark));

        }
        catch (IOException e) {
            e.printStackTrace();
        }


         return "/admin/";
    }

    @GetMapping("/deleteProduct")
    public ModelAndView viewDeleteProduct(
            @RequestParam("id") long id
    ){
        ModelAndView mav = new ModelAndView("admin/deleteproduct");
        Optional<Product> optionalProduct = productService.getProductById(id);
        if(optionalProduct.isPresent()){
             mav.addObject("product", optionalProduct.get());
        }else {
            mav.setViewName("/admin/");
        }
       return mav;
    }

    @PostMapping("/deleteProduct")
    public String deleteProduct(
         @RequestParam("id") long id
    ){
        Product product = new Product();
        product.setId(id);
        productService.deleteProduct(product);
        return "redirect:/admin/";
    }

    @GetMapping("addContact")
    public ModelAndView viewAddContact(){
        ModelAndView mav = new ModelAndView("admin/addcontactinfo");
        return mav;
    }

    @PostMapping("addContact")
    public String addContact(
            @RequestParam(name = "location") String location,
            @RequestParam(name = "phoneNumber1") String phoneNumber1,
            @RequestParam(name = "phoneNumber2") String phoneNumber2,
            @RequestParam(name = "email") String email

    ){

        Contact contact = new Contact();
        contact.setLocation(location);
        contact.setPhoneNumber1(phoneNumber1);
        contact.setPhoneNumber2(phoneNumber2);
        contact.setEmail(email);

        contact = contactRepository.save(contact);


        //contactRepository.save(new Contact(0, location, phoneNumber1, phoneNumber2, email));
        return "redirect:/admin/addContact";
    }




}
