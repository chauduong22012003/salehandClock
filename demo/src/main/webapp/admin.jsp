<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./dashboard/csses/bootstrap.min.css">
    <link rel="stylesheet" href="./dashboard/csses/font-awesome.css">
    <link rel="stylesheet" href="./dashboard/style.css">
    <link rel="stylesheet" href="./dashboard/csses/home.css">
    <title>Document</title>
</head>
<body>


	<%@ page import="demo.dao.*" %>
	<%@ page import="java.util.List" %>
	<%@ page import="demo.pojo.*" %>
	<%@ page import="java.util.Base64" %>
	
	<%
		
		
		
	
	%>
    <div class="main_container">
        <div class="menubar">
            <ul class="menu_list">
                
                <li class="item"><div style="height: 200px;" class="0 but_item">
                    <p>Shop</p>
                </div></li>
                <li class="item  mynav"><div data-value="home" class=" but_item active radio-option" onclick="handleClick(event)">
                    
                        <input class="radio" type="radio" name="menu" value="1">
                        Home
                    
                </div></li>
                <li class="item  mynav"><div data-value="Report" class=" but_item radio-option" onclick="handleClick(event)">
                    
                        <input class="radio" type="radio" name="menu" value="2">
                        Report
                    
                </div></li>
                <li class="item  mynav"><div data-value="Statistics" class=" but_item radio-option" onclick="handleClick(event)">
                    
                        <input class="radio" type="radio" name="menu" value="3">
                        Statistics
                    
                </div></li>
                <li class="item"><div data-value="managerProducts" class=" but_item radio-option managerProduct" onclick="handleClick(event)">
                    
                        <input class="radio" type="radio" name="menu" value="4">
                        Product Management
                        <div class="task_manager hide">
                            <div data-value="Add" class=" mynav but_item radio-option" onclick="handleClick(event)">
                    
                                <input class="radio" type="radio" name="menu" value="6">
                                Add
                            
                            </div>
                            <div data-value="Modify" class=" mynav but_item radio-option" onclick="handleClick(event)">
                    
                                <input class="radio" type="radio" name="menu" value="7">
                                Modify
                            
                            </div>
                        </div>
                        
                    
                </div></li>
                <li class="item  mynav"><div data-value="Bills" class=" but_item radio-option" onclick="handleClick(event)">
                    
                        <input class="radio" type="radio" name="menu" value="5">
                        Bills
                    
                </div></li>
                
                
            </ul>
        </div>
        <div style="overflow: auto;" class="display_content">
        
        
            <div  class="tranplay_content addForm ">
                <form style="width: 80%;height: 80%;" action="handProduct" method="post" enctype="multipart/form-data">
                	<input type="hidden" name="idAct" value="add">
                    <div class="mb-3 mt-3">
                      <label for="product_name" class="form-label">Product name:</label>
                      <input type="text" class="form-control" id="name_Product" placeholder="Enter name" name="product_name" required>
                    </div>
                    <div class="mb-3">
                        <label for="productPrice" class="form-label">Product Price:</label>
                        <input type="number" class="form-control" id="productPrice" name="productPrice" required>
                    </div>
                    
                    <div class="mb-3">
                        <label for="productQuan" class="form-label">Quantity:</label>
                        <input type="number" class="form-control" id="quantity" name="productQuan" required>
                    </div>
                    
                    
                    
                    <div class="mb-3">
                        <label for="date_up" class="form-label">Date upload:</label>
                        <input type="date" class="form-control" id="date_up" name="date_up" required>
                    </div>
                    
                    <div class="mb-3 mt-3">
                      <label for="material" class="form-label">material:</label>
                      <input type="text" class="form-control" id="material" placeholder="Enter material" name="material" required>
                    </div>
                    
                    <div class="mb-3">
                        <label for="productBranch" class="form-label">Branch:</label>
                        <input type="text" class="form-control" id="branch_product" list="branch_list" name="productBranch" required>
                        <datalist id="branch_list">
                            <option value="Rolex">
                            <option value="Omega">
                            <option value="Patek Philippe">
                          </datalist>
                    </div>
                    <div class="mb-3" >
                        <label for="description" class="form-label">Description:</label>
                        <textarea class="form-control" id="description" name="description" rows="4" cols="50"></textarea>
                    </div>
                    
                    
                    
                    <div class="mb-3" >
                        <label for="image" class="form-label">Select Image:</label>
                        <input  type="file" class="form-control" id="imgProduct" name="image" required style="background-color: transparent;border: none;">
                    </div>
                    
                    <div class="mb-3" >
                        <label for="img1" class="form-label">Select Image 1:</label>
                        <input  type="file" class="form-control" id="img1Product" name="img1" required style="background-color: transparent;border: none;">
                    </div>
                    
                    <div class="mb-3" >
                        <label for="img2" class="form-label">Select Image 2:</label>
                        <input  type="file" class="form-control" id="img2Product" name="img2" required style="background-color: transparent;border: none;">
                    </div>
                    <button style="margin-bottom: 30px;" type="submit" class="btn btn-primary">Add</button>
                  </form>
            </div>
            
            
            
            <div  class="tranplay_content modifyPage hide " >
                <table>
				  <thead>
				    <tr>
				      <th>image</th>
				      <th>ID</th>
				      <th>name</th>
				      <th>price</th>
				      <th>description</th>
				      <th>act</th>
				    </tr>
				  </thead>
				 <%--  <tbody>
				    <% for (Product product : prs) { %>
				      <tr>
				        <%
				        	String base64Image = Base64.getEncoder().encodeToString(product.getImage());
				        	String dataURL = "data:image/png;base64," + base64Image;
				        %>
				        <td><img src="<%= dataURL %>" alt="Ảnh sản phẩm" width="100" height="100"></td>
				        <td><%= product.getId() %></td>
				        <td><%= product.getName() %></td>
				        <td><%= product.getDescription() %></td>
				        <td><%= product.getPrice() %></td>
				        
				        <td>
				          <form id="deleteForm" action="handProduct" method="post"  >
				          	<input type="hidden" name="idAct" value="delete">
				          	<input type="hidden" name="idProDelete" value="<%= product.getId() %>">
				            <button type="button" class="site-btn" onclick="confirmSubmit()">Delete</button>
				          </form>
				          <form action="">
				            <button type="button" class="site-btn">Modify</button>
				          </form>
				        </td>
				      </tr>
				    <% } %>
				  </tbody> --%>
				</table>
            </div>
            
            
            
            
            
            
           
            
            
            
            
            
            
            
            
        </div>
    </div>

	<script>
		function confirmSubmit() {
		    var result = confirm("are you sure delete this product!");
		    if (result) {
		        // Gửi yêu cầu
		        document.getElementById("deleteForm").submit();
		    }
		}
	</script>

     <script src="./dashboard/index.js""></script>
    <script src="./dashboard/js/handCont.js"></script>
    <script src="./dashboard/js/bootstrap.min.js"></script>
</body>
</html>