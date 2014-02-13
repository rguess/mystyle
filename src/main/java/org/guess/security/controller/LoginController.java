package org.guess.security.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Controller
@RequestMapping("/")
public class LoginController {

	@RequestMapping(method = RequestMethod.GET,value="/login")
	public String login() {
		return "login";
	}

	@RequestMapping(method = RequestMethod.POST,value="login")
	public String login(@RequestParam("userName") String userName, @RequestParam("password") String password,
			@RequestParam("rememberMe") boolean remember,HttpServletRequest request) {

		UsernamePasswordToken token = new UsernamePasswordToken(userName, password);
		token.setRememberMe(true);
		Subject currentUser = SecurityUtils.getSubject();
		
		try {
			System.out.println("对用户[" + userName + "]进行登录验证..验证开始");
			currentUser.login(token);
			System.out.println("对用户[" + userName + "]进行登录验证..验证通过");
		} catch (UnknownAccountException uae) {
			System.out.println("对用户[" + userName + "]进行登录验证..验证未通过,未知账户");
			request.setAttribute("message_login", "未知账户");
		} catch (IncorrectCredentialsException ice) {
			System.out.println("对用户[" + userName + "]进行登录验证..验证未通过,错误的凭证");
			request.setAttribute("message_login", "密码不正确");
		} catch (LockedAccountException lae) {
			System.out.println("对用户[" + userName + "]进行登录验证..验证未通过,账户已锁定");
			request.setAttribute("message_login", "账户已锁定");
		} catch (ExcessiveAttemptsException eae) {
			System.out.println("对用户[" + userName + "]进行登录验证..验证未通过,错误次数过多");
			request.setAttribute("message_login", "用户名或密码错误次数过多");
		} catch (AuthenticationException ae) {
			// 通过处理Shiro的运行时AuthenticationException就可以控制用户登录失败或密码错误时的情景
			System.out.println("对用户[" + userName + "]进行登录验证..验证未通过,堆栈轨迹如下");
			ae.printStackTrace();
			request.setAttribute("message_login", "用户名或密码不正确");
		}
		// 验证是否登录成功
		if (currentUser.isAuthenticated()) {
			System.out.println("用户[" + userName
					+ "]登录认证通过(这里可以进行一些认证通过后的一些系统参数初始化操作)");
			return "redirect:/sys/user/list";
		} else {
			token.clear();
		}
		return "/login";
	}
	
	/**
	 * 用户登出
	 */
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		SecurityUtils.getSubject().logout();
		return InternalResourceViewResolver.REDIRECT_URL_PREFIX + "/login";
	}
}
