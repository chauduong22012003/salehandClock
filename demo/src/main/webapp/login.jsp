<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Transparent Login Form UI</title>
    <link rel="stylesheet" href="./loginform/style.css">
   <script src="https://kit.fontawesome.com/a076d05399.js"></script>
  </head>
  <body>
    <div class="bg-img">
      <div class="content sign_in">
        <header>Login Form</header>
        <form class="form sign_in" action="accServlet" method="post">
          <div class="field">
            <span class="fa fa-user"></span>
            <input type="text" required placeholder="Email or Phone" name="mail">
          </div>
          <div class="field space">
            <span class="fa fa-lock"></span>
            <input type="password" class="pass-key" required placeholder="Password" name="pass">
            <span class="show">SHOW</span>
          </div>
          <div class="pass">
            <a href="#">Forgot Password?</a>
          </div>
          <input type="hidden" name="id_act" value="sign_in">
          <div class="field">
            <input type="submit" value="LOGIN">
          </div>
        </form>
        <div class="login">Or login with</div>
        <div class="links">
          <div class="facebook">
            <i class="fab fa-facebook-f"><span>Facebook</span></i>
          </div>
          <div class="instagram">
            <i class="fab fa-instagram"><span>Instagram</span></i>
          </div>
        </div>
        <div class="signup">Don't have account?
          <a onclick="transformtoSignUp(event)" href="#">Signup Now</a>
        </div>
      </div>


      <div class="content sign_up hide">
        <header>Regisster</header>
        <form  action="accServlet" method="post">
        <div class="field">
            <span class="fa fa-user"></span>
            <input type="text" required placeholder="username" name="username">
          </div>
          <div class="field">
            <span class="fa fa-user"></span>
            <input type="text" required placeholder="Email" name="mail">
          </div>
          <div class="field">
            <span class="fa fa-user"></span>
            <input type="text" required placeholder="phone number" name="phone">
          </div>
          <div class="field space">
            <span class="fa fa-lock"></span>
            <input type="password" class="pass-key" required placeholder="Password" name="pass">
            <span class="show">SHOW</span>
          </div>
          <div style="margin-bottom: 30px;" class="field space">
            <span class="fa fa-lock"></span>
            <input type="password" class="pass-key" required placeholder="Enter password again" name="acceptPass">
            <span class="show">SHOW</span>
          </div>
          <input type="hidden" name="id_act" value="sign_up">
          <div class="field">
            <input type="submit" value="SIGN UP">
          </div>
        </form>
        <div class="login">Or login with</div>
        <div class="links">
          <div class="facebook">
            <i class="fab fa-facebook-f"><span>Facebook</span></i>
          </div>
          <div class="instagram">
            <i class="fab fa-instagram"><span>Instagram</span></i>
          </div>
        </div>
        <div class="signup">Do you have a account?
          <a onclick="transformtoSignIn(event)" href="#">Login Now</a>
        </div>
      </div>
    </div>

    <script>
      const pass_field = document.querySelector('.pass-key');
      const showBtn = document.querySelector('.show');
      showBtn.addEventListener('click', function(){
       if(pass_field.type === "password"){
         pass_field.type = "text";
         showBtn.textContent = "HIDE";
         showBtn.style.color = "#3498db";
       }else{
         pass_field.type = "password";
         showBtn.textContent = "SHOW";
         showBtn.style.color = "#222";
       }
      });


      function transformtoSignUp(event){
        let e=event.target
        let forms=document.querySelectorAll('.content')
        forms.forEach(i=>{
          if(i.classList.contains('hide')){}
          else{
            i.classList.add('hide')
          }
        })
        let signIn=document.querySelector('.sign_in')
        let signUp=document.querySelector('.sign_up')
        signIn.classList.add('hide');
        signUp.classList.remove('hide')
      }
      function transformtoSignIn(event){
        let e=event.target
        let forms=document.querySelectorAll('.content')
        forms.forEach(i=>{
          if(i.classList.contains('hide')){}
          else{
            i.classList.add('hide')
          }
        })
        let signIn=document.querySelector('.sign_in')
        let signUp=document.querySelector('.sign_up')
        signIn.classList.remove('hide')
        signUp.classList.add('hide');
        
      }
    </script>


  </body>
</html>
