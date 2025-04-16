function addEntry() {
    let name = document.getElementById("name").value;
    let marks = document.getElementById("marks").value;
    if (name && marks) {
      let table = document.getElementById("markTable");
      let row = table.insertRow();
      row.insertCell(0).innerText = name;
      row.insertCell(1).innerText = marks;
      document.getElementById("name").value = "";
      document.getElementById("marks").value = "";
    }
  }
  