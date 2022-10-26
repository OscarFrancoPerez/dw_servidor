document.addEventListener("DOMContentLoaded", function () {
	document.getElementById("password_form").addEventListener('submit', validateForm);
});

function validateForm(event) {
	event.preventDefault();
	var oldPassword = document.getElementById('old_password').value;
	var newPassword = document.getElementById('new_password').value;
	var verifying = document.getElementById('verifying').value;

	if (oldPassword.length == 0) {
		alert('Se requiere la contraseña para poder realizar la operación');
		return;
	}

	if (newPassword.length == 0) {
		alert('El campo de la contraseña nueva está vacio');
		return;
	}
	if (newPassword != verifying) {
		alert('La contraseña y su confirmación no coinciden.');
		return;
	}
	this.submit();
}