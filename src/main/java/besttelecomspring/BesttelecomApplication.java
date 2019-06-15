package besttelecomspring;

import besttelecomspring.property.StorageProperty;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

@SpringBootApplication
@EnableConfigurationProperties(StorageProperty.class)
public class BesttelecomApplication {

	public static void main(String[] args) {
		SpringApplication.run(BesttelecomApplication.class, args);
	}

}
