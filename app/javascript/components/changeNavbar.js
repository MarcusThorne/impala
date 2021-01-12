const changeNavbar = () => {
  window.addEventListener('scroll', function() {
    let navbar = document.querySelector(".navbar-container")
    let collapse = document.querySelector(".navbar-collapse")
    let windowPosition = scrollY > 0
    
    navbar.classList.toggle('scrolling-active', windowPosition)
    collapse.classList.toggle('scrolling-active-collapase', windowPosition)
    console.log("Scrolling Active")
  })
}

export { changeNavbar };