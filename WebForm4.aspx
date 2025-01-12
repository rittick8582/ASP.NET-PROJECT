<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication1.WebForm4" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Sidebar</title>
    <style>
        * {
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-image:url("Brown-Wallpaper-HD-Background-Texture.jpg");
}

.sidebar {
    width: 250px;
    height: 100%;
    background: #333;
    color: #fff;
    position: fixed;
    left: -250px; /* Hidden by default */
    transition: left 0.3s ease;
    z-index: 1000;
}

.sidebar-header {
    padding: 20px;
    text-align: center;
}

.sidebar-menu {
    list-style: none;
    padding: 0;
}

.sidebar-menu li {
    padding: 15px;
}

.sidebar-menu a {
    color: #fff;
    text-decoration: none;
}

.sidebar-menu a:hover {
    background: #575757;
}

.main-content {
    margin-left: 0;
    padding: 20px;
}

.toggle-btn {
    font-size: 24px;
    cursor: pointer;
    margin-bottom: 20px;
}

@media (min-width: 768px) {
    .sidebar {
        left: 0; /* Show sidebar on larger screens */
    }
    .main-content {
        margin-left: 250px; /* Adjust main content */
    }
}
* Style the navigation menu */
.navbar {
  overflow: hidden;
  background-color: #333;
}

/* Style the links inside the navigation bar */
.navbar a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}

/* Change the color of links on hover */
.navbar a:hover {
  background-color: #ddd;
  color: black;
}

/* Style the dropdown container */
.dropdown {
  float: left;
  overflow: hidden;
}

/* Style the dropdown button */
.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 20px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

/* Style the dropdown content (hidden by default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #333;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Style the links inside the dropdown */
.dropdown-content a {
  float: none;
  color: white;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {
  background-color: #ddd;
  color: black;
}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
  display: block;
}
.dropbtn:hover {
  background-color: green; /* Darker Green */
  font-weight:bold;
}
.clsbtn:hover
{
     background-color: red;
     font-weight:bold;
}
h1, p 
{
    color:White;
}
h2:hover
{
    color:Lime;
}
p:hover
{
  color:Lime;  
}
h1:hover
{
  color:Lime;  
}
    </style>
</head>
<body>
    <div class="sidebar" id="sidebar">
        <div class="sidebar-header">
            <h2>DashBoard</h2>
        </div>
        <ul class="sidebar-menu">
            <div class="dropdown">
    <button class="dropbtn">Update
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="webForm7.aspx">profile</a>
      <%--<a href="insert1.html">Marks Record</a>--%>
    </div>
  </div> <br /><br /><br /><br />
  <div class="dropdown">
    <button class="dropbtn">Display
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="webForm8.aspx">Issue & Return Book</a>
     <%-- <a href="search1.html">Marks Record</a>--%>
    </div>
  </div> <br /><br /><br /><br />
    <div class="clsbtn">
            <li><a href="WebForm2.aspx" class="logout">Logout</a></li>
        </ul>
        </div>
    </div>
<%--  <div class="dropdown">
    <button class="dropbtn">Insert
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="update.html">Student Record</a>
      <a href="update1.html">Marks Record</a>
    </div>
  </div> <br /><br /><br /><br />
  <div class="dropdown">
    <button class="dropbtn">Delete
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="delete.html">Student Record</a>
      <a href="delete1.html">Marks Record</a>
    </div>
  </div>--%> <br /><br /><br /><br />

    <div class="main-content">
        <button class="toggle-btn" onclick="toggleSidebar()">☰</button>
        <h1>Welcome to Student</h1>
        <p>Student Corner.</p>
    </div>
    
    <script>
    function toggleSidebar() {
    const sidebar = document.getElementById('sidebar');
    if (sidebar.style.left === '0px') {
        sidebar.style.left = '-250px'; // Hide
    } else {
        sidebar.style.left = '0px'; // Show
    }
}
    </script>
</body>
</html>
