function closeModal() {
    document.getElementById("myModal").style.display = "none";
    document.getElementById("myForm").reset(); // Reset the form fields
}

function handleClickOfEdit(id) {
    var htp = new XMLHttpRequest();

    htp.onreadystatechange = function() {
        if (htp.readyState === 4 && htp.status === 200) {
            const jsn = JSON.parse(htp.responseText);

            // Populate the form fields in the modal with the returned data
            $('#id').val(jsn.id);
            $('#name').val(jsn.name);
            $('#address').val(jsn.address);
            $('#mobileNumber').val(jsn.mobileNumber);
            $('#email').val(jsn.email);
            $('#status').prop('checked', jsn.status);  // Assuming status is a boolean

            // Change modal title and button text for edit
            $('#myModalLabel').html('Edit Company');
            $('#saveBtn').html('Update');

            // Open the modal
            $('#myModal').modal('show');
        }
    }

    // Open the request to get company details by id
    htp.open("GET", "/admin/findByCompany?id=" + id, true);
    htp.send();
}
