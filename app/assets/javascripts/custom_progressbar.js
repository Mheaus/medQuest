$(document).ready(function(){
  var bar = new ProgressBar.Circle(badgeicon, {
    strokeWidth: 6,
    easing: 'easeOut',
    duration: 2500,
    color: '#89C443',
    trailColor: '#eee',
    trailWidth: 6,
    fill: 'rgba(200, 153, 73, .2)',
    from: { color: '#ECD611' },
    to: { color: '#89C443' },

  });

  bar.set(0);
  bar.animate(0, {
      duration: 500
  }, function() {
     bar.animate(0.7);
  });
});
