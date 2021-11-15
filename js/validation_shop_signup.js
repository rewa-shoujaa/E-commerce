// Wait for the DOM to be ready
$(function() {
  // Initialize form validation on the registration form.
  // It has the name attribute "registration"
  $("form[name='signup']").validate({
    // Specify validation rules
    rules: {
      // The key name on the left side is the name attribute
      // of an input field. Validation rules are defined
      // on the right side
      shopname: "required",
	  address:"required",
	  phonenumber:{
		  required: true,
		  number: true,
		  minlength: 10
	  },
      signupemail: {
        required: true,
        // Specify that email should be validated
        // by the built-in "email" rule
        email: true
      },
      signuppassword: {
        required: true,
        minlength: 5
      }
    },
    // Specify validation error messages
    messages: {
      shopname: "Please enter your shop name",
	  address: "Please enter your address",
	  phonenumber:{
		  required: "Please enter your phone number",
		  number: "Your phone number should only consist of numbers",
		  minlength: "phone number should be at least 10 digits e.g. 96170******"
		  
	  },
      signuppassword: {
        required: "Please provide a password",
        minlength: "Your password must be at least 5 characters long"
      },
      signupemail: "Please enter a valid email address"
    },
    // Make sure the form is submitted to the destination defined
    // in the "action" attribute of the form when valid
    submitHandler: function(form) {
      form.submit();
    }
  });
});