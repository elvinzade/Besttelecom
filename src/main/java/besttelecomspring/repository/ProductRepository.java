package besttelecomspring.repository;

import besttelecomspring.domain.Mark;
import besttelecomspring.domain.Product;
import besttelecomspring.domain.Type;

import java.util.List;
import java.util.Optional;

public interface ProductRepository {
    Product addProduct(Product product);

    List<Type> getTypeList();

    List<Mark> getMarkList();

    Mark addMark(Mark mark);

    Type addType(Type type);

    long getTypeId(String typeName);

    long getMarkId(String markName);

    List<Product> getProductFilteredList(int start, int length, String query);

    Optional<Product> getProductById(long id);

    int getProductFilteredListCount(String query);

    Product deleteProduct(Product product);

    Product editProduct(Product product);

    Mark editMark(Mark mark);

    Type editType(Type type);

    int getProductCount();

    List<Product> getProductType();

    List<Product> getProductMark();

    List<Product> getProductList();

    List<Product> getProductListByType(String type);

    List<Product> getProductListByMark(String mark);

    long getMaxPrice();

    List<Product> getProductListByPrice(long price1, long price2);

}
