var bar = new ProgressBar.Circle(container, {
  strokeWidth: 6,
  easing: 'easeInOut',
  duration: 1400,
  color: '#89C443',
  trailColor: '#eee',
  trailWidth: 12,
  svgStyle: null,
  fill: 'rgba(200, 153, 73, .2)',
  from: { color: '#ECD611' },
  to: { color: '#89C443' },
  step: function(state, circle, attachment) {
    circle.path.setAttribute('stroke', state.color);
  }
});

// bar.set(0);
bar.animate(0, {
    duration: 500
}, function() {
   bar.animate(0.7);
});
