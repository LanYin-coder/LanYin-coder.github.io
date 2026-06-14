const header = document.querySelector(".site-header");
const year = document.querySelector("#year");

const updateHeader = () => {
  header.dataset.elevated = window.scrollY > 24 ? "true" : "false";
};

year.textContent = new Date().getFullYear();
updateHeader();
window.addEventListener("scroll", updateHeader, { passive: true });
