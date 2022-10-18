<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>

<html>


<head>

<title>List Users</title>
<!-- reference our style sheet -->

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css"/>


</head>

<body>
  
   <div id="wrapper">
   
        <div id="header">
   
              <h2>URM - User Relotional Manager</h2>
   
         </div>
   
   </div>
   
   <div id="container">
   
         <div id="content">
         
         <!-- put new button: Add customer -->
         <input type="button" value="Add User"
                onclick="window.location.href='showFormForAdd';return false;"
                class="add-button"/>
         
        
         
         <!-- add our html table here  -->
         
        
            <table>
                 <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Action</th>
                    
                    
                 </tr>
                 
                 <!-- loop over and print our customer  -->
                 <c:forEach var="tempCustomer" items="${customers}">
                 
                 <!-- construct an "update" link with customer id -->
                <c:url var="updateLink" value="/customer/showFormForUpdate">
                      <c:param name="customerId" value="${tempCustomer.id}" />
                </c:url>
                
                 <!-- construct an "delete" link with customer id -->
                <c:url var="deleteLink" value="/customer/delete">
                      <c:param name="customerId" value="${tempCustomer.id}" />
                </c:url>  
              
                 
                 
                 
                  <tr>
                    <td>${tempCustomer.firstName}</td>
                    <td>${tempCustomer.lastName}</td>
                    <td>${tempCustomer.email}</td>
                    
                    <td>
                    <!-- display the update link -->
                    <a href="${updateLink}">Update</a>
                    |
                    <a href="${deleteLink}"
                       onclick="if (!(confirm('Are you sure you want to delete this Aday ?')))return false">Delete</a>
                    
                    </td>
                    
                    
                 </tr>
                          
                 
                 
                 </c:forEach>
                 
         
         
         
            </table>
         
         
         </div>
   
   </div>


   

</body>





</html>