import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/navbar';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import { initNotificationChannel } from '../channels/notification_channel';
import { ratings } from '../components/ratings';
import { notifications } from '../components/notifications';
import { initSweetAlerts } from '../components/sweet-alert';
import { initSelect2 } from '../plugins/init_select2';

initMapbox();
initUpdateNavbarOnScroll();
initNotificationChannel();
initSweetAlerts();


// import "../../../public/theme/vendor/jquery/dist/jquery.min.js";
// import "../../../public/theme/vendor/jquery-migrate/dist/jquery-migrate.min.js";
// import "../../../public/theme/vendor/popper.js/dist/umd/popper.min.js";
// import "../../../public/theme/vendor/bootstrap/bootstrap.min.js";
// import "../../../public/theme/vendor/hs-megamenu/src/hs.megamenu.js";
// import "../../../public/theme/vendor/jquery-validation/dist/jquery.validate.min.js";
// import "../../../public/theme/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js";
import "../../../public/theme/vendor/slick-carousel/slick/slick.js";
// import "../../../public/theme/vendor/fancybox/jquery.fancybox.min.js";
import "../../../public/theme/js/hs.core.js";
import "../../../public/theme/js/components/hs.header.js";
import "../../../public/theme/js/components/hs.unfold.js";
import "../../../public/theme/js/components/hs.validation.js";
import "../../../public/theme/js/helpers/hs.focus-state.js";
import "../../../public/theme/js/components/hs.malihu-scrollbar.js";
import "../../../public/theme/js/components/hs.show-animation.js";
import "../../../public/theme/js/components/hs.slick-carousel.js";
import "../../../public/theme/js/components/hs.fancybox.js";
import "../../../public/theme/js/components/hs.go-to.js";
import "../../../public/theme/js/components/hs.wizard.js";

// initialization of header
$.HSCore.components.HSHeader.init($('#header'));

// initialization of unfold component
$.HSCore.components.HSUnfold.init($('[data-unfold-target]'), {
  afterOpen: function () {
    if (!$('body').hasClass('IE11')) {
      $(this).find('input[type="search"]').focus();
    }
  }
});


// initialization of wizard
$.HSCore.components.HSWizard.init('.js-wizard');

// initialization of forms
$.HSCore.helpers.HSFocusState.init();

// initialization of malihu scrollbar
$.HSCore.components.HSMalihuScrollBar.init($('.js-scrollbar'));

// initialization of show animations
$.HSCore.components.HSShowAnimation.init('.js-animation-link');

// initialization of slick carousel
$.HSCore.components.HSSlickCarousel.init('.js-slick-carousel');

// // initialization of fancybox
// $.HSCore.components.HSFancyBox.init('.js-fancybox');

// initialization of go to
$.HSCore.components.HSGoTo.init('.js-go-to');
=======
initSelect2();
