import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/navbar';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import { ratings } from '../components/ratings';
import { notifications } from '../components/notifications';

initMapbox();
initUpdateNavbarOnScroll();
