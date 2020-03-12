import Swal from 'sweetalert2';

const initSweetAlerts = () => {
  console.log("Sweet alert");
  const params = new URLSearchParams(window.location.search)
  const shouldNotify = params.get("notification") === "true"
  const notifcationTitle = params.get("notificationTitle")

  if (shouldNotify) {
    Swal.fire({
      title: notifcationTitle,
      icon: 'success',
    })
  }
}

export {initSweetAlerts} 