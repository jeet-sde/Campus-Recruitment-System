function handleClickOfEdit(id) {
    if (!id) {
        alert('Invalid state ID');
        return;
    }

    var htp = new XMLHttpRequest();
    htp.onreadystatechange = function() {
        if (htp.readyState === 4) {
            if (htp.status === 200) {
                try {
                    const jsn = JSON.parse(htp.responseText);
                    if (!jsn || !jsn.id) {
                        alert('Invalid state data received');
                        return;
                    }

                    // Populate the form fields
                    $('#id').val(jsn.id);
                    $('#stateName').val(jsn.stateName);
                    $('#description').val(jsn.description);

                    // Update modal title and button text
                    $('#myModalLabel').html('Edit State');
                    $('#saveBtn').html('Update');

                    // Show the modal
                    $('#myModal').modal('show');
                } catch (error) {
                    console.error('Error parsing JSON:', error);
                    alert('Error processing state data');
                }
            } else {
                if (htp.status === 404) {
                    alert('State not found');
                } else if (htp.status === 500) {
                    alert('Server error occurred');
                } else {
                    alert('Error fetching state data');
                }
            }
        }
    };

    htp.open("GET", "/admin/Comp_findByState?id=" + encodeURIComponent(id), true);
    htp.send();
}