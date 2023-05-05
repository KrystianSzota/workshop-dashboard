// function emptyPassword(){
//     var password = document.getElementById('inputPassword');
//     if (password.value === null){
//         alert("Hasło nie może być puste");
//     }
// }

function matchPassword() {
    var input = document.getElementById('inputPasswordConfirm');
    if (input.value != document.getElementById('inputPassword').value) {
        input.setCustomValidity('Hasła nie są identyczne!');
    } else {
        input.setCustomValidity('');
        alert("Konto zostało utworzone");
    }
}