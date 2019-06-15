package besttelecomspring.domain;

import java.io.Serializable;

public class Product implements Serializable {
    public Product() {

    }

    public Product(long id, String name, long price, Type type, String image, Mark mark) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.type = type;
        this.image = image;
        this.mark = mark;
    }

    public Product(String name, long price, Type type, String image, Mark mark) {
        this(0L, name, price, type, image, mark);
    }

    private long id;
    private String name;
    private long price;
    private Type type;
    private String image;
    private Mark mark;
    private long count;

    public long getCount() {
        return count;
    }

    public void setCount(long count) {
        this.count = count;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Mark getMark() {
        return mark;
    }

    public void setMark(Mark mark) {
        this.mark = mark;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", type='" + type + '\'' +
                ", image='" + image + '\'' +
                ", mark='" + mark + '\'' +
                ", count=" + count +
                '}';
    }
}
