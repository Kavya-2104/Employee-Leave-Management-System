package com.klef.jfsd.sdp.manager.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.support.JpaRepositoryImplementation;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.sdp.manager.model.Manager;

@Repository
public interface ManagerRepository extends JpaRepository<Manager, Integer>
{
	@Query("select m from Manager m where email=?1 and password=?2")
	public Manager checkmnlogin(String email,String pwd);

}
