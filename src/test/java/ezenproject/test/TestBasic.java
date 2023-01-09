package ezenproject.test;

import static org.junit.Assert.assertNotNull;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import co.kr.ezen_project.dao.MemberDAO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class TestBasic {
	@Autowired
	ApplicationContext context;			//1번
	
	@Autowired
	DataSource dataSource;			//2번
	
	/*
	 * @Autowired JdbcTemplate jdbcTemplate; 대신 mybatis를 사용한다.			//3번
	 */
	
	@Autowired
	SqlSession sqlSession;			//4번
	
	
	@Autowired 
	MemberDAO dao; //5번
		
	@Test
	public void contextTest() {
		assertNotNull(context);
	}
	
	@Test
	public void dataSourceTest() {
		assertNotNull(dataSource);
	}
	
	@Test
	public void sqlsessionTest() {	
		assertNotNull(sqlSession);
	}
	
	/*
	 * @Test public void jdbcTemplateTest() { assertNotNull(dataSource);	
	 *  String result = jdbcTemplate.queryForObject("select sysdate from dual",
	 * String.class); System.out.println("==========================="+result); } 대신 mybatis를 사용한다.
	 */	
	
	@Test
	public void jdbcDataSourceTest() {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			con = dataSource.getConnection();
			ps = con.prepareStatement("select sysdate from dual");
			rs = ps.executeQuery();
			assertNotNull(rs);
			while(rs.next()) {
				System.out.println("==========================="+rs.getString(1));
			}
		}catch (Exception e) {
			// TODO: handle exception
		}finally {
			try {
				rs.close();	ps.close();	con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	
	@Test public void sampleDaoTest() { 
		assertNotNull(dao); 
		String result = dao.getTime(); 
		assertNotNull(result); 
		System.out.println(result);
	 }
	 
	
}



