import org.apache.commons.dbcp.BasicDataSource;
import org.springframework.jdbc.core.JdbcTemplate;


public class FFF {
	public static void main(String[] args) {
		String url = "http://localhost:8080/app/cell/edit.html";
		
		System.out.println(url.replaceFirst("/\\w+\\.html.*", ""));
		
	}
}
