package com.controller;

import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.AccRoleDAO;
import com.dao.AccountDAO;
import com.dao.CartDAO;
import com.dao.CategoriesDAO;
import com.dao.OrderDAO;
import com.dao.ProductDAO;
import com.dto.CartOrderDTO;
import com.entity.Account;
import com.entity.Accounts_Roles;
import com.entity.Categories;
import com.entity.CustomAccountDetail;
import com.entity.OrderDetails;
import com.entity.Orders;
import com.entity.ProductDetail;
import com.entity.Products;
import com.entity.Role;

@Controller
public class RouterController {
	@Autowired
	private CategoriesDAO cateDao;
	@Autowired
	private ProductDAO proDao;
	@Autowired
	private CartDAO cartDao;
	@Autowired
	private AccountDAO accDao;
	@Autowired
	private AccRoleDAO accRoleDao;
	@Autowired
	private OrderDAO orderDao;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sf, true));
	}

	@RequestMapping(value = { "/", "/home" })
	public String homePage(Model model) {
		List<Categories> listCategories = cateDao.getListCategories();
		model.addAttribute("listCate", listCategories);
		List<Products> listProduct = proDao.getListProduct();
		model.addAttribute("listPro", listProduct);
		return "home";
	}

	@RequestMapping("/product-detail")
	public String productDetailPage(@RequestParam("proId") Integer proId,@RequestParam("cateId")int cateId , Model model) {
		model.addAttribute("cartOrderDTO", new CartOrderDTO());
		List<Categories> listCategoriesById = cateDao.getListCategoriesById(cateId);
		model.addAttribute("relatedProducts", listCategoriesById);
		ProductDetail proDetail = proDao.getProDetail(proId);
		model.addAttribute("proDetail", proDetail);
		return "product-details";
	}

	@RequestMapping("/cart")
	public String cartPage(Principal principal, Model model) {
		if (principal != null) {
			CustomAccountDetail acc = (CustomAccountDetail) SecurityContextHolder.getContext().getAuthentication()
					.getPrincipal();
			Account account = accDao.findById(acc.getId());
			List<OrderDetails> all = cartDao.getAll(account.getOrders().get(0).getOrderId());
			model.addAttribute("listCart", all);
			model.addAttribute("updateCart1", new OrderDetails());
			return "cart";

		} else {

			return "login";
		}

	}

	
	@RequestMapping("/login")
	public String login( @RequestParam(value = "error", required = false) String error,  Model model) {
		if (error != null) {
			model.addAttribute("mess", "Login failed!");
		}
		return "login";
	}

	@RequestMapping("/logout")
	public String logout(Model model) {
		model.addAttribute("mess", "Has Logged out!!!");
		return "login";
	}

	@RequestMapping("/register")
	public String register(Model model) {
		model.addAttribute("register", new Account());
		return "register";

	}

	@RequestMapping("/regis")
	public String registered(@Valid @ModelAttribute("register") Account acc1, BindingResult result, Model model) {
			Accounts_Roles accounts_Roles = new Accounts_Roles();
			String roleName = "ROLE_USER";
			Role roleByName = accRoleDao.getRoleByName(roleName);
			accounts_Roles.setAccount(acc1);
			accounts_Roles.setRole(roleByName);

			Orders or = new Orders();
			or.setAccounts(acc1);
			or.setCreateAt(new Date());
			or.setStatus(true);

			boolean register = accRoleDao.register(acc1);
			boolean insertOrder = orderDao.insertOrder(or);
			boolean insertAccRole = accRoleDao.insertAccRole(accounts_Roles);
			if (!result.hasErrors()&& register && insertAccRole && insertOrder) {
				return "redirect:/login";
			} 
		else {
			model.addAttribute("err", "Register failed!");
			return "register";
		}
	}

	
	@RequestMapping("/about-us")
	public String aboutUsPage() {
		return "about_us";
	}

	@RequestMapping("/contact")
	public String contactPage() {
		return "contact";
	}

	@RequestMapping("/blog")
	public String blogPage() {
		return "blog";
	}

	@RequestMapping("/order-detail")
	public String orderDetailPage(Principal principal) {
		if (principal != null) {

			return "orderDetail";

		} else {

			return "login";
		}

	}
}
