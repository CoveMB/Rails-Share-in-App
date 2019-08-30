const initDetailsToggle = () => {
  if (window.location.href.match(/events/)){
    const eventDetailsBtn = document.getElementById("event-details-btn");
    const organiserDetailsBtn = document.getElementById("organiser-details-btn");
    const eventCard = document.getElementById("event-card");
    const organiserCard = document.getElementById("organiser-card");

    eventDetailsBtn.addEventListener("click", (event) => {
      eventCard.style.display = "block";
      organiserCard.style.display = "none";
    });

    organiserDetailsBtn.addEventListener("click", (event) => {
      eventCard.style.display = "none";
      organiserCard.style.display = "block";
    });
  }

};

export { initDetailsToggle };
