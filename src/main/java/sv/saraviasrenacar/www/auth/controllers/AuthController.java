package sv.saraviasrenacar.www.auth.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Auth")
public class AuthController {

	@GetMapping("/")
	public String index() {
		return "authView/loginView";
	}
}
