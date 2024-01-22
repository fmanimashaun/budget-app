document.addEventListener("turbo:load", () => {
  console.log("Page loaded with Turbo Drive");

  const menuBtn = document.querySelector("#menu-btn");
  const content = document.querySelector("#content");
  const menuBar = document.querySelector("#menubar");
  const avatar = document.querySelector("#avatar");
  const toast = document.querySelector("#toast");

  var img = new Image();

  img.src = "https://avatar.iran.liara.run/public";

  img.onload = function () {
    avatar.src = img.src;
  };
  img.onerror = function () {
    avatar.src = avatar.dataset.avatarPath;
  };

  // add event listener
  menuBtn.addEventListener("click", () => {
    content.classList.toggle("off-canvas");
    menuBar.classList.toggle("close");
  });

  // show toast if it has a message
  if (toast.innerText.trim() !== "") {
    toast.classList.remove("hidden");
    setTimeout(() => {
      toast.classList.add("hidden");
    }, 5000); // The toast will be hidden after 5 seconds
  }
});
