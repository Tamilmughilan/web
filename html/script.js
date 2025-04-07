
const monthDropdown = document.getElementById('expMonth');
const yearDropdown = document.getElementById('expYear');

for(let i = 1; i <= 12; i++){
    const opt = document.createElement('option');
    opt.value = i;
    opt.text = i.toString().padStart(2, '0');
    monthDropdown.appendChild(opt);
}

const currentYear = new Date().getFullYear();

for(let i = 0; i < 10; i++){
    const opt = document.createElement('option');
    opt.value = currentYear + i;
    opt.text = currentYear + i;
    yearDropdown.appendChild(opt);
}

document.getElementById("name").addEventListener("input", function () {
    if (/^[A-Za-z ]+$/.test(this.value)) {
      document.getElementById("ccnum").focus();
    }
  });
  
  document.getElementById("ccnum").addEventListener("input", function () {
    if (/^4\d{15}$/.test(this.value)) {
      document.getElementById("cvv").focus();
    }
  });
  
  document.getElementById("cvv").addEventListener("input", function () {
    if (/^\d{3}$/.test(this.value)) {
      document.getElementById("expMonth").focus();
    }
  });

  document.getElementById("paymentForm").addEventListener("submit", function (e) {
    e.preventDefault();
    let valid = true;
  
    const name = document.getElementById("name").value.trim();
    const ccnum = document.getElementById("ccnum").value.trim();
    const cvv = document.getElementById("cvv").value.trim();
    const month = parseInt(monthDropdown.value);
    const year = parseInt(yearDropdown.value);
  
    // Name
    if (!/^[A-Za-z ]+$/.test(name)) {
      valid = false;
      document.getElementById("nameError").textContent = "Only alphabets allowed";
    } else {
      document.getElementById("nameError").textContent = "";
    }
  
    // Credit Card
    if (!/^4\d{15}$/.test(ccnum)) {
      valid = false;
      document.getElementById("ccError").textContent = "Must start with 4 and be 16 digits (Visa)";
    } else {
      document.getElementById("ccError").textContent = "";
    }
  
    // CVV
    if (!/^\d{3}$/.test(cvv)) {
      valid = false;
      document.getElementById("cvvError").textContent = "CVV must be 3 digits";
    } else {
      document.getElementById("cvvError").textContent = "";
    }
  
    // Expiry Date
    const today = new Date();
    const expiry = new Date(year, month - 1);
    if (expiry <= today) {
      valid = false;
      document.getElementById("expError").textContent = "Expiry must be in the future";
    } else {
      document.getElementById("expError").textContent = "";
    }

    const result = document.getElementById("result");
  if (valid) {
    result.textContent = "Form submitted successfully!";
    result.className = "success";
  } else {
    result.textContent = "";
    result.className = "";
  }
});