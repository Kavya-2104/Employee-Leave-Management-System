package com.klef.jfsd.sdp.manager.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.sdp.manager.model.Employee;
import com.klef.jfsd.sdp.manager.model.LeaveRequest;
import com.klef.jfsd.sdp.manager.model.Manager;
import com.klef.jfsd.sdp.manager.repositories.LeaveRequestRepository;
import com.klef.jfsd.sdp.manager.service.ManagerService;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("mng")
public class MngController 
{
	
	@Autowired
	private ManagerService managerService;

	//INSERT MANAGER
		@PostMapping("insertmanager")
		public ModelAndView insertaction(HttpServletRequest request,HttpServletResponse response)
		{
			String msg=null;
			ModelAndView mv=new ModelAndView();
			try
			{
				String mnid = request.getParameter("id");
				int id = Integer.parseInt(mnid);
				String name = request.getParameter("name");
			    String gender = request.getParameter("gender");
			    String dob = request.getParameter("dob");
			    String dept = request.getParameter("department");
			    String desg = request.getParameter("Designation");
			    String sal = request.getParameter("salary");
			    double salary = Double.parseDouble(sal);
			    
			    String email = request.getParameter("email");
			    String pwd = request.getParameter("password");
			    String location = request.getParameter("location");
			    String contact = request.getParameter("contact");
			    String status = request.getParameter("status");
			    
			    Manager mn = new Manager();
			    mn.setMngid(id);
			    mn.setName(name);
			    mn.setGender(gender);
			    mn.setDob(dob);
			    mn.setDept(dept);
			    mn.setSalary(salary);
			    mn.setDesignation(desg);
			    mn.setEmail(email);
			    mn.setPassword(pwd);
			    mn.setLocation(location);
			    mn.setContact(contact);
			    mn.setStatus(false);
			    msg=managerService.addManager(mn);
			    mv.setViewName("ManagerFolder/reg-success");
				
			}
			catch(Exception e)
			{
				msg=e.getMessage();
				mv.setViewName("ManagerFolder/displayerror");
				mv.addObject("message",msg);
			}
			return mv;
		}
		
		//CHECK MANAGERLOGIN
		@PostMapping("checkmnglogin")
		public ModelAndView checkmnglogin(HttpServletRequest request)
		{
			ModelAndView mv=new ModelAndView();
			String email = request.getParameter("email");
		     String pwd = request.getParameter("password");
		     
		    Manager mn =  managerService.checkmnlogin(email, pwd);
		    System.out.println(mn==null);
		    if(mn!=null)
		    {
		    	// SESSION 
		    	
		    	HttpSession session = request.getSession();
		    	
		    	session.setAttribute("eid",mn.getMngid());
		    	session.setAttribute("ename", mn.getName());
		    	
		    	// SESSION
		      mv.setViewName("ManagerFolder/Mngindex");
		    }
		    else
		    {
		      mv.setViewName("ManagerFolder/Mnglogin");
		      mv.addObject("message","Login Failed");
		    }
		    return mv;
		}	
		
		
		
		
		@GetMapping("ViewLeaveRequests")
		public ModelAndView viewemps(){
			List<Employee> emplist= managerService.viewallemps();
			ModelAndView mv=new ModelAndView("ManagerFolder/ViewLeaveRequests");
			mv.addObject("empdata",emplist);
			return mv;
		}
		
		
		
}
