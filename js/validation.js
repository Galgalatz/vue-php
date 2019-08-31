app = new Vue({
  el: '#app',
  data: {
    email: '',
    name: '',
    phone: '',
    agree: false,
    divur: false,
    city: 0,
    cities: '',
    errMsgEmail: '',
    errMsgName: '',
    errMsgPhone: '',
    errMsgCity: '',
    errMsgAgree: '',
    lead: { name: '', email: '', phone: '', city: '', agree: '', divur: false },
    done: false,
    tnx: false,
    form: true,

    //email regex
    regEmail: /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,24}))$/,
    regPhone: /^(?:0(?!(5|7))(?:2|3|4|8|9))(?:-?\d){7}$|^(0(?=5|7)(?:-?\d){9})$/
  },

  computed: {
    isDisabled: function () {
      if (this.lead.name && this.lead.email && this.lead.phone && this.lead.city && this.lead.agree) {
        return true;
      } else return false;
    }

  },

  mounted: function () {
    this.getCities();
  },

  methods: {

    // get cities from table cities (dropdown)
    getCities: function () {
      axios.get('ajaxCity.php', {
        params: {
          request: 'city',
        }
      })
        .then(function (response) {
          app.cities = response.data;
          app.city = 0;
          // console.log(response.data);
        });
    },

    //CITY VALIDATION
    checkCity: function (arg) {

      if (app.city == 0) {
        app.errMsgCity = '* City is required';
        return false;

      } else {
        app.errMsgCity = '';
        this.lead.city = this.city;
        return true;
      }

    },

    // AGREE VALIDATION
    changeAgree: function () {

      if (this.agree == false) {
        app.errMsgAgree = '* Accept terms';
        return false;
      } else {
        app.errMsgAgree = '';
        this.lead.agree = this.agree;
        return true;
      }

    },

    //CHECK DIVUR CHECKBOX
    changeDivur: function () {
      this.divur != this.divur;
      this.lead.divur = this.divur;
    },

    //NAME VALIDATION
    isNameValid: function (arg) {

      if (this.name == '') {
        app.errMsgName = '* Name is required';
        return false;
      }

      else if (this.name.length < 2) {
        app.errMsgName = '* Invalid Name';
        return false;
      }

      else if (this.name.length >= 2 && this.name) {
        app.errMsgName = '';
        this.lead.name = this.name;
        this.done = true;
        return true;
      }
    },

    //EMAIL VALIDATION
    isEmailValid: function (arg) {

      if (this.email == '') {
        app.errMsgEmail = '* Email is required';
        return false;
      }

      else if (!this.regEmail.test(this.email)) {
        app.errMsgEmail = '* Invalid Email';
        return false;
      }

      else if (this.regEmail.test(this.email) && this.email) {
        app.errMsgEmail = '';
        this.lead.email = this.email;
        return true;
      }
    },

    //PHONE VALIDATION
    isPhoneValid: function (arg) {
      if (this.phone == '') {
        app.errMsgPhone = '* Phone is required';
        return false;
      }

      else if (!this.regPhone.test(this.phone)) {
        app.errMsgPhone = '* Invalid Phone';
        return false;
      }

      else if (this.regPhone.test(this.phone) && this.phone) {
        app.errMsgPhone = '';
        this.lead.phone = this.phone;
        return true;
      }
    },

    handler: function (arg1, arg2, arg3, arg4, arg5) {
      this.isNameValid(arg1);
      this.isEmailValid(arg2);
      this.isPhoneValid(arg3);
      this.checkCity(arg4);
      this.changeAgree(arg5);

      if (app.isDisabled) {
        app.sendData();
      }
    },

    //SEND DATA
    sendData: function () {
      let leadForm = app.toFormData(app.lead);
      axios.post('server.php', leadForm).then(function (response) {

        if (response.data.status == 0 && response.data.error) {
          if (app.errMsgEmail == '' && app.errMsgName == '' && app.errMsgPhone == '' && app.errMsgCity == '' && app.errMsgAgree == '') {
            alert(response.data.message);
          }
        }


        else if (response.data.status == 1 && response.data.error) {
          if (app.errMsgEmail == '' && app.errMsgName == '' && app.errMsgPhone == '' && app.errMsgCity == '' && app.errMsgAgree == '') {
            alert(response.data.message);
          }
        }

        else if (!response.data.error) {
          app.form = false;
          app.tnx = true;
        }

      })
        .catch(function (error) {
          console.log(error);
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

