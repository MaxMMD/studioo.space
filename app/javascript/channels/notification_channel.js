import consumer from "./consumer";

var notifCounter = 0;

const channelConfig = {
  // Same name as the Channel class you generated in Rails
  channel: "NotificationChannel"
};

const channelCallbacks = {
  // Called when the subscription is created.
  initialized: () => {
    console.log("Listening to notifications...")
  },
  // Called when a broadcast is received
  received: (data) => {
    // Update notifcations counter
    // Popup notification on screen
    //document.body.insertAdjacentHTML("afterBegin", `<p class="flash flash-success">${data} - ${notifCounter}</p>`)
    var notif = document.querySelector("#notifMenu");
    var counterTracker = document.querySelector("#counterTracker");
    counterTracker.text = "notifications" + notifCounter;
    notif.insertAdjacentHTML("beforeEnd", `<a class="dropdown-item" href="path">${data}</a>`);
    notifCounter+1;
  }
};

const initNotificationChannel = () => {
  const notificationArea = document.querySelector(".avatar.dropdown-toggle");
  if(notificationArea) {
    consumer.subscriptions.create(channelConfig, channelCallbacks);
  }
}

export { initNotificationChannel }