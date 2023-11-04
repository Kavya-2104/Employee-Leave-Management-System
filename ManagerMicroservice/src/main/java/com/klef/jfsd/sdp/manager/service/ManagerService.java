package com.klef.jfsd.sdp.manager.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.klef.jfsd.sdp.manager.model.Employee;
import com.klef.jfsd.sdp.manager.model.LeaveRequest;
import com.klef.jfsd.sdp.manager.model.Manager;

public interface ManagerService 
{
	public String addManager(Manager mn);
	public Manager checkmnlogin(String email,String pwd);
	public List<Employee> viewallemps();
	public Employee viewempbyid(int eid);
	public LeaveRequest findByEmpid(int empid);

}
