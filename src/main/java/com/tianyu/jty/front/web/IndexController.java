package com.tianyu.jty.front.web;


import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.tianyu.jty.acount.entity.AccountUser;
import com.tianyu.jty.acount.service.AccountUserService;
import com.tianyu.jty.common.utils.Global;

/**
 * 登录controller
 * @author ty
 * @date 2015年1月14日
 */
@Controller
@RequestMapping(value = "")
public class IndexController{
	
	@Autowired
	AccountUserService accountUserService;
	
	@RequestMapping(value="index")
	public String list() {
		return "front/index";
	}
	@RequestMapping(value="register")
	public String register() {
		return "front/register";
	}
	@RequestMapping(value="center")
	public String center() {
		return "front/center";
	}
	@RequestMapping(value="trade")
	public String trade() {
		return "front/trade";
	}
	
	@RequestMapping(value="center",method = RequestMethod.POST)
	public String center(AccountUser accountUser, Model model,HttpSession httpSession) {
		AccountUser user=accountUserService.get(accountUser.getId());
		user.setEmail(accountUser.getEmail());
		user.setPhone(accountUser.getPhone());
		user.setGender(accountUser.getGender());
		user.setName(accountUser.getName());
		accountUserService.save(user);
		httpSession.setAttribute("accountUser", user);
		model.addAttribute("tip"," 修改成功！");
		return "front/center";
	}
	
	@RequestMapping(value="updatePw",method = RequestMethod.POST)
	public String updatePw(AccountUser accountUser, Model model,HttpSession httpSession) {
		AccountUser user=accountUserService.get(accountUser.getId());
		if(!user.getPassword().equals(accountUser.getPlainPassword())){
			model.addAttribute("tip"," 旧密码输入不正确！");
			return "front/center";
		}
		user.setPassword(accountUser.getPassword());
		model.addAttribute("tip"," 修改成功！");
		return "front/center";
	}
	
	
	@RequestMapping(value="doregister",method = RequestMethod.POST)
	public String register(AccountUser accountUser, Model model) {
		accountUserService.save(accountUser);
		model.addAttribute("tip"," 注册成功！");
		return "front/login";
	}
	/**
	 * 默认页面
	 * @return
	 */
	@RequestMapping(value="login",method = RequestMethod.GET)
	public String login() {
		return "front/login";
	}

	/**
	 * 登录失败
	 * @param userName
	 * @param model
	 * @return
	 */
	@RequestMapping(value="login",method = RequestMethod.POST)
	public String fail(String loginName, String password, Model model,HttpSession httpSession) {
		AccountUser user=accountUserService.getUser(loginName, password);
		if(user==null){
			model.addAttribute("tip"," 用户名或密码不正确！");
			return "front/login";
		}else{
			httpSession.setAttribute("accountUser",user);
			return "front/index";
		}
	
	}

	/**
	 * 登出
	 * @param userName
	 * @param model
	 * @return
	 */
	@RequestMapping(value="logout")
	public String logout(Model model,HttpSession httpSession) {
		httpSession.removeAttribute("accountUser");
		return "front/index";
	}
	
}
