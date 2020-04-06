document.addEventListener('turbolinks:load', () => {

  function init() {
    closeModal();
  }

  function closeModal() {
    const modal = document.querySelector('.modal');
    const closeBtn = document.querySelector('.js-close-modal');
    const modalInner = document.querySelector('.modal-inner');

    function closeIt() {
      modal.classList.remove('is-active');
      modalInner.innerHTML = "";
    }

    if(closeBtn) {
      closeBtn.addEventListener('click', closeIt)
    }
  }

  init();
});
