<html>
  <head>
    <title>Request - getParameter()</title>
  </head>

  <body>
    <h2>Request - getParameter()</h2>
        getParameter()<br /><br />
    <h2>Description</h2>
        (Oracle Description) Returns the (string) value of a request parameter as a String, or null if the parameter does not exist.<br />
        (Human Description) Returns the characters entered on the form. If form field does not exist, it returns an empty value. <br /><br />
    <h2>Syntax</h2>
    <h4>HTML or JSP</h4>
        <p>&lt;font face="verdana" size="2px"&gt; <br />
           &nbsp; &nbsp;&lt;form action="sum" method="post"&gt; <br />
           &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Number1:&lt;input type="text" name="n1"&gt;<br />
           &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Number2:&lt;input type="text" name="n2"&gt;<br />
           &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;input type="submit" value="Calculate Sum"&gt; <br />
           &nbsp; &nbsp;&lt;/form&gt; <br />
        &lt;/font&gt;
        <p><br />
    <h4>Servlet</h4>
        <p>
            @WebServlet(<br />
            &nbsp;&nbsp;name = "sumOfTwoNumbers", <br />
            &nbsp;&nbsp;urlPatterns = { "/sum" }<br />
            )<br />
             <br />
            public class OngetParameter extends HttpServlet  <br />
            {<br />
            &nbsp;&nbsp;protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException<br />
            &nbsp;&nbsp;{<br />
            &nbsp;&nbsp;&nbsp;&nbsp;PrintWriter pw=res.getWriter();<br />
            &nbsp;&nbsp;&nbsp;&nbsp;res.setContentType("text/html");<br />
             <br />
            &nbsp;&nbsp;&nbsp;&nbsp;String n1=req.getParameter("n1");<br />
            &nbsp;&nbsp;&nbsp;&nbsp;String n2=req.getParameter("n2");<br />
             <br />
            &nbsp;&nbsp;&nbsp;&nbsp;int result=Integer.parseInt(n1)+Integer.parseInt(n2);	<br />	
            &nbsp;&nbsp;&nbsp;&nbsp;pw.println("Sum of two numbers " +result);<br />
            &nbsp;&nbsp;&nbsp;&nbsp;pw.close();<br />
             <br />
            &nbsp;&nbsp;}<br />
             <br />
            }<br />
        </p><br />
    <h4>web.xml</h4>
    <p>
    &lt;web-app><br />
 <br />
    &nbsp;&nbsp;&lt;servlet><br />
       &nbsp;&nbsp;&nbsp;&nbsp;&lt;servlet-name>sumOfTwoNumbers&lt;/servlet-name><br />
       &nbsp;&nbsp;&nbsp;&nbsp;&lt;servlet-class>java112.project2.OngetParameter&lt;/servlet-class><br />
    &nbsp;&nbsp;&lt;/servlet><br />
 <br />
    &nbsp;&nbsp;&lt;servlet-mapping><br />
       &nbsp;&nbsp;&nbsp;&nbsp;&lt;servlet-name>sumOfTwoNumbers&lt;/servlet-name><br />
       &nbsp;&nbsp;&nbsp;&nbsp;&lt;url-pattern>/sum&lt;/url-pattern><br />
    &nbsp;&nbsp;&lt;/servlet-mapping><br />
 <br />
    &nbsp;&nbsp;&lt;welcome-file-list><br />
       &nbsp;&nbsp;&nbsp;&nbsp;&lt;welcome-file>TeamScriptingTemplate.jsp&lt;/welcome-file><br />
    &nbsp;&nbsp;&lt;/welcome-file-list><br />
 <br />
    &lt;/web-app><br />
    </p><br /><br />


    <h2>Example</h2>
        Link to a practical example in the form of working code.<br />
        <font face="verdana" size="2px">
            <form action="sum" method="post">
                Number1:<input type="text" name="n1"><br>
                Number2:<input type="text" name="n2"><br>
                <input type="submit" value="Calculate Sum">
            </form>
        </font><br /><br />
    <h2>JSP Translator</h2>
        N/A<br /><br />
    <h2>Best Practices</h2>
        You should only use this method when you are sure the parameter has only one value. <br />
        If more than one value is entered, it will throw an exception <br /><br />
     <h2>Drawbacks</h2>
        When shouldn't you use the technology?<br />
        What shouldn't it be used for?<br />
        If you use this method with a multivalued parameter, the value returned is equal to the first value in the array returned by getParameterValues. <br />
        Can only return a String <br /> 
        This is used from client to server and not only server. <br />
  </body>
</html>