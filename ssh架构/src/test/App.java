package test;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hqbl.client.core.util.web.QueryBean;
import com.hqbl.client.home.user.entity.User;
import com.hqbl.client.home.user.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class App {

	@Resource
	private UserService service;
	@Test
	public void test() {
		/*for (int i = 0; i < 100; i++) {
			User user = new User();
			user.setName("小强"+i);
			user.setPassword("abc"+i);
			service.add(user);
		}*/
		
		QueryBean qb = service.query("from User", 0, 10);
		
		
		//System.out.println(qb.getTotal());
		System.out.println(qb.getRows().size());
	}

}
