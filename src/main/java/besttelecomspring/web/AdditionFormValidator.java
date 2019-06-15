package besttelecomspring.web;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class AdditionFormValidator implements Validator {
    @Override
    public boolean supports(Class<?> aClass) {
        return aClass.equals(AdditionForm.class);
    }

    @Override
    public void validate(Object o, Errors errors) {
        AdditionForm additionForm = (AdditionForm) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "productName", "addition.productName.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "productPrice", "addition.productPrice.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "productType", "addition.productType.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "productImage", "addition.productImage.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "productMark", "addition.productMark.required");

        if(additionForm.getProductPrice() < 0){
              errors.rejectValue("productPrice", "addition.productPrice.min.length");
        }

    }
}
