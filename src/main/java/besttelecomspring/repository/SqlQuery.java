package besttelecomspring.repository;

public class SqlQuery {

    public static  final  String GET_PRODUCT_LIST = "SELECT p.id, p.name, p.price, t.name as type_name, p.image, m.name as mark_name " +
            "from product p " +
            "join type t " +
            "on p.type_id = t.id " +
            "join mark m " +
            "on p.mark_id = m.id";

    public static final String GET_MARK_BY_NAME = "SELECT id from mark where name = ?";

    public static final String GET_PRODUCT_BY_ID = "SELECT p.id, p.name, p.price, t.name as type_name, p.image, m.name as mark_name " +
            "from product p " +
            "join type t " +
            "on p.type_id = t.id " +
            "join mark m " +
            "on p.mark_id = m.id " +
            "where p.id = ?";

    public static final String GET_PRODUCT_NAME = "SELECT p.id, p.name, p.price, t.name as type_name, p.image, m.name as mark_name " +
            "from product p " +
            "join type t " +
            "on p.type_id = t.id " +
            "join mark m " +
            "on p.mark_id = m.id " +
            "where price > 0 and lower(p.name) like lower(?) " +
            "limit ? offset ?";

    public  static final String GET_PRODUCT_LIST_FILTERED_COUNT = "SELECT count(id) as product_count " +
            " from product " +
            " where price > 0 and lower(name) like lower(?)";

    public static  final String ADD_PRODUCT = "INSERT INTO public.product(" +
            "id, name, price, type_id, image, mark_id) " +
            " VALUES (nextval('product_seq'), ?, ?, ?, ?, ?) returning id";

    public static final String ADD_TYPE = "insert into type(" +
            "id, name) " +
            "values (nextval('type_seq'), ?) returning id";

    public static final String ADD_MARK = "insert into mark(" +
            "id, name) " +
            "values (nextval('mark_seq'), ?) returning id";

    public static final String AUTHENTICATE_ADMIN = "SELECT id, email, password " +
            "from admin where email = ? and password = ?";

    public static final String DELETE_PRODUCT = "DELETE FROM public.product " +
            " WHERE id = ?";

    public static final String EDİT_PRODUCT = "update product set name = ?, price = ?, type_id = ?, image = ?," +
            " mark_id = ? where id = ?";

    public static final String EDIT_MARK = "update mark set name = ? where id = ?";

    public static final String EDIT_TYPE = "update type set name = ? where id = ?";


    public static final String GET_PRODUCT_BY_TYPE = "SELECT p.id, p.name, p.price, t.name as type_name, p.image, m.name as mark_name " +
            "from product p " +
            "join type t " +
            "on p.type_id = t.id " +
            "join mark m " +
            "on p.mark_id = m.id " +
            "where t.name = ?";

    public static final String GET_PRODUCT_BY_MARK = "SELECT p.id, p.name, p.price, t.name as type_name, p.image, m.name as mark_name " +
            "from product p " +
            "join type t " +
            "on p.type_id = t.id " +
            "join mark m " +
            "on p.mark_id = m.id " +
            "where m.name = ?";

    public static final String GET_PRODUCT_TYPE = "select count(t.name) as type_count, t.name as type_name, t.id as type_id " +
            "from product p " +
            "join type t on p.type_id = t.id " +
            "group by t.name, t.id";

    public static final String GET_PRODUCT_MARK = "select count(m.name) as mark_count, m.name as mark_name, m.id as mark_id " +
    "from product p " +
    "join mark m on p.mark_id = m.id " +
    "group by m.name, m.id";

    public static final String MAX_PRICE = "SELECT max(price) as max_price " +
            "FROM public.product";

    public static final String PRICE_FILTER = "SELECT p.id, p.name, p.price, t.name as type_name, p.image, m.name as mark_name " +
            "from product p " +
            "join type t " +
            "on p.type_id = t.id " +
            "join mark m " +
            "on p.mark_id = m.id " +
            "where price between ? and ?";

    public static  final String GET_TYPE_ID = "SELECT id FROM type where name = ?";

    public static final String  GET_MARK_ID = "select id from mark where name = ?";

}
