<%@ page import="java.util.*, com.inventory.model.Product" %>
<%
List<Product> products = (List<Product>) request.getAttribute("products");
%>

<table border="1">
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Category</th>
    <th>Quantity</th>
    <th>Price</th>
    <th>Action</th>
</tr>

<% for(Product p : products) { %>
<tr>
    <td><%= p.getId() %></td>
    <td><%= p.getName() %></td>
    <td><%= p.getCategory() %></td>
    <td><%= p.getQuantity() %></td>
    <td><%= p.getPrice() %></td>
    <td>
        <a href="editProduct?id=<%= p.getId() %>">Edit</a>
        <a href="deleteProduct?id=<%= p.getId() %>">Delete</a>
    </td>
</tr>
<% } %>
</table>
