package technews.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import technews.entity.userroles;
import technews.entity.users;

@Transactional
@Controller
@RequestMapping("/technews/")
public class HomeController {

	@RequestMapping("index")
	public String index() {
		return "home/index";
	}

	@RequestMapping("articles")
	public String articles() {
		return "home/articles";
	}

	@RequestMapping("detail")
	public String detail() {
		return "home/detail";
	}

	@Autowired
	SessionFactory factory;

	// Đăng nhập (loginform)
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(ModelMap model, @RequestParam("loginusername") String username,
			@RequestParam("loginpassword") String pwd, HttpSession httpSession, HttpServletRequest request) {

		Session session = factory.getCurrentSession();
		users user = null;
		try {
			String hql = "from users where username = :uname";
			Query query = session.createQuery(hql);
			query.setParameter("uname", username);
			user = (users) query.uniqueResult();
			if (!user.getPassword().equals(pwd)) {
				model.addAttribute("message", "Sai mật khẩu !");
				return "home/index";
			} else {
				httpSession.setAttribute("u", user);
				model.addAttribute("message", "Đăng nhập thành công !");
			}
		} catch (Exception e) {
			model.addAttribute("message", "Sai tên đăng nhập !");
			return "home/index";
		}
		return "home/index";
	}

	// Đăng xuất (Xóa Attribute u)
	@RequestMapping("logout")
	public String Logout(HttpSession httpSession) {
		httpSession.removeAttribute("u");
		return "redirect:/technews/index.htm";
	}

	// Hiện thị tài khoản người dùng
	@RequestMapping("myaccount")
	public String account() {
		return "home/account";
	}

	@Autowired
	ServletContext context;

	// Đăng ký (register form)
	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String Register(ModelMap model, @RequestParam("regfullname") String fullname,
			@RequestParam("regemail") String email, @RequestParam("regusername") String username,
			@RequestParam("regpassword") String password, @RequestParam("regimg") MultipartFile image) {

		Session session = factory.openSession();
		//Get id role = 3 (member)
		userroles userrole = (userroles) session.get(userroles.class, 3);

		String photoPath = context.getRealPath("/files/" + image.getOriginalFilename());
		try {
			image.transferTo(new File(photoPath));
		} catch (IllegalStateException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		users user = new users(fullname, email, username, password, image.getOriginalFilename(), userrole);
		Transaction t = session.beginTransaction();
		try {
			session.save(user);
			t.commit();
			System.out.println("Register Compelete");
			model.addAttribute("message", "Đăng ký thành công !");
			model.addAttribute("u", user); // Auto login
			return "home/account";
		} catch (Exception e) {
			System.out.println("Register Failse");
			t.rollback();
			model.addAttribute("message", "Đăng ký thất bại !");
		} finally {
			session.close();
		}
		return "home/index";
	}
	
}
