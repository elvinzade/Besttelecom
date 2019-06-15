package besttelecomspring.service;

import besttelecomspring.domain.Mark;
import besttelecomspring.domain.Product;
import besttelecomspring.domain.Type;
import besttelecomspring.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductServiceImpl implements ProductService{

    @Autowired
    private ProductRepository productRepository;


    @Override
    public Product addProduct(Product product) {
        return productRepository.addProduct(product);
    }

    @Override
    public Mark addMark(Mark mark) {
        return productRepository.addMark(mark);
    }

    @Override
    public Type addType(Type type) {
        return productRepository.addType(type);
    }

    @Override
    public List<Product> getProductFilteredList(int start, int length, String query) {
        return productRepository.getProductFilteredList(start, length, query);
    }

    @Override
    public int getProductFilteredListCount(String query) {
        return productRepository.getProductFilteredListCount(query);
    }

    @Override
    public Product deleteProduct(Product product) {
        return productRepository.deleteProduct(product);
    }

    @Override
    public Product editProduct(Product product) {
        return productRepository.editProduct(product);
    }

    @Override
    public List<Product> getProductList() {
        return productRepository.getProductList();
    }

    @Override
    public List<Product> getProductListByType(String type) {
        return productRepository.getProductListByType(type);
    }

    @Override
    public List<Product> getProductListByMark(String mark) {
        return productRepository.getProductListByMark(mark);
    }

    @Override
    public Optional<Product> getProductById(long id) {
        return productRepository.getProductById(id);
    }

    @Override
    public List<Product> getProductMark() {
        return productRepository.getProductMark();
    }

    @Override
    public List<Product> getProductType() {
        return productRepository.getProductType();
    }

    @Override
    public long getMaxPrice() {
        return productRepository.getMaxPrice();
    }

    @Override
    public List<Product> getProductListByPrice(long price1, long price2) {
        return productRepository.getProductListByPrice(price1,price2);
    }

    @Override
    public List<Type> getTypeList() {
        return productRepository.getTypeList();
    }

    @Override
    public List<Mark> getMarkList() {
        return productRepository.getMarkList();
    }
}
