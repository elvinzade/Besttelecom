package besttelecomspring.service;

import besttelecomspring.domain.Mark;
import besttelecomspring.domain.Product;
import besttelecomspring.domain.Type;

import java.util.List;
import java.util.Optional;

public interface ProductService {
    Product addProduct(Product product);

    List<Type> getTypeList();

    List<Mark> getMarkList();

    Mark addMark(Mark mark);

    Type addType(Type type);

    List<Product> getProductFilteredList(int start, int length, String query);

    Optional<Product> getProductById(long id);

    int getProductFilteredListCount(String query);

    Product deleteProduct(Product product);

    Product editProduct(Product product);


    List<Product> getProductList();

    List<Product> getProductListByType(String type);

    List<Product> getProductListByMark(String mark);

    List<Product> getProductMark();

    List<Product> getProductType();

    long getMaxPrice();

    List<Product> getProductListByPrice(long price1, long price2);


}
