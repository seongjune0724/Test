<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	String driver = "oracle.jdbc.driver.OracleDriver";

	String url = "jdbc:oracle:thin:@localhost:1521:xe";

	boolean result = false;

	try {
		Class.forName(driver);

		conn = DriverManager.getConnection(url, "scott", "tiger");

		String query = "select ename, floor(sysdate-hiredate) from emp";

		pstmt = conn.prepareStatement(query);

		rs = pstmt.executeQuery();

		while (rs.next()) {

			System.out.printf("%10s%6s일\n", rs.getString(1), rs.getString(2));
			result = true;
		}

	} catch (Exception e) {
		result = false;
		e.printStackTrace();
	}
%>

