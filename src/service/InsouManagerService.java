package service;

import java.util.ArrayList;
import java.util.HashMap;

import entity.InsouManager;


public interface InsouManagerService{
	InsouManager verifyUser(String username,String password);
	int addUser(InsouManager newUser);
	boolean deleteUser(String username) ;
	boolean findUser(InsouManager user) ;
	int editUser(InsouManager user);
	HashMap getUserList();
	HashMap getsearchUserList(String name);
	InsouManager changeType(InsouManager newMan,InsouManager oldMan);		
}
