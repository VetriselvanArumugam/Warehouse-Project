<!DOCTYPE html>
<html lang="en">
<head>
<title>Index</title>
<style>
body {
    background-image:
        url("https://img.freepik.com/premium-vector/workers-loading-goods-onto-trucks-warehouse_353206-432.jpg?w=900");
        background-height: 786px;
    background-width: 1366px;
    background-attachment: fixed;
    background-size: cover;
    font-family: Arial, Helvetica, sans-serif;
}
{
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #33333359;
}

.topnav a {
  float: left;
  display: block;
  color: #020202;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #1817175e;
  color: black;
}

.topnav a.active {
  background-color: #01e5f785;
  color: #020202;
}

.topnav .icon {
  display: none;
}

@media screen and (max-width: 600px) {
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
  }
}

@media screen and (max-width: 600px) {
  .topnav.responsive {position: relative;}
  .topnav.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
}

</style>
</head>
<body>
<div class="topnav" id="myTopnav">
  <a href="/adminlogin" class="active">Admin Login</a>
  <a href="/about">About</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <em class="fa fa-bars"></em>
  </a>
</div>

<div style="padding-left:16px; text-align:center;">
  <h2>Multi Warehousing Corporation</h2>
  <p > <em> Fast Is Fine But Accuracy Is Everyting </em> </p>
</div>

<script>
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
</script>
</body>
</html>
