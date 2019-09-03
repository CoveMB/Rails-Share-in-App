const initDetailsToggle = () => {
  if (window.location.href.match(/events/)){
    const eventDetailsBtn = document.getElementById("event-details-btn");
    const organiserDetailsBtn = document.getElementById("organiser-details-btn");
    const eventCard = document.getElementById("event-card");
    const organiserCard = document.getElementById("organiser-card");
    const interests = document.querySelectorAll(".event-interest");
    const userList = document.getElementById("attendee-list-event");
    const interestsLists = document.querySelectorAll(".interest-event-list");
    const attendeeBtn = document.getElementById("event-attendee-btn");

    interests.forEach((interest) => {
      interest.addEventListener("click", (event) => {
        interestsLists.forEach((interestList) => {
          interestList.style.display = "none";
        });
        document.getElementById(event.target.dataset.interest).style.display = "block";
        attendeeBtn.style.display = "none";
        userList.style.display = "none";
      });
    });

    eventDetailsBtn.addEventListener("click", (event) => {
      userList.style.display = "block";
      interestsLists.forEach((interestList) => {
        interestList.style.display = "none";
      });
      eventCard.style.display = "block";
      organiserCard.style.display = "none";
      attendeeBtn.style.display = "block";
    });

    organiserDetailsBtn.addEventListener("click", (event) => {
      interestsLists.forEach((interestList) => {
        interestList.style.display = "none";
      });
      eventCard.style.display = "none";
      organiserCard.style.display = "block";

    });
  }

};

export { initDetailsToggle };
