package stackjava.com.springexceptionhanding.entities;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

public class User {

	@NotNull(message = "Id is required")
	private Integer id;

	@NotBlank(message = "Name is required")
	@Length(min = 5, max = 10)
	private String name;

	@NotBlank(message = "Email is required")
	@Email
	private String email;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
