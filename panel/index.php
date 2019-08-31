<?php
session_start();
if(!isset($_SESSION["password"]))
{
	header('Location: login.php');
}

$title = 'ניהול';

?>

<?php include("layout/header.php"); ?>

<div class="row">
<div class="col-11 m-auto pb-3">
  <h4 class="text-center">טבלת לידים</h4>
  <div class="btn btn-primary btn-sm float-right" @click="addModal=true;">+ הוסף</div>
</div>
</div>


<div class="row">
<div class="col-11 m-auto" dir="rtl">
  <p class="alert alert-success p-2 text-right" v-if="sucMsg" :class="{'fade-out' : sucMsg}">{{ sucMsg }}</p>
  <p class="alert alert-danger p-2 text-right" v-if="errMsg" :class="{'fade-out' : errMsg}">{{ errMsg }}</p>
</div>
</div>

    <div class="row">
      <div class="col-12 m-auto">
      <table class="table table-striped mb-4" dir="rtl">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">שם</th>
      <th class="text-center" scope="col">מייל</th>
      <th class="text-center" scope="col">טלפון</th>
      <th class="text-center" scope="col">עיר</th>
      <th class="text-center" scope="col">תקנון</th>
      <th class="text-center" scope="col">דברי פרסום</th>
      <th class="text-center" scope="col">תאריך</th>
      <th scope="col">עריכה</th>
      <th scope="col">מחיקה</th>
    </tr>
  </thead>
  <tbody>
    <tr v-for="user in users">
      <th scope="row">{{ user.id }}</th>
      <td >{{ user.name }}</td>
      <td>{{ user.email }}</td>
      <td>{{ user.phone }}</td>
      <td>{{ user.city }}</td>
      <td>{{ user.agree }}</td>
      <td>{{ user.divur }}</td>
      <td>{{ user.date }}</td>
      <td><div class="fas fa-pencil-alt" @click="editModal=true; selectUser(user)"></div></td>
      <td><div class="fas fa-trash-alt"  @click="deleteModal=true; selectUser(user)"></div></td>
    </tr>
  </tbody>
</table>

      </div>
    </div>
  
  <?php include("layout/footer.php"); ?>
</body>
</html>