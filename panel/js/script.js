app = new Vue({
  el: '#root',
  data: {
    user: {
      name: '',
      password: ''
    },

    error: '',
    loader: false,
    addModal: false,
    editModal: false,
    deleteModal: false,
    errMsg: '',
    sucMsg: '',
    users: [],
    newUser: { name: '', email: '', phone: '', city: '' },
    clickedUser: {}

  },


  mounted: function () {
    this.getAllUsers();
  },

  updated: function () {
    this.hideMsg();
  },

  methods: {

    loginSysetm: function () {
      this.loader = true;
      if (this.user.name.toLowerCase() == 'admin' && this.user.password == 'GyN7Ftr5') {

        this.sendData();

      } else {

        setTimeout(function () {
          app.loader = false;
          app.error = 'שם משתמש /  סיסמא לא נכונים';
        }, 500);
      }
    },

    hideLoad: function () {
      return this.loader = false;
    },

    // AJAX PANEL LOGIN

    sendData: function () {
      let userLogin = this.toFormData(this.user);
      axios.post('check_login.php', userLogin).then(function (response) {
        // console.log(response);

        if (response.data.error) {
          app.loader = false;
          app.error = response.data.message;

        }

        if (!response.data.error) {
          // alert(response.data.message);
          window.location.href = 'index.php';
        }

      })
        .catch(function (error) {
          console.log(error);
        });
    },

    // API METHODS

    hideMsg: function () {
      if (this.errMsg || this.sucMsg) {
        setTimeout(function () {
          app.errMsg = '';
          app.sucMsg = '';
        }, 3950);
      }
    },


    // CRUD METHODS

    //get
    getAllUsers: function () {
      axios.get('http://localhost/landing_vue/panel/api.php?action=read').then(function (res) {
        console.log(res.data.users);
        if (res.data.error) {
          app.errMsg = res.data.message;
        } else {
          app.users = res.data.users;
        }
      });
    },

    //create
    saveUser: function () {
      // console.log(app.newUser);
      let newLead = app.toFormData(app.newUser);
      axios.post('http://localhost/landing_vue/panel/api.php?action=create', newLead).then(function (res) {
        //console.log(res);

        app.newUser = { name: '', email: '', phone: '', city: '' }; //reset

        if (res.data.error) {
          app.errMsg = res.data.message;
        } else {
          app.getAllUsers();

          setTimeout(function () {
            app.sucMsg = res.data.message;
          }, 200);
        }

      });

    },

    //update

    selectUser: function (user) {
      app.clickedUser = user;
    },

    updateUser: function () {
      let updateLead = app.toFormData(app.clickedUser);
      axios.post('http://localhost/landing_vue/panel/api.php?action=update', updateLead).then(function (res) {
        app.clickedUser = {};

        if (res.data.error) {
          app.errMsg = res.data.message;
        } else {
          app.sucMsg = res.data.message;
          app.getAllUsers();
        }

      });

    },


    //delete

    deleteUser: function () {
      let deletedLead = app.toFormData(app.clickedUser);
      axios.post('http://localhost/landing_vue/panel/api.php?action=delete', deletedLead).then(function (res) {

        app.clickedUser = {};
        if (res.data.error) {
          app.errMsg = res.data.message;
        } else {
          app.sucMsg = res.data.message;
          app.getAllUsers();
        }

      });

    },


    //PREAPARE FORMDATA OBJECT  
    toFormData: function (obj) {
      let formData = new FormData();
      for (let key in obj) {
        formData.append(key, obj[key]);
      }
      return formData;
    }
  }
})
