const changeNavbar = () => {
  window.addEventListener('scroll', function() {
    let navbar = document.querySelector(".navbar")
    let collapse = document.querySelector(".collapse-container")
    let windowPosition = scrollY > 0

    navbar.classList.toggle('scrolling-active-navbar', windowPosition)
    collapse.classList.toggle('scrolling-active-collapase', windowPosition)
  })
}

export { changeNavbar };