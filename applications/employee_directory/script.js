function addEmployee() {
    let name = document.getElementById("empName").value;
    if (name.trim()) {
      let li = document.createElement("li");
      li.textContent = name;
      document.getElementById("empList").appendChild(li);
      document.getElementById("empName").value = "";
    }
  }
  