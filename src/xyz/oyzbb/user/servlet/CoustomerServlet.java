package xyz.oyzbb.user.servlet;

import java.io.IOException;
import java.io.Reader;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import xyz.oyzbb.entity.Customer;
import xyz.oyzbb.mapper.CustomerMapper;

public class CoustomerServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int cid=Integer.parseInt(req.getParameter("userid"));
		String cpassword = req.getParameter("userpwd");
		
		//加载MyBatis配置文件(目的就是为了访问数据库)
		Reader reader = Resources.getResourceAsReader("conf.xml");
		
		//session就是connection
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader, "development");
		SqlSession session = sessionFactory.openSession();
		
		//获得接口再调用接口里的方法    定位接口的方法 
		CustomerMapper customerMapper = session.getMapper(CustomerMapper.class);
		Customer customer = customerMapper.quertCustomerById(cid);
		
		System.out.println(customer+"666");
		session.close();
	}
	
}
