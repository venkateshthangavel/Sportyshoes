package com.example.demo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.UserController;

@Controller
@RequestMapping("/")
public class ProductController {
	
	@Autowired
	ProductDao dao;
	
	@Autowired
	PurchaseDao pdao;

	@RequestMapping("/addin")
	public String insert(HttpServletRequest request,HttpServletResponse response) {
	

		ModelAndView mv=new ModelAndView();
		Product p=new Product();
		
		p.setId(Integer.parseInt(request.getParameter("id")));
		p.setProductname(request.getParameter("productname"));
		p.setDescription(request.getParameter("description"));
		p.setCategory(request.getParameter("category"));
		p.setPrice(Integer.parseInt(request.getParameter("price")));
		p.setQuantity(Integer.parseInt(request.getParameter("quantity")));
		p.setSize(Integer.parseInt(request.getParameter("size")));
		
		
		Product pp=dao.insert(p);
		if(pp!=null)
		{
			mv.setViewName("add.jsp");
			
		}
		return "data inserted successfully";
	}
	
	@RequestMapping("/getall")
	public ModelAndView getall(HttpServletRequest request,HttpServletResponse response) {
		ModelAndView mv=new ModelAndView();
		List<Product> list=dao.getall();
		mv.setViewName("displayproduct.jsp");
		mv.addObject("list", list);
		return mv;
	}
	
	@RequestMapping("/uppro")
	public String update(HttpServletRequest request,HttpServletResponse response)
	{
		ModelAndView mv=new ModelAndView();
		Product p=new Product();
		
		p.setId(Integer.parseInt(request.getParameter("id")));
		p.setProductname(request.getParameter("productname"));
		p.setDescription(request.getParameter("description"));
		p.setCategory(request.getParameter("category"));
		p.setPrice(Integer.parseInt(request.getParameter("price")));
		p.setQuantity(Integer.parseInt(request.getParameter("quantity")));
		p.setSize(Integer.parseInt(request.getParameter("size")));
		
		
		Product pp=dao.insert(p);
		if(pp!=null) {
			mv.setViewName("success.jsp");
		}
		return "Product Updated Successfully";
	}
	
	@RequestMapping("/seeall")
	public ModelAndView displayall(HttpServletRequest request,HttpServletResponse response) {
		ModelAndView mv=new ModelAndView();
		List<Product> list=dao.getall();
		mv.setViewName("view.jsp");
		mv.addObject("list", list);
		return mv;
	}
	
	@RequestMapping("/dele")
    public String delete(HttpServletRequest request,HttpServletResponse response) {
		
		 int id= Integer.parseInt(request.getParameter("id"));
		  
		  dao.deleteByid(id);
		 
		 
		
		return "deleted successfully....check in the all the products";	
	}
	
	@RequestMapping("/PaymentController")
	public ModelAndView show(Purchase p,HttpServletRequest request,HttpServletResponse response) throws ParseException {
		ModelAndView mv=new ModelAndView();
		String user=UserController.user;
		System.out.println(user);
		String proname=request.getParameter("pname");
		String pcat=request.getParameter("cate");
		String ordid=request.getParameter("order");
		String price=request.getParameter("amt");
		String pid=request.getParameter("pid");
		System.out.println(proname+""+pcat);
		
		p.setProductname(proname);
		p.setProductcategory(pcat);
		p.setProductprice(price);
		p.setProductid(pid);
		p.setOrderno(ordid);
		p.setUsername(user);
		
		
		Date dNow = new Date( );
        SimpleDateFormat ft =new SimpleDateFormat ("dd-MM-yyyy");
        String dt1=ft.format(dNow);
        Date date=new SimpleDateFormat("dd-MM-yyyy").parse(dt1);
        p.setDateofpurchase(date);
        
		pdao.insert(p);
		
		mv.setViewName("payment.jsp");
	
	return mv;
	}
	
	
	@RequestMapping("/purchasehistory")
	public ModelAndView viewall(HttpServletRequest request,HttpServletResponse response) {
		ModelAndView mv=new ModelAndView();
		List<Purchase> list=pdao.getall();
		mv.setViewName("purchasehis.jsp");
		mv.addObject("list", list);
		return mv;
	}
	
}


