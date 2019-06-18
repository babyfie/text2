package controller;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Pojo.User;
import service.UserService;

@Controller

public class UserController {

	@Autowired
	private UserService userService;
	//用户登录
	@RequestMapping("/login")
	public String userList() throws Exception{

		return "login";
		
	}
	
	//注册功能
		@RequestMapping("/regisn")
		public String resign(User user) throws Exception {
			userService.addUser(user);
			return "/login";
		}
		
		@RequestMapping("/toregisn")
		public String toresign(User user) throws Exception {
			return "/singup";
		}
		
	//判断账户类型
	@RequestMapping("/logincheck")
	public String login(User user,Model model,HttpSession httpSession) throws Exception{
		
		User user1=userService.login(user);
		
		boolean email = user.getEmail().equals(user1.getEmail());
		boolean password = user.getPassword().equals(user1.getPassword());
		boolean type = user.getType().equals(user1.getType());
		if(user1!=null &&(email && password && type) ){

			httpSession.setAttribute("user", user1);
			if(user1.getType().equals("租客")){
				return "zuke/main";
			}
			else{
				return "admin/main1";
			}
		}else{
			String error="error";
			model.addAttribute("error", error);
			return "login";
		}
	}
	
}

