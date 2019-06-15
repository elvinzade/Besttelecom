package besttelecomspring.web;

import com.fasterxml.jackson.core.SerializableString;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import java.io.Serializable;

public class AdditionForm implements Serializable {
    private static final long serialVersionUID = -3628893594354882313L;

    private String productName;
    private long productPrice;
    private String productType;
    private String productImage;
    private String productMark;

    @Override
    public String toString() {
        return "AdditionForm{" +
                "productName='" + productName + '\'' +
                ", productPrice=" + productPrice +
                ", productType='" + productType + '\'' +
                ", productImage='" + productImage + '\'' +
                ", productMark='" + productMark + '\'' +
                '}';
    }

    public AdditionForm() {

    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public long getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(long productPrice) {
        this.productPrice = productPrice;
    }

    public String getProductType() {
        return productType;
    }

    public void setProductType(String productType) {
        this.productType = productType;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public String getProductMark() {
        return productMark;
    }

    public void setProductMark(String productMark) {
        this.productMark = productMark;
    }
}
