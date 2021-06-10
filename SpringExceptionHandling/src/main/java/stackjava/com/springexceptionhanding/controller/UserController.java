package stackjava.com.springexceptionhanding.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import stackjava.com.springexceptionhanding.entities.User;

@Controller
public class UserController {

	@RequestMapping(value = "/addUser", method = RequestMethod.GET)
	public String doGetAddUser(Model model) {
		if (!model.containsAttribute("user")) {
			model.addAttribute("user", new User());
		}
		return "add-user";
	}

	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public String doPostAddUser(@ModelAttribute("user") @Validated User user) {
		return "view-user";
	}

}
