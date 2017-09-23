$(document).ready(function(){
  function createProgressElement(element){
    return new ProgressBar.Circle(element, {
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
