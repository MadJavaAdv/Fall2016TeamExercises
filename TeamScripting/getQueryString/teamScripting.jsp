<html>
    <head>
        <title>Eric & Ben</title>
    </head>

    <body>
        <h2>Concept Name</h2>
        Request - getQueryString()<br />

        <h2>Description</h2>
        Grabs the string at the end of the web page's address after the '?'<br /><br />
        This method is defined in HttpServletRequest interface from javax.servlet.http package.<br />
        The getQueryString() method returns the query string that is contained in the request URL after the path.<br />
        Returns <code>null</code> if the URL does not have a query string.<br />
        Filled by the user in FORM fields (text input, checkboxes, etc...) and sent to the server.<br />

        <h2>Syntax</h2>
        <code>String str = request.getQueryString();</code><br />

        <h2>Example</h2>
        Link to a practical example in the form of working code.<br />
        <a href="/java112/simpleForm.html">Demo</a>

        <h2>JSP Translator</h2>

        <xmp>
        public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
            throws java.io.IOException, javax.servlet.ServletException {

            final javax.servlet.jsp.PageContext pageContext;
            javax.servlet.http.HttpSession session = null;
            final javax.servlet.ServletContext application;
            final javax.servlet.ServletConfig config;
            javax.servlet.jsp.JspWriter out = null;
            final java.lang.Object page = this;
            javax.servlet.jsp.JspWriter _jspx_out = null;
            javax.servlet.jsp.PageContext _jspx_page_context = null;


            try {
                response.setContentType("text/html");
                pageContext = _jspxFactory.getPageContext(this, request, response,
                null, true, 8192, true);
                _jspx_page_context = pageContext;
                application = pageContext.getServletContext();
                config = pageContext.getServletConfig();
                session = pageContext.getSession();
                out = pageContext.getOut();
                _jspx_out = out;

                out.write("<html>\n");
                out.write("    <head></head>\n");
                out.write("    <body>\n");
                out.write("        ");
                out.print( request.getQueryString() );
                out.write("\n");
                out.write("    </body>\n");
                out.write("</html>");

            } catch (java.lang.Throwable t) {
                if (!(t instanceof javax.servlet.jsp.SkipPageException)){
                    out = _jspx_out;
                    if (out != null && out.getBufferSize() != 0)
                    try {
                        if (response.isCommitted()) {
                            out.flush();
                        } else {
                            out.clearBuffer();
                        }
                    } catch (java.io.IOException e) {}
                    if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
                    else throw new ServletException(t);
                }
            } finally {
                _jspxFactory.releasePageContext(_jspx_page_context);
            }
        }
        </xmp>

        <h2>Best Practices</h2>
        Check for <code>null</code> values and handle them appropriately.<br />
        Don't use for sensitive data (shouldn't be using GET for this anyways), only used to retrieve data.<br />
        Supported by all browsers.<br />

        <h2>Drawbacks</h2>
        Character limit for the query string (~255).<br />
        Different browsers can have different limits.<br />
        Have to parse the query string in order to get the parameters. Split on the '&'.<br />
        All attributes and values are visible to the user. Can manipulate data within the URL.<br />
    </body>
</html>