package technews.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import technews.entity.articles;
import technews.entity.articletypes;
import technews.entity.userroles;
import technews.entity.users;

@Transactional
@Controller
@RequestMapping("/admin/")
public class AdminController {

	@RequestMapping("index")
	public String dashboard() {
		return "admin/index";
	}

	@Autowired
	SessionFactory factory;

	// Lấy tất cả thông tin tài khoản (bảng users)
	@RequestMapping("danhsachtaikhoan")
	public String danhsachtaikhoan(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from users";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<users> list = query.list();
		model.addAttribute("users", list);
		return "admin/danhsachtaikhoan";
	}

	// Lấy tất cả thông tin quyền (bảng userroles)
	@RequestMapping("danhsachquyen")
	public String danhsachquyen(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from userroles";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<userroles> list = query.list();
		model.addAttribute("userroles", list);
		return "admin/danhsachquyen";
	}

	// Lấy tất cả thông tin bài viết (bảng articles)
	@RequestMapping("danhsachbaiviet")
	public String danhsachbaiviet(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from articles";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<articles> list = query.list();
		model.addAttribute("articles", list);
		return "admin/danhsachbaiviet";
	}

	// Lấy tất cả thông tin loại bài viết (bảng articletypes)
	@RequestMapping("danhsachloaibaiviet")
	public String danhsachloaibaiviet(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from articletypes";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<articletypes> list = query.list();
		model.addAttribute("articletypes", list);
		return "admin/danhsachloaibaiviet";
	}
	
	@Autowired
	ServletContext context;
	
	// Thêm thông tin tài khoản người dùng mới
	@RequestMapping(value = "themtaikhoan", method = RequestMethod.GET)
	public String themtaikhoan() {
		return "admin/themtaikhoan";
	}
	@RequestMapping(value = "themtaikhoan", method = RequestMethod.POST)
	public String themtaikhoan(ModelMap model, 
			@RequestParam("fullname") String fullname,
			@RequestParam("email") String email, 
			@RequestParam("username") String username,
			@RequestParam("password") String password, 
			@RequestParam("role") Integer role) {

		Session session = factory.openSession();
		userroles userrole = (userroles) session.get(userroles.class, role);

		users user = new users(fullname, email, username, password, "avatar002.png", userrole);
		Transaction t = session.beginTransaction();
		try {
			session.save(user);
			t.commit();
			System.out.println("+ Compelete");
			model.addAttribute("message", "Thêm thành công !");
			return "admin/themtaikhoan";
		} catch (Exception e) {
			System.out.println("+ Failse");
			t.rollback();
			model.addAttribute("message", "Thêm thất bại !");
		} finally {
			session.close();
		}
		return "admin/themtaikhoan";
	}
	
	// Thêm bài viết mới
	@RequestMapping(value = "thembaiviet", method = RequestMethod.GET)
	public String thembaiviet(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from articletypes";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<articletypes> list = query.list();
		model.addAttribute("articletypes", list);
		return "admin/thembaiviet";
	}
	@RequestMapping(value = "thembaiviet", method = RequestMethod.POST)
	public String thembaiviet(ModelMap model, 
			@RequestParam("iduser") Integer iduser,
			@RequestParam("title") String title, 
			@RequestParam("subtitle") String subtitle,
			@RequestParam("source") String source, 
			@RequestParam("idtype") Integer idtype, 
			@RequestParam("editor1") String editor1, 
			@RequestParam("image") MultipartFile image) {

		Session session = factory.openSession();
		//DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
		Date ngaydang = new Date();
		users user = (users) session.get(users.class, iduser);
		articletypes articletype = (articletypes) session.get(articletypes.class, idtype);
		
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

		articles article = new articles(image.getOriginalFilename(),ngaydang,title,subtitle,editor1,source,0,user,articletype);
		Transaction t = session.beginTransaction();
		try {
			session.save(article);
			t.commit();
			model.addAttribute("message", "Thêm thành công !");
			return "admin/thembaiviet";
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Thêm thất bại !");
		} finally {
			session.close();
		}
		return "admin/thembaiviet";
	}
	
	// Thêm thông tin quyền mới
	@RequestMapping(value = "themquyen", method = RequestMethod.GET)
	public String themquyen(ModelMap model) {
		model.addAttribute("role", new userroles());
		return "admin/themquyen";
	}
	@RequestMapping(value = "themquyen", method = RequestMethod.POST)
	public String themquyen(ModelMap model, @ModelAttribute("role") userroles role) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(role);
			t.commit();
			model.addAttribute("message", "Thêm mới thành công !");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Thêm mới thất bại !");
		} finally {
			session.close();
		}
		return "admin/themquyen";
	}
	
	// Thêm thông tin loại bài viết mới
	@RequestMapping(value = "themloaibaiviet", method = RequestMethod.GET)
	public String themloaibaiviet(ModelMap model) {
		model.addAttribute("articletypes", new articletypes());
		return "admin/themloaibaiviet";
	}
	@RequestMapping(value = "themloaibaiviet", method = RequestMethod.POST)
	public String themloaibaiviet(ModelMap model, @ModelAttribute("articletypes") articletypes type) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(type);
			t.commit();
			model.addAttribute("message", "Thêm mới thành công !");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Thêm mới thất bại !");
		} finally {
			session.close();
		}
		return "admin/themloaibaiviet";
	}
	
	
	// -------------------------------------
	@RequestMapping(value = "xoaus/{id}", method = RequestMethod.GET)
	public String xoaus(ModelMap model, @PathVariable("id") int id, HttpServletRequest req) {
		Session session = factory.openSession();
		users user = (users) session.get(users.class, id);
		Transaction t = session.beginTransaction();
		try {
			session.delete(user);
			t.commit();
		} catch (Exception e) {
			t.rollback();
		} finally {
			session.close();
		}
		return "redirect:/admin/danhsachtaikhoan.htm";
	}
	
	
	@RequestMapping("user/{id}")
	public String ShowUser(ModelMap model, @PathVariable("id") Integer id){
		Session session = factory.getCurrentSession();
//		String hql = "from users where id:=id";
		users users = (users) session.get(users.class, id);
		model.addAttribute("user", users);
		return "admin/suataikhoan";
	}
	
	@RequestMapping(value = "update", method = RequestMethod.POST )
	public String UpdateUser(ModelMap model, 
			@RequestParam("id") int id,
			@RequestParam("fullname") String fullname,
			@RequestParam("email") String email, 
			@RequestParam("username") String username,
			@RequestParam("password") String password){
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		users user = (users) session.get(users.class,id);
		user.setUsername(username);
		user.setPassword(password);
		user.setFullname(fullname);
		user.setEmail(email);
		
		try {
			session.update(user);
			t.commit();
			model.addAttribute("message", "Chỉnh sửa thành công !");
			model.addAttribute("user", user); 
		} 
		catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Chỉnh sửa thất bại !" + e.getMessage());
			return "redirect:/admin/danhsachtaikhoan.htm";
		}
		finally {
			session.close();
		}
		return "redirect:/admin/danhsachtaikhoan.htm";
	}
	
	
}
