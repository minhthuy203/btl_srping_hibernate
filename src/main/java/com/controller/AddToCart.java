package com.controller;

import java.security.Principal;
import java.util.List;

import javax.persistence.criteria.Order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.AccountDAO;
import com.dao.CartDAO;
import com.dao.OrderDAO;
import com.dao.ProductDAO;
import com.dto.CartOrderDTO;
import com.entity.Account;
import com.entity.CustomAccountDetail;
import com.entity.OrderDetails;
import com.entity.Orders;
import com.entity.ProductDetail;

@Controller
public class AddToCart {
	@Autowired
	private AccountDAO accDao;
	private ProductDAO proDao;
	@Autowired
	private CartDAO cartDao;
	@Autowired
	private OrderDAO orderDao;
	
//	public float account(int quantity, List<Orders> listCart) {
//		float total = 0;
//		for (Orders c : listCart) {
//			total += c.
//		}
//		return total;
//	}
	
	@RequestMapping("/addToCart")
	private String addToCart(Principal principal, @ModelAttribute("cartOrderDTO") CartOrderDTO order,
			BindingResult result, Model model) {
		if(principal != null) {
		CustomAccountDetail acc = (CustomAccountDetail) SecurityContextHolder.getContext().getAuthentication()
				.getPrincipal();
		Account account = accDao.findById(acc.getId());
		ProductDetail productDetail = proDao.getProDetail(order.getProDetailId());
		OrderDetails orderDetails = new OrderDetails(order.getQuantity(), order.getColor(), order.getSize(),
				account.getOrders().get(0), productDetail);
		boolean addToCart = cartDao.addToCart(orderDetails);
		if (addToCart ) {
			
			return "redirect:/cart";
		} else {
			model.addAttribute("err", "Insert failed!");
			model.addAttribute("cartOrderDTO", order);
			return "product-detail";
		}
		}else {
			return "login";
		}
	}

	@RequestMapping("/updateCart")
	public String initUpdateCart(@RequestParam("id") Integer orderDetailId , @RequestParam("proDetailId")Integer proDetailId ,@ModelAttribute("updateCart1")OrderDetails updateCart,Model model) {
		CustomAccountDetail acc = (CustomAccountDetail) SecurityContextHolder.getContext().getAuthentication()
				.getPrincipal();
		Account account = accDao.findById(acc.getId());
		OrderDetails orderDetails = orderDao.findById(account.getOrders().get(0).getOrderId(), proDetailId, updateCart.getId());
		orderDetails.setColor(updateCart.getColor());
		orderDetails.setQuantity(updateCart.getQuantity());
		orderDetails.setSize(updateCart.getSize());
		boolean updateCart2 = cartDao.updateCart(orderDetails);
		if(updateCart2) {
			List<OrderDetails> all = cartDao.getAll(account.getOrders().get(0).getOrderId());
			model.addAttribute("listCart", all);
			return "redirect:/cart";
		}else {
			
			return "login";
		}
	}
	@RequestMapping("/delete-cart")
	public String cartDelete(Principal principal, @RequestParam("id") Integer orderDetailId,@ModelAttribute("updateCart1")OrderDetails updateCart, Model model) {
		if (principal != null) {
			boolean delateCart = cartDao.delateCart(orderDetailId);
			if (delateCart) {
				model.addAttribute("delete success!", "ss");
			}else {
				model.addAttribute("delete Fail!", "err");
			}
			CustomAccountDetail acc = (CustomAccountDetail) SecurityContextHolder.getContext().getAuthentication()
					.getPrincipal();
			Account account = accDao.findById(acc.getId());
			List<OrderDetails> all = cartDao.getAll(account.getOrders().get(0).getOrderId());
			model.addAttribute("listCart", all);
			return "cart";

		} else {

			return "login";
		}

	}
}
