
<?php
session_start();
if(isset($_SESSION["password"]))
{
	header('Location: index.php');
}

$title = 'התחברות';
?>

<?php include("layout/header.php"); ?>
      <div class="row">
        <div class="col-lg-4 col-md-6 col-9 m-auto p-0 box-log">
          <div class="header"></div>

            <div class="row">
                <div class="col-9 m-auto">
                  <div class="body-log">
                    <form novalidate="novalidate" autocomplete="off">
                     <input type="text" name="name" id="name" placeholder="שם משתמש" v-model.trim="user.name">
                     <span class="fa fa-user icon fa-sm"></span>
                     <input type="password" name="password" id="password" placeholder="סיסמא" v-model.trim="user.password">
                     <span class="fas fa-lock icon fa-sm"></span>
                     <div class="btn btn-primary btn-block" @click="loginSysetm()">התחבר</div>
                  </form>
                </div>
            </div>
            </div>

          </div>
        </div>

        <div class="row" v-if="error">
            <div class="col-9 col-sm-9 col-md-6 col-lg-5 col-xl-4 m-auto p-0">
             <div class="alert-danger text-center"><p>{{ error }}</p></div>
            </div>
          </div>
     
          <div class="loader" v-if="loader" :class="{'change-h-load': error != ''}"></div>
  <?php include("layout/footer.php"); ?>