package besttelecomspring.repository;

import besttelecomspring.domain.Mark;
import besttelecomspring.domain.Product;
import besttelecomspring.domain.Type;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.Optional;

@Repository
public class ProductRepositoryImpl implements ProductRepository {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    private static final Logger log = LoggerFactory.getLogger(ProductRepositoryImpl.class);


    @Override
    public Product addProduct(Product product) {

        Type type = new Type();
        if(getTypeId(product.getType().getTypeName()) == 0){
            type.setTypeId(addType(product.getType()).getTypeId());
        }
        else{
            type.setTypeId(getTypeId(product.getType().getTypeName()));
        }

        Mark mark = new Mark();
        if(getMarkId(product.getMark().getMarkName()) == 0){
            mark.setMarkId(addMark(product.getMark()).getMarkId());
        }else{
            mark.setMarkId(getMarkId(product.getMark().getMarkName()));
        }

        KeyHolder keyHolder = new GeneratedKeyHolder();

        int count = jdbcTemplate.update(connection -> {
                    PreparedStatement ps = connection.prepareStatement(SqlQuery.ADD_PRODUCT, Statement.RETURN_GENERATED_KEYS);
                    ps.setString(1, product.getName());
                    ps.setLong(2, product.getPrice());
                    ps.setLong(3, type.getTypeId());
                    ps.setString(4, product.getImage());
                    ps.setLong(5, mark.getMarkId());
                    return ps;
                },
                keyHolder);

        product.setId(keyHolder.getKey().longValue());

        System.out.println("count = " + count);
        return product;
    }

    @Override
    public Mark addMark(Mark mark) {
            KeyHolder keyHolder = new GeneratedKeyHolder();

            int count = jdbcTemplate.update(connection -> {
                        PreparedStatement ps = connection.prepareStatement(SqlQuery.ADD_MARK, Statement.RETURN_GENERATED_KEYS);
                        ps.setString(1, mark.getMarkName());
                        return ps;
                    },
                    keyHolder);

            mark.setMarkId(keyHolder.getKey().longValue());


        return mark;

    }

    @Override
    public Type addType(Type type) {
        KeyHolder keyHolder = new GeneratedKeyHolder();

        int count = jdbcTemplate.update(connection -> {
            PreparedStatement ps = connection.prepareStatement(SqlQuery.ADD_TYPE, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, type.getTypeName());
            return ps;
        },
                keyHolder);

        type.setTypeId(keyHolder.getKey().longValue());


        return type;
    }

    @Override
    public long getTypeId(String typeName) {
        if(jdbcTemplate.query(SqlQuery.GET_TYPE_ID,(resultSet, i)->
                resultSet.getLong("id"), typeName).isEmpty())
        {
            return 0;
        }
        else{
            return jdbcTemplate.query(SqlQuery.GET_TYPE_ID,(resultSet, i)->

                    resultSet.getLong("id"), typeName).get(0);
        }
    }

    @Override
    public long getMarkId(String markName) {
        if(jdbcTemplate.query(SqlQuery.GET_MARK_ID,(resultSet, i)->
                resultSet.getLong("id"), markName).isEmpty())
        {
            return 0;
        }
        else{
            return jdbcTemplate.query(SqlQuery.GET_MARK_ID,(resultSet, i)->

                    resultSet.getLong("id"), markName).get(0);
        }
    }

    @Override
    public List<Product> getProductFilteredList(int start, int length, String query) {

        List<Product> productList = jdbcTemplate.query(SqlQuery.GET_PRODUCT_NAME, new Object[]{"%" + query + "%", length, start},
                (resultSet, i )-> {
                    Product product = new Product();
                    product.setId(resultSet.getLong("id"));
                    product.setName(resultSet.getString("name"));
                    product.setPrice(resultSet.getLong("price"));
                    Mark mark = new Mark();
                    mark.setMarkName(resultSet.getString("mark_name"));
                    product.setMark(mark);
                    Type type = new Type();
                    type.setTypeName(resultSet.getString("type_name"));
                    product.setType(type);

                    return product;
                });
        return productList;
    }

    @Override
    public int getProductFilteredListCount(String query) {
        return jdbcTemplate.query(SqlQuery.GET_PRODUCT_LIST_FILTERED_COUNT,
                (resultSet, i)->
            resultSet.getInt(1),
                "%" + query +"%").get(0);
    }

    @Override
    public Product deleteProduct(Product product) {
        Object data[] = {product.getId()};
        int count = jdbcTemplate.update(SqlQuery.DELETE_PRODUCT, data);
        System.out.println("Deleted count " + count);
        return product;
    }

    @Override
    public Product editProduct(Product product) {
      Object data[] = {product.getName(), product.getPrice(), product.getType().getTypeId(), product.getImage(), product.getMark().getMarkId(), product.getId()};
      int count = jdbcTemplate.update(SqlQuery.EDİT_PRODUCT, data);
      System.out.println("Update count = " + count);
      return product;
    }

    @Override
    public Mark editMark(Mark mark) {
        Object data[] = {mark.getMarkName(), mark.getMarkId()};
        int count = jdbcTemplate.update(SqlQuery.EDIT_MARK, data);
        return mark;
    }

    @Override
    public Type editType(Type type) {
        Object data[] = {type.getTypeName(), type.getTypeId()};
        int count = jdbcTemplate.update(SqlQuery.EDIT_MARK, data);
        return type;
    }

    @Override
    public int getProductCount() {
        return 0;
    }


    @Override
    public List<Product> getProductType() {

        List<Product> productList = jdbcTemplate.query(SqlQuery.GET_PRODUCT_TYPE,
                (resultSet, i) ->{
              Product product = new Product();
                    Type type = new Type();
                    type.setTypeName(resultSet.getString("type_name"));
                    product.setType(type);
                    product.setCount(resultSet.getLong("type_count"));
              return product;
                });
        return productList;
    }

    @Override
    public List<Product> getProductMark() {

    List<Product> productList = jdbcTemplate.query(SqlQuery.GET_PRODUCT_MARK,
            (resultSet, i) -> {
                Product product = new Product();
                Mark mark = new Mark();
                mark.setMarkName(resultSet.getString("mark_name"));
                product.setMark(mark);
                product.setCount(resultSet.getLong("mark_count"));
                return product;
            });
    return productList;
    }

    @Override
    public List<Product> getProductList() {
        List<Product> productList = jdbcTemplate.query(SqlQuery.GET_PRODUCT_LIST, new ProductMapper());
        return productList;
    }

    private class ProductMapper implements RowMapper<Product> {

        @Override
        public Product mapRow(ResultSet resultSet, int i) throws SQLException {
            Product product = new Product();
            product.setId(resultSet.getLong("id"));
            product.setName(resultSet.getString("name"));
            product.setPrice(resultSet.getLong("price"));
            Mark mark = new Mark();
            mark.setMarkName(resultSet.getString("mark_name"));
            product.setMark(mark);
            product.setImage(resultSet.getString("image"));
            Type type = new Type();
            type.setTypeName(resultSet.getString("type_name"));
            product.setType(type);

            return product;
        }
    }

    @Override
    public List<Product> getProductListByType(String type) {
        List<Product> productList = jdbcTemplate.query(SqlQuery.GET_PRODUCT_BY_TYPE, new Object[]{type}, new ProductMapper());
        return productList;

    }

    @Override
    public List<Product> getProductListByMark(String mark) {
        List<Product> productList = jdbcTemplate.query(SqlQuery.GET_PRODUCT_BY_MARK, new Object[]{mark}, new ProductMapper());
        return productList;
    }

    @Override
    public Optional<Product> getProductById(long id) {
        Optional<Product> optionalProduct = Optional.empty();
        List<Product> productList = jdbcTemplate.query(SqlQuery.GET_PRODUCT_BY_ID, new Object[]{id} ,new ProductMapper());
        if(!productList.isEmpty()){
            optionalProduct = Optional.of(productList.get(0));
        }
        return optionalProduct;
    }

    @Override
    public long getMaxPrice() {
        return jdbcTemplate.query(SqlQuery.MAX_PRICE, (resultSet, i)->
                resultSet.getLong("max_price")).get(0);
    }

    @Override
    public List<Product> getProductListByPrice(long price1, long price2) {
        return jdbcTemplate.query(SqlQuery.PRICE_FILTER, new Object[]{price1, price2}, new ProductMapper());
    }


    public List<Type> getTypeList() {

        return jdbcTemplate.query(SqlQuery.GET_PRODUCT_TYPE,
                ((resultSet, i) -> {
                    Type type = new Type();
                    type.setTypeId(resultSet.getLong("type_id"));
                    type.setTypeName(resultSet.getString("type_name"));
                    type.setCount(resultSet.getLong("type_count"));
                    return type;
                }));
    }

    public List<Mark> getMarkList(){


        return jdbcTemplate.query(SqlQuery.GET_PRODUCT_MARK,
                ((resultSet, i) -> {
                    Mark mark = new Mark();
                    mark.setMarkId(resultSet.getLong("mark_id"));
                    mark.setMarkName(resultSet.getString("mark_name"));
                    mark.setCount(resultSet.getLong("mark_count"));
                    return mark;
                }));
    }
}
