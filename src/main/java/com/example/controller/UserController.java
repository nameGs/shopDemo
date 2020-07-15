package com.example.controller;

import javax.servlet.http.HttpServletRequest;

import com.example.pojo.IdleItems;
import com.example.pojo.PublicBenefit;
import com.example.service.IdleItemsService;
import com.example.service.PublicBenefitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.example.pojo.User;
import com.example.service.UserService;

import java.util.List;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	@Autowired
	private IdleItemsService idleItemsService;
	@Autowired
	private PublicBenefitService publicBenefitService;

	@RequestMapping(value = "/findUser.action",method = RequestMethod.POST)
	public String findUser(String username,String password,HttpServletRequest request) {
		User user = userService.findUser(username);
		if(user != null){
			if(user.getPassword().equals(password)) {
				request.getSession().setAttribute("user", user);
				return "redirect:jumpIdle.action";
			}
		}else{
			request.setAttribute("error", "账号不存在");
			return "login";
		}
		request.setAttribute("error", "账号或密码错误");
		return "login";
	}

	@RequestMapping(value = "/register.action",method = RequestMethod.POST)
	public String register(String username,String password){
		System.out.println(username);
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setLoveHeart(0);
		user.setMoney(0);
		userService.addUser(user);
		return  "login";
	}
	@RequestMapping(value = "/jumpRegister.action")
	public String jumpRegister(){
		return "register";
	}
	@RequestMapping("/index.action")
	public String index(){
		return "login";
	}

	@RequestMapping("/jumpLoveHeart.action")
	public String jumpLoveHeart(HttpServletRequest request){
		List<PublicBenefit> publicBenefitList = publicBenefitService.findPublicBenefit();
		request.setAttribute("publicBenefitList",publicBenefitList);
		return "welfare";
	}
	@RequestMapping("/jumpIdle.action")
	public String jumpIdle(HttpServletRequest request){
		List<IdleItems> idleItemsList = idleItemsService.findIdleItems();
		request.setAttribute("idleItemsList",idleItemsList);
		return "idle";
	}
	/*充值*/
	@RequestMapping("/recharge.action")
	public String recharge(HttpServletRequest request,@RequestParam("money")float money){
		User user = (User) request.getSession().getAttribute("user");
		user.setMoney((user.getMoney()+money));
		userService.recharge(user);
		request.getSession().setAttribute("user",user);
		return "redirect:jumpIdle.action";
	}
	/*购买*/
	@RequestMapping("/buyIdleItems.action")
	public String buyIdleItems(HttpServletRequest request,@RequestParam("idleItemsId")int idleItemsId,@RequestParam("money")float money,@RequestParam("seller")int id){
		User user = (User) request.getSession().getAttribute("user");
		idleItemsService.sellerIdleItems(idleItemsId);
		User user1 = new User();
		user1.setMoney(money);
		user1.setId(id);
		userService.sellIdleItems(user1);
		float m = user.getMoney();
		user.setMoney(money);
		userService.buyIdleItems(user);
		user.setMoney((m-money));
		request.getSession().setAttribute("user",user);
		return "redirect:jumpIdle.action";
	}
	@RequestMapping("/jumpOnePublicBenefit.action")
	public String jumpOnePublicBenefit(HttpServletRequest request,@RequestParam("id")int id){
		request.setAttribute("publicBenefit",publicBenefitService.findPublicBenefitById(id));
		return "onePublicBenefit";
	}
	/*捐款*/
	@RequestMapping("/donation.action")
	public String donation(@RequestParam("publicBenefitId")int publicBenefitId,@RequestParam("money")float money, HttpServletRequest request){
		/*捐款方*/
		User user1 = (User)request.getSession().getAttribute("user");
		/*被捐款方*/
		User user2 = new User();
		PublicBenefit publicBenefit = new PublicBenefit();
		user2.setMoney(money);
		user2.setId(publicBenefitService.getUserId(publicBenefitId));
		int love = user1.getLoveHeart();
		user1.setLoveHeart(((int)money+1));
		publicBenefit.setId(publicBenefitId);
		publicBenefit.setMoneyNumber(money);
		publicBenefitService.getHelp(publicBenefit);
		user1.setMoney((user1.getMoney()-money));
		userService.sellIdleItems(user2);
		userService.sendLoveHeart(user1);
		user1.setLoveHeart((love+user1.getLoveHeart()));
		request.getSession().setAttribute("user",user1);
		return "redirect:jumpLoveHeart.action";
	}
}