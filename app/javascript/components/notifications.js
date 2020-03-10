const $button = document.getElementById('button');
const $bell = document.getElementById('notification');

$button.addEventListener("click", function(event){
  const count = Number($bell.getAttribute('data-count')) || 0;

  $bell.setAttribute('data-count', count + 1);
  $bell.classList.add('show-count');
  $bell.classList.add('notify');
});

$bell.addEventListener("animationend", function(event){
  $bell.classList.remove('notify');
});
