// ==========================
// Loader
// ==========================
window.addEventListener('load', function() {
    const preloader = document.getElementById('preloader');
    
    if (preloader) {
        
        preloader.classList.add('loaded');
    }
});


// ==========================
// NAVBAR
// ==========================
window.addEventListener("scroll", function () {
    const navbar = document.querySelector(".navbar");
    if (window.scrollY > 100) {
        navbar.classList.add("scrolled");
    } else {
        navbar.classList.remove("scrolled");
    }
});

document.addEventListener("DOMContentLoaded", function () {
    const dropdowns = document.querySelectorAll(".dropdown-hover");

    function initHover() {
        if (window.innerWidth > 992) {
            dropdowns.forEach(drop => {
                drop.addEventListener("mouseenter", () => {
                    drop.querySelector(".dropdown-menu")?.classList.add("show");
                });
                drop.addEventListener("mouseleave", () => {
                    drop.querySelector(".dropdown-menu")?.classList.remove("show");
                });
            });
        }
    }

    initHover();
    window.addEventListener("resize", initHover);
});


// ==============
// HERO SLIDER 
// ==============
document.addEventListener("DOMContentLoaded", () => {
    const slides = document.querySelectorAll(".hero-slider-images .slide");
    const navItems = document.querySelectorAll(".hero-nav-item");

    if (!slides.length) return;

    let current = 0;
    let timer = null;
    let duration = 6000; 

    function startProgress(index, duration) {
        navItems.forEach((item, i) => {
            const progress = item.querySelector(".progress");
            progress.style.transition = "none";
            progress.style.width = "0%";
            item.classList.remove("active");

            if (i === index) {
                item.classList.add("active");
                requestAnimationFrame(() => {
                    progress.style.transition = `width ${duration}ms linear`;
                    progress.style.width = "100%";
                });
            }
        });
    }

    
    function showSlide(index) {
        clearTimeout(timer);

        slides.forEach((slide, i) => {
            const isActive = i === index;
            slide.classList.toggle("active", isActive);

            // Pause video yang tidak aktif
            if (!isActive && slide.tagName === "VIDEO") {
                slide.pause();
                slide.currentTime = 0;
            }
        });

        const activeSlide = slides[index];

 
        if (activeSlide.tagName === "VIDEO") {
            activeSlide.muted = true;
            activeSlide.playsInline = true;

            const playVideo = () => {
                const playPromise = activeSlide.play();
                if (playPromise) playPromise.catch(() => {});

                duration = activeSlide.duration
                    ? activeSlide.duration * 1000
                    : 6000;

                startProgress(index, duration);
                restartTimer();
            };

            if (activeSlide.readyState < 1) {
                activeSlide.onloadedmetadata = playVideo;
            } else {
                playVideo();
            }

        } 
        
        else {
            duration = 6000;
            startProgress(index, duration);
            restartTimer();
        }
    }

  
    function nextSlide() {
        current = (current + 1) % slides.length;
        showSlide(current);
    }

    function restartTimer() {
        clearTimeout(timer);
        timer = setTimeout(nextSlide, duration);
    }

  
    navItems.forEach(item => {
        item.addEventListener("click", () => {
            const index = parseInt(item.dataset.slide, 10);
            if (!isNaN(index)) {
                current = index;
                showSlide(current);
            }
        });
    });

    
    showSlide(0);
});




// ==========================
// Tentang kami
// ==========================

document.addEventListener("DOMContentLoaded", () => {
    const animatedElements = document.querySelectorAll(".animate");

    const observer = new IntersectionObserver(
        (entries) => {
            entries.forEach((entry) => {
                if (entry.isIntersecting) {
                    entry.target.classList.add("show");
                } else {
                    entry.target.classList.remove("show");
                }
            });
        },
        {
            threshold: 0.2,
        }
    );

    animatedElements.forEach((el) => observer.observe(el));
});


// ==========================
// Portofolio Slider
// ==========================
document.addEventListener("DOMContentLoaded", () => {
    const slides = document.querySelectorAll(".slide-item");
    const next = document.querySelector(".next");
    const prev = document.querySelector(".prev");
    const slider = document.querySelector(".portofolio-container");

    let index = 0;
    let autoSlide = null;
    const INTERVAL = 2500;
    const MAX_PREVIEW = 4; // jumlah preview kanan

    function updateSlots() {
        const total = slides.length;
        if (total === 0) return;

        
        slides.forEach(slide => {
            slide.classList.remove(
                "slot-1",
                "slot-2",
                "slot-3",
                "slot-4",
                "slot-5",
                "slot-hidden"
            );
        });

        
        index = ((index % total) + total) % total;

        
        const activeIndexes = [];

       
        slides[index].classList.add("slot-1");
        activeIndexes.push(index);

       
        for (let i = 1; i <= MAX_PREVIEW; i++) {
            if (i < total) {
                const idx = (index + i) % total;
                slides[idx].classList.add(`slot-${i + 1}`);
                activeIndexes.push(idx);
            }
        }

        
        slides.forEach((slide, i) => {
            if (!activeIndexes.includes(i)) {
                slide.classList.add("slot-hidden");
            }
        });
    }

    function startAutoSlide() {
        stopAutoSlide();
        autoSlide = setInterval(() => {
            index++;
            updateSlots();
        }, INTERVAL);
    }

    function stopAutoSlide() {
        if (autoSlide) {
            clearInterval(autoSlide);
            autoSlide = null;
        }
    }

    if (slides.length > 0) {
        updateSlots();
        startAutoSlide();
    }

    next?.addEventListener("click", () => {
        index++;
        updateSlots();
        startAutoSlide();
    });

    prev?.addEventListener("click", () => {
        index--;
        updateSlots();
        startAutoSlide();
    });

    slider?.addEventListener("mouseenter", stopAutoSlide);
    slider?.addEventListener("mouseleave", startAutoSlide);
});



// VISI MISI

document.addEventListener("DOMContentLoaded", () => {
  const vmCards = document.querySelectorAll('.vm-card');
  if (!vmCards || vmCards.length === 0) return;
  vmCards.forEach(card => {
    card.addEventListener('click', () => {
      vmCards.forEach(c => c.classList.remove('active'));
      card.classList.add('active');
    });

    card.addEventListener('mouseenter', () => {
      if (!card.classList.contains('active')) {
        vmCards.forEach(c => c.classList.remove('active'));
        card.classList.add('active');
      }
    });
  });
});

// SWIPER LAYANAN KAMI 

document.addEventListener("DOMContentLoaded", function () {
    const thumbContainer = document.querySelector(".thumbSwiper");
    const mainContainer = document.querySelector(".mainSwiper");

  
    if (!thumbContainer || !mainContainer) {
       
        return; 
    }
 
    
    var thumbs = new Swiper(".thumbSwiper", {
        loop: false,
        spaceBetween: 10,
        slidesPerView: 4,
        freeMode: true,
        watchSlidesProgress: true,
    });

    var main = new Swiper(".mainSwiper", {
        loop: false,
        spaceBetween: 10,
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
        thumbs: {
            swiper: thumbs,
        },
    });

    
    if (main) {
        main.update();
    }
});


// MILESTONE PAGINATION
document.addEventListener("DOMContentLoaded", () => {
    const milestoneTimeline = document.querySelector(".milestone-swiper");

    if (milestoneTimeline) {
        const milestoneSwiper = new Swiper(".milestone-swiper", {
            slidesPerView: 4,
            spaceBetween: 0,
            loop: false,
            allowTouchMove: true,
            centeredSlides: false,
            watchOverflow: true,

           
            pagination: {
                el: "#milestone-pagination",
                clickable: true,
            },

            
            breakpoints: {
                0:    { slidesPerView: 1 },
                576:  { slidesPerView: 2 },
                992:  { slidesPerView: 3 },
                1200: { slidesPerView: 4 }
            }
        });

        console.log("Milestone Swiper Initialized");
    }

});


//Armada
document.addEventListener('DOMContentLoaded', function () {
    var ArmadaSlider = new Swiper('.armada-slider', {
        effect: 'coverflow',
        grabCursor: true,
        centeredSlides: true,
        centeredSlidesBounds: true, 
         initialSlide: 0,
        loop: true,
        slidesPerView: 'auto',
        loopedSlides: 5, 
        coverflowEffect: {
              rotate: 0,
            stretch: 0,
            depth: 100,
            modifier: 2.5,
            slideShadows: false,
        },
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
         navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        }
    });
});

// MAP LOKASI KAMI
document.addEventListener('DOMContentLoaded', function() {
    const mapElement = document.getElementById('leafletMap');

    if (mapElement) {

      
        if (mapElement._leaflet_id) {
            mapElement._leaflet_id = null;
        }

        var leafMap = L.map('leafletMap', {
                dragging: true,
                tap: false,
                touchZoom: true,
                scrollWheelZoom: false,
                doubleClickZoom: true
            }).setView([-2.5, 125], 4);


            leafMap.dragging.enable();
            leafMap.touchZoom.enable();
            leafMap.doubleClickZoom.enable();
            

        setTimeout(function() {
            leafMap.invalidateSize(true);
        }, 300);

        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '&copy; OpenStreetMap'
        }).addTo(leafMap);

        if (typeof LokasiSite !== 'undefined' && Array.isArray(LokasiSite)) {
            LokasiSite.forEach(function(loc) {
                if (!loc.latitude || !loc.longitude) return;

                const marker = L.marker([loc.latitude, loc.longitude]).addTo(leafMap);

                marker.bindPopup(`
                    <div style="font-size:14px">
                        <strong>${loc.nama_site}</strong><br>
                        ${loc.deskripsi ?? ''}
                    </div>
                `);

                marker.on("mouseover", () => marker.openPopup());
                marker.on("mouseout", () => marker.closePopup());
            });
        }
    }
});

// kode modal karir
   
document.addEventListener('DOMContentLoaded', function() {
    
    if (typeof jQuery === 'undefined') {
        console.error("jQuery is required for Select2 integration.");
        return; 
    }
    
    const jobGrid = document.getElementById('job-grid');
    const jobCards = Array.from(document.querySelectorAll('.job-card'));
    const filterKategori = document.getElementById('filter-kategori');
    const filterLokasi = document.getElementById('filter-lokasi');
    const searchInput = document.getElementById('search-input');
    const searchButton = document.getElementById('search-button');
    const popupOverlay = document.querySelector('.popup-overlay');
    const popupClose = document.querySelector('.popup-close');
    const paginationContainer = document.querySelector(".pagination-container"); 
    
    const cardsPerPage = 8;
    let currentPage = 1;

    $(document).ready(function() {
        $('#filter-kategori').select2({
            placeholder: "Semua Fungsi",
            allowClear: true,
            theme: 'bootstrap-5',
             width: '100%'
        });

        $('#filter-lokasi').select2({
            placeholder: "Semua Lokasi", 
            allowClear: true,
            theme: 'bootstrap-5',
            width: '100%'
        });
        
       
        
        if (searchButton && searchInput) {
            searchButton.addEventListener('click', (e) => {
                e.preventDefault();
                applyFiltersAndPagination();
            });
        
        }
    });

    function applyFiltersAndPagination() {
        if (!filterKategori || !filterLokasi || !searchInput) return; 
        
        const selectedKategori = filterKategori.value.toLowerCase();
        const selectedLokasi = filterLokasi.value.toLowerCase();
        const searchText = searchInput.value.toLowerCase().trim();
        
        let filteredCards = [];
        jobCards.forEach(card => {
            const cardKategori = (card.getAttribute('data-kategori') || "").toLowerCase();
            const cardLokasi = (card.getAttribute('data-location') || "").toLowerCase();
            const cardTitle = (card.getAttribute('data-title') || "").toLowerCase();

            const matchesKategori = !selectedKategori || cardKategori === selectedKategori;
            const matchesLokasi = !selectedLokasi || cardLokasi === selectedLokasi;
            const matchesSearch = !searchText || cardTitle.includes(searchText);

            const isMatch = matchesKategori && matchesLokasi && matchesSearch;

            card.style.display = isMatch ? 'block' : 'none'; 
            
            if (isMatch) {
                filteredCards.push(card);
            }
        });
        
        updateNoJobMessage(filteredCards.length);

        if (filteredCards.length > 0) {
            displayPage(1, filteredCards); 
        } else {
            if (paginationContainer) paginationContainer.innerHTML = '';
        }
    }
    
    function updateNoJobMessage(visibleCount) {
        if (!jobGrid) return;
        let noJobMessage = jobGrid.querySelector('.no-job-found');
        
        if (visibleCount === 0) {
            if (!noJobMessage) {
                const message = document.createElement('div');
                message.classList.add('no-job-found');
                message.innerHTML = '<p>Maaf, tidak ada lowongan yang cocok dengan kriteria pencarian Anda.</p>';
                jobGrid.appendChild(message);
            }
        } else {
            if (noJobMessage) {
                noJobMessage.remove();
            }
        }
    }
    
    function displayPage(page, cards = jobCards) {
        currentPage = page;
        const totalCards = cards.length;
        const pageCount = Math.ceil(totalCards / cardsPerPage);
        
        const start = (page - 1) * cardsPerPage;
        const end = start + cardsPerPage;

        jobCards.forEach(card => card.style.display = 'none');
        
        cards.forEach((card, index) => {
            if (index >= start && index < end) {
                card.style.display = 'block';
            } else {
                card.style.display = 'none';
            }
        });
        
        updatePaginationButtons(pageCount, cards);
    }

    function updatePaginationButtons(pageCount, cards) {
        if (!paginationContainer) return;
        paginationContainer.innerHTML = '';
        
        if (pageCount <= 1) return;

        for (let i = 1; i <= pageCount; i++) {
            const button = document.createElement('button');
            button.textContent = i;
            button.classList.add('page-button');
            
            if (i === currentPage) {
                button.classList.add('active'); 
            }

            button.addEventListener('click', () => {
                displayPage(i, cards);
                if (jobGrid) {
                    jobGrid.scrollIntoView({ behavior: 'smooth', block: 'start' }); 
                }
            });
            
            paginationContainer.appendChild(button);
        }
    }

    document.querySelectorAll('.open-popup').forEach(button => {
        button.addEventListener('click', function(e) {
            e.preventDefault();
            
            const card = this.closest('.job-card');
            
            document.getElementById('popup-title').textContent = card.getAttribute('data-title');
            document.getElementById('popup-location').textContent = card.getAttribute('data-location');
            document.getElementById('popup-deadline').textContent = card.getAttribute('data-deadline');
            
            document.getElementById('popup-description').innerHTML = card.getAttribute('data-description'); 
            document.getElementById('popup-requirements').innerHTML = card.getAttribute('data-requirements');
            
            const applyLink = card.getAttribute('data-apply-link') || '#';
        document
            .getElementById('popup-apply-link')
            .setAttribute('href', applyLink);
            
            popupOverlay.style.display = 'flex'; 
        });
    });

    if (popupClose && popupOverlay) {
        popupClose.addEventListener('click', () => {
            popupOverlay.style.display = 'none';
        });

        popupOverlay.addEventListener('click', function(e) {
            if (e.target === this) {
                popupOverlay.style.display = 'none';
            }
        });
    }
    
   displayPage(1, jobCards);

});


