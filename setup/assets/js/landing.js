(function () {
    "use strict";
    window.addEventListener('DOMContentLoaded', () => {
        window.onscroll = function () {
            const ud_header = document.querySelector(".ud-header");
            const sticky = ud_header.offsetTop;
            const logo = document.querySelector(".header-logo");

            if (window.pageYOffset > sticky) {
                ud_header.classList.add("sticky");
            } else {
                ud_header.classList.remove("sticky");
            }


            // show or hide the back-top-top button
            const backToTop = document.querySelector(".back-to-top");
            if (
                document.body.scrollTop > 50 ||
                document.documentElement.scrollTop > 50
            ) {
                backToTop.style.display = "flex";
            } else {
                backToTop.style.display = "none";
            }
        };

        // ===== responsive navbar
        let navbarToggler = document.querySelector("#navbarToggler");
        const navbarCollapse = document.querySelector("#navbarCollapse");

        navbarToggler.addEventListener("click", () => {
            navbarToggler.classList.toggle("navbarTogglerActive");
            navbarCollapse.classList.toggle("hidden");
        });

        //===== close navbar-collapse when a  clicked
        document
            .querySelectorAll("#navbarCollapse ul li:not(.submenu-item) a")
            .forEach((e) =>
                e.addEventListener("click", () => {
                    navbarToggler.classList.remove("navbarTogglerActive");
                    navbarCollapse.classList.add("hidden");
                })
            );

        // ===== Sub-menu
        const submenuItems = document.querySelectorAll(".submenu-item");
        submenuItems.forEach((el) => {
            el.querySelector("a").addEventListener("click", () => {
                el.querySelector(".submenu").classList.toggle("hidden");
            });
        });

        // ==== for menu scroll
        const pageLink = document.querySelectorAll(".ud-menu-scroll");

        const not_a_landing_page = document.getElementById('not_a_landing_page');

        if (!not_a_landing_page) {
            pageLink.forEach((elem) => {
                elem.addEventListener("click", (e) => {
                    e.preventDefault();

                    let elem_id = elem.getAttribute("href");

                    // Remove the domain name from the URL
                    elem_id = elem_id.replace(/^.*\/\/[^\/]+/, '');

                    // Check if the URL contains a hash (indicating an ID)
                    if (elem_id.includes('#')) {
                        elem_id = elem_id.split('#')[1]; // Extract the ID after the '#'
                        elem_id = '#' + elem_id; // Re-add the '#' to create a valid selector
                    } else {
                        // Handle cases where there's no hash
                        elem_id = '#' + elem_id.replace(/^\//, ''); // Ensure it starts with '#'
                    }

                    const targetElement = document.querySelector(elem_id);

                    if (targetElement) {
                        targetElement.scrollIntoView({
                            behavior: "smooth",
                            offsetTop: 1 - 60,
                        });
                    } else {
                        console.error('Element not found: ' + elem_id);
                    }

                });
            });
        }





        // ===== Faq accordion
        const faqs = document.querySelectorAll(".single-faq");
        faqs.forEach((el) => {
            el.querySelector(".faq-btn").addEventListener("click", () => {
                el.querySelector(".icon").classList.toggle("rotate-180");
                el.querySelector(".faq-content").classList.toggle("hidden");
            });
        });

        function scrollTo(element, to = 0, duration = 500) {
            const start = element.scrollTop;
            const change = to - start;
            const increment = 20;
            let currentTime = 0;

            const animateScroll = () => {
                currentTime += increment;

                element.scrollTop = Math.easeInOutQuad(currentTime, start, change, duration);

                if (currentTime < duration) {
                    setTimeout(animateScroll, increment);
                }
            };

            animateScroll();
        }

        document.querySelector(".back-to-top").onclick = (event) => {
            event.preventDefault();
            scrollTo(document.documentElement);
        };

        const has_signup_errors = document.getElementById('has_signup_errors');

        if (has_signup_errors) {
            has_signup_errors.scrollIntoView({ behavior: 'smooth', block: 'center' });
        }

    });
})();
