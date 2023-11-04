package com.klef.jfsd.sdp.manager.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.manager.model.Employee;
import com.klef.jfsd.sdp.manager.model.LeaveRequest;
import com.klef.jfsd.sdp.manager.model.Manager;
import com.klef.jfsd.sdp.manager.repositories.EmployeeRepository;
import com.klef.jfsd.sdp.manager.repositories.LeaveRequestRepository;
import com.klef.jfsd.sdp.manager.repositories.ManagerRepository;

@Service
public class ManagerServiceImpl implements ManagerService{

	@Autowired	
	private ManagerRepository managerRepository;

	@Autowired
	private EmployeeRepository employeeRepository;
	
	@Autowired
	private LeaveRequestRepository leaveRequestRepository;
	
	@Override
	public String addManager(Manager mn) 
	{
	    managerRepository.save(mn);
	    return "Manager Added Successfully";
	}

	@Override
	public Manager checkmnlogin(String email, String pwd) 
	{
		return managerRepository.checkmnlogin(email, pwd);
	}

	
	@Override
	public List<Employee> viewallemps()
	{
		return employeeRepository.findAll();
	}

	@Override
	public Employee viewempbyid(int empid) 
	{
		Optional<Employee> obj = employeeRepository.findById(empid);    
	    
	    if(obj.isPresent())
	    {
	      Employee emp = obj.get();
	      return emp;
	    }
	    else
	    {
	      return null;
	    }
	}

	@Override
	public LeaveRequest findByEmpid(int empid) 
	{
		return leaveRequestRepository.findByEmpid(empid);
	}

}
