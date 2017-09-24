$(document).ready(function(){
  function createProgressElement(element){
    return new ProgressBar.Circle(element, {
      strokeWidth: 10,
      easing: 'easeOut',
      duration: 2500,
      color: '#89C443',
      trailColor: '#eee',
      trailWidth: 10,
      fill: 'rgba(200, 153, 73, .2)',
      from: { color: '#70A9A1' },
      to: { color: '#ECD611' },
      step: function(state, bar, attachment) {
          bar.path.setAttribute('stroke', state.color);
      }
    });
  };

  function animateProgressElement(progressElement, progression){
    progressElement.set(0);
    progressElement.animate(0, {
        duration: 500
    }, function() {
       progressElement.animate(progression);
    });
  };

  $("[id*='badgeicon']").each(function(){
    dataProgress = parseFloat($(this).parents('.badge-icon-container')[0].dataset.progress);
    animateProgressElement(createProgressElement(this), dataProgress);
  });
});
