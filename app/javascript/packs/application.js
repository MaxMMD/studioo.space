import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/navbar';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import { initNotificationChannel } from '../channels/notification_channel';
import { ratings } from '../components/ratings';

initMapbox();
initUpdateNavbarOnScroll();
initNotificationChannel();

