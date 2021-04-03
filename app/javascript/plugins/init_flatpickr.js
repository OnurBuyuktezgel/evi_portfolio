import flatpickr from "flatpickr";

const initFlatpickr = () => {
  const datePicker = document.querySelector('.datepicker')

  if (datePicker) {
    flatpickr(".datepicker", {
      altInput: true,
      allowInput: true,
      enableTime: true,
      time_24hr: true,
    });
  }
}

export { initFlatpickr };
