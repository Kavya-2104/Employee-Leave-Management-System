package com.klef.jfsd.sdp.manager.repositories;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.klef.jfsd.sdp.manager.model.LeaveRequest;

@Repository
public interface LeaveRequestRepository extends JpaRepository<LeaveRequest, Integer> 
{
	public LeaveRequest findByEmpid(int empid);
}