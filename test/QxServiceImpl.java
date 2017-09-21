import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.zxq.ssh.domain.Qx;
import com.zxq.ssh.service.IQxService;


public class QxServiceImpl extends BaseServiceTest{

	@Autowired
	IQxService qxService;
	@Test
	public void test() {
		List<Qx> list = qxService.findByLoginUserId("20142992");
		for (Qx qx : list) {
			System.out.println(qx);
		}
	}

}
