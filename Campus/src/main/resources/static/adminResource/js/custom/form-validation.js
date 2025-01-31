/**
 * 
 */
/**
 * 
 */
$(document).ready(function() {
    $('#saveBtn').click(function(event) {
        event.preventDefault(); // Prevent form submission

        // Clear previous errors
        $('.text-danger').hide();

        // Get form values
        var isValid = true;
        var firstName = $('#firstName').val().trim();
        var lastName = $('#lastName').val().trim();
        var gender = $('input[name="gender"]:checked').val();
        var mobileNumber = $('#mobileNumber').val().trim();
        var email = $('#email').val().trim();
        var username = $('#username').val().trim();
        var state = $('#stateName').val();
        var city = $('#cityName').val();
        var address = $('#address').val().trim();

        // Validate fields
        if (firstName === '') {
            $('#firstNameError').show();
            isValid = false;
        }
        if (lastName === '') {
            $('#lastNameError').show();
            isValid = false;
        }
        if (!gender) {
            $('#genderError').show();
            isValid = false;
        }
        if (mobileNumber === '' || isNaN(mobileNumber)) {
            $('#mobileNumberError').show();
            isValid = false;
        }
        if (!email || !validateEmail(email)) {
            $('#emailError').show();
            isValid = false;
        }
        if (username === '') {
            $('#usernameError').show();
            isValid = false;
        }
        if (!state) {
            $('#stateError').show();
            isValid = false;
        }
        if (!city) {
            $('#cityError').show();
            isValid = false;
        }
        if (address === '') {
            $('#addressError').show();
            isValid = false;
        }

        // If form is valid, submit the form
        if (isValid) {
            $('#myForm').off('submit').submit(); // Submit the form
        }
    });

    function validateEmail(email) {
        var pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return pattern.test(email);
    }
});