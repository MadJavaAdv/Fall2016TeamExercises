package java112.project2;
 
import java.io.*;
import javax.servlet.*;
import java.util.Date;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.util.logging.Logger;
import java.util.logging.Level;

 
/**
 *  This is a Team exercise that is part of Unit-3
 *
 *@author    puni
 */


@WebServlet (
    name = "JSPInit", 
    urlPatterns = { "/jspInit" }
)


public class JspInit extends HttpServlet {

     /**
     *  Handles HTTP GET requests.
     *
     *@param  request the HttpServletRequest object
     *@param  response the HttpServletResponse object
     *@exception  ServletException  if there is a Servlet failure
     *@exception  IOException if there is an IO failure
     */
    public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, java.io.IOException {
        logger.info("JSP Init method start");
        response.setContentType("text/html");
        java.io.PrintWriter out = response.getWriter();
        out.println("<html><head><title>Puni and Chelsea</title></head><body>");
        out.println("<h2>jspInit<h2><br>jspInit()</br>");
        out.println("<h2>jspInit() is one of the life cycle methods of JSP." +
            "If you declare a method name jspInit() it will" +
            "be called once when the JSP page is first loaded and before the" + 
            "request is passed to the page.</h2>");
        out.println("<br><%! public void jspInit() {" +
                   " //initialization code here" +
                    "}%></br><p>Now the question arises why we" +
            "shouldn’t use constructor instead of init method of jsp" +
            "or servlet ?. Of course ! we can use constructor instead" +
            "of init() method, there is nothing to stop us. In previous" +
            "versions of java it was not possible to dynamically call" +
            "constructor with arguments. This does no longer applied, but" +
            "servlet containers still looks for an no-argument constructor." +
            "So we won't have access to a ServletConfig or ServletContext" +
            "if we use constructor instead of init() method. And we could" +
            "override the jspInit() method");
        out.println("<h2>Syntax for the JSP Init()</h2>");
        out.println("<br>Here is a Example</br><br><%! public void jspInit()" +
              " { //whatever you want jspInit to do } %><html>...</html></br>" +
             "<p>");
        out.println("<br><a href=\"../java112/jspInit.jsp\">JSPInit</a></br>");
        out.println("<h2>JSP Translator</h2><br><p>Every JSP page is 
            "first translated to a servlet before going through other " +
            "lifecycle states. The container than validates the syntax for" +
            "correctness of jsp components used on the page. The translated" +
            "servlet file is than compiles into a java class file.</p></br>" +
            "<br><p>JSP translators generate" +  
            "standard Java code for a JSP page implementation class. " +
            "This class is essentially a servlet class wrapped with" +
            "features for JSP functionality.</p></br>");
        out.println("<p>Here's how the JSP Translator handles expressions...
        
        out.println("<a href=\"../java112/jspInit_jsp.java\"><h2>Best " +
            "Practices</h2></a>");
        out.println("<br>Best Practices for the jspInit()</br><br>Use" +
            "jspInit() method to cache static data</br>");
        out.println("<h2>Drawbacks</h2>");
        out.println("<br>When shouldn't you use the technology?</br>");
        out.println("<br>What shouldn't it be used for?</br>");
        out.println("</body>");
        out.println("</html>");
        out.close();
    }
}