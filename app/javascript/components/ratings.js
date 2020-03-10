import $ from 'jquery'

$('.star-input').click(function() {
  const reviewContent = document.getElementById("review_content");
  const reviewValue = reviewContent.value;
  $(this).parent()[0].reset();
  reviewContent.value = reviewValue;
  var prevStars = $(this).prevAll();
  var nextStars = $(this).nextAll();
  prevStars.attr('checked',true);
  nextStars.attr('checked',false);
  $(this).attr('checked',true);
});

$('.star-input-label').on('mouseover',function() {
  var prevStars = $(this).prevAll();
  prevStars.addClass('hovered');
});
$('.star-input-label').on('mouseout',function(){
  var prevStars = $(this).prevAll();
  prevStars.removeClass('hovered');
})

