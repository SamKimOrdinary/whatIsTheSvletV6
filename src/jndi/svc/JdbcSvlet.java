package jndi.svc;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jndi.dao.MemberDao;
import jndi.dto.MemberDto;

/**
 * Servlet implementation class JdbcSvlet
 */
public class JdbcSvlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JdbcSvlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); //요청 관련 인코딩 처리
		response.setContentType("text/html;charset=utf-8"); //응답 관련 인코딩 처리
		
		PrintWriter out = response.getWriter();

		// DAO 객체 생성
		MemberDao dao  = new MemberDao();
        ArrayList list  = dao.list();
        out.print( "<html><body>" );
        out.print("<a href='/whatIsTheSvletV6/'>Home</a><hr>");
        out.print( "<table border=1><tr>");
        out.print( "<td>이름</td><td>키</td><td>체중</td><td>나이</td><td>성별</td></tr>");


            for( int i = 0 ; i < list.size(); i++ ){
                MemberDto data = ( MemberDto )list.get(i);
                String name = data.getName();
                String height = data.getHeight();
                String weight = data.getWeight();
                int age = data.getAge();
                String sex = data.getSex();
                out.print( "<tr><td>"+name+"</td><td>"+height+"</td><td>"+weight+"</td><td>"+age+"</td><td>"+sex+"</td></tr>");
            }//end for
        out.print( "</body></html>" );
    }
}
