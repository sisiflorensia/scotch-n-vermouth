const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.remove('navbar-lewagon');
        navbar.classList.add('navbar-lewagon-light');
        // navbar.classList.remove('logo');
        // navbar.classList.add('logo-small');
      } else {
        navbar.classList.add('navbar-lewagon');
        navbar.classList.remove('navbar-lewagon-light');
        // navbar.classList.remove('logo');
        // navbar.classList.add('logo-small');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
