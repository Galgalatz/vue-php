
<!---------------Add Modal------------>
<div class="modal" id="addModal" v-if="addModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">הוספת ליד</h5>
        <button type="button" class="closeModel" aria-label="Close">
            <span  @click="addModal=false;">&times;</span>
        </button>
     
      </div>
      <div class="modal-body" dir="rtl">
       <form novalidate="novalidate" autocomplete="off">
         <div class="col-8">
           <div class="form-group">
             <input type="text" name="name" id="name" class="form-control" v-model="newUser.name" placeholder="שם מלא:">
             <input type="email" name="email" id="email" class="form-control" v-model="newUser.email" placeholder="מייל:">
             <input type="tel" name="phone" id="phone" class="form-control" v-model="newUser.phone" placeholder="טלפון:">
             <input type="text" name="city" id="city" class="form-control" v-model="newUser.city" placeholder="עיר:">
           </div>

         </div>
      </form>
      </div>
      <div class="modal-footer" dir="rtl">
        <button type="button" class="btn btn-primary yes" @click="addModal=false; saveUser();">הוסף</button>
        <button type="button" class="btn btn-secondary no" @click="addModal=false;">ביטול</button>
      </div>
    </div>
  </div>
</div>

<!---------------Edit Modal------------>
<div class="modal" id="editModal" v-if="editModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">עריכת ליד</h5>
        <button type="button" class="closeModel" aria-label="Close">
            <span  @click="editModal=false;">&times;</span>
        </button>
     
      </div>
      <div class="modal-body" dir="rtl">
       <form novalidate="novalidate" autocomplete="off">
         <div class="col-8">
           <div class="form-group">
             <input type="text" name="name" id="name" class="form-control" v-model="clickedUser.name" placeholder="שם מלא:">
             <input type="email" name="email" id="email" class="form-control mt-3 mb-3" v-model="clickedUser.email" placeholder="מייל:">
             <input type="tel" name="phone" id="phone" class="form-control" v-model="clickedUser.phone" placeholder="טלפון:">
           </div>

         </div>
      </form>
      </div>
      <div class="modal-footer" dir="rtl">
        <button type="button" class="btn btn-warning yes" @click="editModal=false; updateUser();">אישור</button>
        <button type="button" class="btn btn-secondary no" @click="editModal=false;">ביטול</button>
      </div>
    </div>
  </div>
</div>

<!---------------Delete Modal------------>
<div class="modal" id="deleteModal" v-if="deleteModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" dir="rtl">האם אתה בטוח?</h5>
        <button type="button" class="closeModel" aria-label="Close">
            <span  @click="deleteModal=false;">&times;</span>
        </button>
     
      </div>
      <div class="modal-body" dir="rtl">
       <p class="text-right">מחיקת '{{ clickedUser.name }}'</p>
      </div>
      <div class="modal-footer" dir="rtl">
        <button type="button" class="btn btn-danger yes"  @click="deleteModal=false; deleteUser();">מחק</button>
        <button type="button" class="btn btn-secondary no" @click="deleteModal=false;">ביטול</button>
      </div>
    </div>
  </div>
</div>



</div>

<script src="js/script.js"></script>
</body>
</html>