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
initSelect2();
