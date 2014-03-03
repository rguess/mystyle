package org.guess.sys.controller;

import java.util.List;

import org.guess.core.utils.security.Coder;
import org.guess.core.web.BaseController;
import org.guess.sys.model.Role;
import org.guess.sys.model.User;
import org.guess.sys.service.RoleService;
import org.guess.sys.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/sys/user/")
public class UserController extends BaseController<User, UserService> {

	{
		editView = "/sys/user/edit";
		listView = "/sys/user/list";
		showView = "/sys/user/show";
	}

	@Autowired
	private UserService userService;

	@Autowired
	private RoleService roleService;

	@RequestMapping("isAvailable")
	public @ResponseBody
	boolean isLoginIdAvailable(@RequestParam("loginId") String id, @RequestParam("oldValue") String old) {
		if (id.equals(old))
			return true;
		User u = userService.findUniqueBy("loginId", id);
		return u == null;
	}

	@Override
	public ModelAndView create() throws Exception {
		ModelAndView mav = new ModelAndView(editView);
		List<Role> roles = roleService.getAll();
		mav.addObject("roles", roles);
		return mav;
	}

	@Override
	public String create(User user) throws Exception {
		if (user.getId() != null) {
			User oldUser = userService.get(user.getId());
			if (!oldUser.getPasswd().equals(user.getPasswd())) {
				user.setPasswd(Coder.encryptMD5(user.getLoginId() + user.getPasswd()));
			}
		} else {
			user.setPasswd(Coder.encryptMD5(user.getLoginId() + user.getPasswd()));
		}
		userService.save(user);
		return "redirect:" + listView;
	}
}
