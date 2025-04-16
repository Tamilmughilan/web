function addBook() {
    let bookName = document.getElementById("book").value;
    if (bookName.trim() !== "") {
      let li = document.createElement("li");
      li.textContent = bookName;
      document.getElementById("bookList").appendChild(li);
      document.getElementById("book").value = "";
    }
  }
  