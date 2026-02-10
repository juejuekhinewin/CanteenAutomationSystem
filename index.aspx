<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="CU_Canteen.index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link
  href="https://cdn.jsdelivr.net/npm/remixicon@4.3.0/fonts/remixicon.css"
  rel="stylesheet"
/>
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
/>
<link rel="stylesheet" href="index.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>
  <nav>
    <div class="nav__header">
      <div class="nav__logo">
        <a href="#" class="logo">
         
          <span>Fudo</span><br />
          

        </a>
      </div>
      <div class="nav__menu__btn" id="menu-btn">
        <i class="ri-menu-line"></i>
      </div>
    </div>
    <ul class="nav__links" id="nav-links">
     
       
     </ul>
    <div class="nav__btns">
             <button class="btn" ><a href="login.aspx">
         <span><i class="ri-login-box-line"></i></span>
         Login</a>
       </button>
       
              <button class="btn" ><a href="Signup.aspx">
  <span><i class="ri-login-box-line"></i></span>
  Register</a>
</button>
    </div>
  </nav>
  <div class="section__container header__container" id="home">
    <div class="header__image">
      <img src="images\—Pngtree—female student eating pie cartoon_4040610.png" alt="header" />
    </div>
    <div class="header__content">
      <div class="header__tag">
       
      </div>
      <h1>Enjoy with our university <span>Food</span>system</h1>
      <p class="section__description">
        Our job is to filling your tummy with delicious food and with healthy.
      </p>
      <div class="header__btns">
      
      
         
        
      </div>
    </div>
  </div>
</header>

<section class="section__container service__container" id="service">

  <h2 class="section__header">What We Serve</h2>
  <div class="service__grid">
    <div class="service__card">
      <img src="images/service-1 (1).jpg" alt="service" />
      <h4>Easy To Order</h4>
      <p>You only need a few steps in ordering food</p>
    </div>
    <div class="service__card">
      <img src="images/—Pngtree—flat dollar money icon coin_7589416.png" alt="service" />
      <h4>Easy Purchase</h4>
      <p>Payment that is always ontime even faster</p>
    </div>
    <div class="service__card">
      <img src="images/service-3 (1).jpg" alt="service" />
      <h4>Best Quality</h4>
      <p>Not only fast for us quality is also number one</p>
    </div>
  </div>
</section>
    

<script src="https://unpkg.com/scrollreveal"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script src="index.js"></script>
        </div>
    </form>
</body>
</html>
