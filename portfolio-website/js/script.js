console.log('Cloud Automation Portfolio Loaded');
document.querySelectorAll('.badge').forEach((badge, i) => {
  badge.style.transform = 'scale(0)';
  setTimeout(() => {
    badge.style.transition = 'transform 0.5s';
    badge.style.transform = 'scale(1)';
  }, i * 100);
});
