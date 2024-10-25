/**
 * Countdown timer
 */
const countdown = document.querySelector('.countdown');
const output = countdown.innerHTML;

(function() {
  const countDownDate = function() {
    const timeleft = new Date(countdown.getAttribute('data-count')).getTime() - new Date().getTime();

    if (timeleft < 0) {
      clearInterval(interval);
      countdown.innerHTML = "<div>Countdown Finished</div>";
      return;
    }

    const days = Math.floor(timeleft / (1000 * 60 * 60 * 24));
    const hours = Math.floor((timeleft % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    const minutes = Math.floor((timeleft % (1000 * 60 * 60)) / (1000 * 60));
    const seconds = Math.floor((timeleft % (1000 * 60)) / 1000);

    countdown.innerHTML = output
      .replace('00', String(days).padStart(2, '0'))
      .replace('00', String(hours).padStart(2, '0'))
      .replace('00', String(minutes).padStart(2, '0'))
      .replace('00', String(seconds).padStart(2, '0'));
  };

  // Declare the interval inside the function scope
  const interval = setInterval(countDownDate, 1000);

  // Initial call to set the countdown display
  countDownDate();
})();