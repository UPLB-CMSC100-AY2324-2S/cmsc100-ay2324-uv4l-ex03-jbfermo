//Name: Jesella B. Fermo
//Student no: 2020-46008
//CMSC 100 UV-4L
//Exercise 3


// Function to validate if two passwords match:::::::::::::::::::::::::::::::
function validatePassword(password1, password2) {
    if (password1 !== password2) return false;
    if (password1.length < 8) return false;
    
    let hasLower = false;
    let hasUpper = false;
    let hasNumber = false;
    
    for (let i = 0; i < password1.length; i++) {
        const char = password1[i];
        if (char >= 'a' && char <= 'z') hasLower = true;
        else if (char >= 'A' && char <= 'Z') hasUpper = true;
        else if (!isNaN(char)) hasNumber = true;
    }
    
    return hasLower && hasUpper && hasNumber;
}

//Function to reverse the password:::::::::::::::::::::::::::::::::::::::::::
function reversePassword(password) {
    let reversedPassword = '';
    for (let i = password.length - 1; i >= 0; i--) {
        reversedPassword += password[i];
    }
    return reversedPassword;
}

// Function to store the password in an object:::::::::::::::::::::::::::::::
function storePassword(name, password1, password2) {
    const isValid = validatePassword(password1, password2);
    const newPassword = isValid ? reversePassword(password1) : password1;
    return { name, newpassword: newPassword };
}

//Test cases for store function::::::::::::::::::::::::::::::::::::::::::::::
console.log(storePassword("John", "Pass1234", "Pass1234")); // returns {name: "John", newpassword: "4321ssaP"}
console.log(storePassword("John", "Pass123", "Pass12345")); // returns {name: "John", newpassword: "Pass123"}

//Test cases for validate function:::::::::::::::::::::::::::::::::::::::::::
console.log(validatePassword("helloworld", "hello"));    // returns false
console.log(validatePassword("hello", "hello"));        // returns false
console.log(validatePassword("hello1234", "hello1234"));  // returns false
console.log(validatePassword("Hello1234", "Hello1234"));  // returns true
console.log(validatePassword("HELLO1234", "HELLO1234"));  // returns false
