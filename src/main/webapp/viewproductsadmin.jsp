<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    <%@ include file="databaseconnect.jsp" %>
<!DOCTYPE html>




<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Stock Management System</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <!-- css -->
  <link href="https://fonts.googleapis.com/css?family=Noto+Serif:400,400italic,700|Open+Sans:300,400,600,700" rel="stylesheet">
  <link href="css/bootstrap.css" rel="stylesheet" />
  <link href="css/bootstrap-responsive.css" rel="stylesheet" />
  <link href="css/fancybox/jquery.fancybox.css" rel="stylesheet">
  <link href="css/jcarousel.css" rel="stylesheet" />
  <link href="css/flexslider.css" rel="stylesheet" />
  <link href="css/style.css" rel="stylesheet" />
  <!-- Theme skin -->
  <link href="skins/default.css" rel="stylesheet" />
  <!-- Fav and touch icons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png" />
  <link rel="shortcut icon" href="ico/favicon.png" />

  
</head>

<body>
  <div id="wrapper">
    <!-- toggle top area -->
    <div class="hidden-top">
      <div class="hidden-top-inner container">
        <div class="row">
          <div class="span12">
            <ul>
              <li><strong>We are available for any custom works this month</strong></li>
              <li>Main office: Stock Management System</li>
              <li>Call us <i class="icon-phone"></i> 789858585</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <!-- end toggle top area -->
    <!-- start header -->
    <header>
      <br>
        <div class="row">
          <div class="span4">
            <div class="logo">
              <a href="index.jsp">
              <h1 style="font-size:25px;color:#F03C02;font-weight:bold; margin-left:10% ;">Stock Management System</h1>
              
			  </a>
            </div>
          </div>
          <div class="span8">
            <div class="navbar navbar-static-top">
              <div class="navigation">
                <nav>
                  <ul class="nav topnav">
                    <li class=" active">
                     
                    </li>
                           <li><a href="addcategory.jsp">Add Category</a></li>
                            <li><a href="viewcategory.jsp">View Category</a></li>
                    
                   
                        <li><a href="addproducts.jsp">Add Products</a></li>
                        <li><a href="viewproductsadmin.jsp">ViewProducts</a></li>
                        
                         <li><a href="vieworders.jsp">View Orders</a></li>
                           <li><a href="viewfeedback.jsp">View Feedback</a></li>
                        
                        <li><a href="logout.jsp">Logout</a></li>
                        
                    
                    <li>
                    </li>
                  </ul>
                </nav>
              </div>
              <!-- end navigation -->
            </div>
          </div>
        </div>
      
    </header>
    <!-- end header -->
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2 style="font-size:25px;color:#ffbf00;font-weight:bold ;margin-left:-15% ;">ViweProduct</h2>
              
            </div>
          </div>
                  </div>
      </div>
    </section>
    <br><br>
    <div style=margin:2%>
     <div table style=text-align:center;color:#000000;>
    
    <%
    try{
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from addproduct");
    out.println("<table border=3 width=88%  >");
    		  
    out.println("<tr>");
    out.println("<th>"+"Id"+"</th>"+"<th>"+"Category"+"</th>"+"<th>"+"Title"+"</th>"+"<th>"+"Description"+"</th>"+"<th>"+"Single ProductCost"+"</th>"+"<th>"+"Quantity"+"</th>"+"<th>"+"Stock"+"</th>"+"<th>"+"Product Status"+"</th>"+"<th>"+" Available"+"</th>"+"<th>"+"UnAvailable"+"</th>"+"<th>"+"Edit"+"</th>"+"<th>"+"Delete"+"</th>");

    out.println("</tr>");
    while(rs.next()){
        out.println("<tr>");
        out.println("<td>"+rs.getInt(1)+"</td>"+"<td>"+rs.getString(2)+"</td>"+"<td>"+rs.getString(3)+"</td>"+"<td>"+rs.getString(4)+"</td>"+"<td>"+rs.getDouble(5)+"</td>"+"<td>"+rs.getString(6)+"</td>"+"<td>"+rs.getInt(7)+"</td>"+"<td>"+rs.getString(8)+"</td>");
        out.println("<td>"+"<a href='accept.jsp?id="+rs.getInt(1)+"' ><h8>Available</h8></a></td>");
        out.println("<td>"+"<a href='reject.jsp?id="+rs.getInt(1)+"'><h8>Unavailable</h8></a></td>");
        out.println("<td>"+"<a href='editproducts.jsp?id="+rs.getInt(1)+"'><h8>Edit</h8></a></td>");
        out.println("<td>"+"<a href='deleteproducts.jsp?id="+rs.getInt(1)+"'><h8>Delete</h8></a></td>");

        out.println("</tr>");

    }
    out.println("</table>");

    }
    catch(Exception e){
    	e.printStackTrace();
    }
    %>
    </div>
    </div>
  <br><br><br><br><br><br><br><br>
    
    <footer>
     
        <div class="container">
          <div class="row">
            <div class="span6">
              <div class="copyright">
                <p>
                  <span>&copy; 2022 - All right reserved.</span>
                </p>
               
              </div>
            
            
          </div>
        </div>
      </div>
    </footer>
  </div>
  <a href="#" class="scrollup"><i class="icon-chevron-up icon-square icon-32 active"></i></a>
  <!-- javascript
    ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="js/jquery.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/bootstrap.js"></script>
  <script src="js/jcarousel/jquery.jcarousel.min.js"></script>
  <script src="js/jquery.fancybox.pack.js"></script>
  <script src="js/jquery.fancybox-media.js"></script>
  <script src="js/google-code-prettify/prettify.js"></script>
  <script src="js/portfolio/jquery.quicksand.js"></script>
  <script src="js/portfolio/setting.js"></script>
  <script src="js/jquery.flexslider.js"></script>
  <script src="js/jquery.nivo.slider.js"></script>
  <script src="js/modernizr.custom.js"></script>
  <script src="js/jquery.ba-cond.min.js"></script>
  <script src="js/jquery.slitslider.js"></script>
  <script src="js/animate.js"></script>

  <!-- Template Custom JavaScript File -->
  <script src="js/custom.js"></script>

</body>
</html>