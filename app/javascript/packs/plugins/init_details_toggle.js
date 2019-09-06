const initDetailsToggle = () => {
  if (window.location.href.match(/events/)){
    const eventDetailsBtn = document.getElementById("event-details-btn");
    const followBtn = document.getElementById("organiser-follow-btn");
    const organiserDetailsBtn = document.getElementById("organiser-details-btn");
    const eventCard = document.getElementById("event-card");
    const organiserCard = document.getElementById("organiser-card");
    const interests = document.querySelectorAll(".event-interest");
    const userList = document.getElementById("attendee-list-event");
    const interestsLists = document.querySelectorAll(".interest-event-list");
    const attendeeBtn = document.getElementById("event-attendee-btn");
    const originalHeigth = eventCard.offsetHeight;
    const oeList = document.getElementById("orgoniser-events-list-in-event");
    // eventCard.style.height = originalHeigth + "px";
    organiserCard.style.height = originalHeigth + "px";

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
      followBtn.style.display = "none";
      oeList.classList.remove("animated", "fadeInUp");
      oeList.classList.add("animated", "fadeOutDown");
      userList.classList.remove("animated", "fadeOutDown");
      userList.classList.add("animated", "fadeInUp");
      userList.style.display = "block";
      interestsLists.forEach((interestList) => {

        interestList.style.display = "none";

      });
      setTimeout(() => {
        organiserCard.style.display = "none";
        eventCard.style.display = "block";
        attendeeBtn.style.display = "block";
        followBtn.style.display = "block";
      }, 600);
    });

    organiserDetailsBtn.addEventListener("click", (event) => {
      attendeeBtn.style.display = "none";
      oeList.classList.remove("animated", "fadeOutDown");
      oeList.classList.add("animated", "fadeInUp");
      userList.classList.remove("animated", "fadeInUp");
      userList.classList.add("animated", "fadeOutDown");
      interestsLists.forEach((interestList) => {
        setTimeout(()=>{
          interestList.style.display = "none";
        }, 600);
      });
      setTimeout(() => {
        eventCard.style.display = "none";
        organiserCard.style.display = "block";
        attendeeBtn.style.display = "block";
      }, 600);

    });
  }
  if (window.location.href.match(/users/)){
    const profileDetailsBtn = document.getElementById("profile-details-btn");
    const followDetailsBtn = document.getElementById("follow-details-btn");
    const profileEventsList = document.getElementById("profile-events-list");
    const profileOrganisersList = document.getElementById("profile-organisers-list");
    const profileCard = document.querySelector(".body-card");
    const originalHeigth = profileCard.offsetHeight;

    followDetailsBtn.addEventListener("click", (event) => {
      profileEventsList.classList.remove("animated", "fadeInUp");
      profileEventsList.classList.add("animated", "fadeOutDown");
      setTimeout(()=>{
        console.log(originalHeigth);
        profileEventsList.style.display = "none";
        profileOrganisersList.classList.remove("animated", "fadeOutDown");
        profileOrganisersList.classList.add("animated", "fadeInUp");
        profileOrganisersList.style.display = "block";
        profileCard.style.height = originalHeigth + "px";
      }, 600);
    });

    profileDetailsBtn.addEventListener("click", () => {
      profileOrganisersList.classList.remove("animated", "fadeInUp");
      profileOrganisersList.classList.add("animated", "fadeOutDown");
      setTimeout(()=>{
        profileOrganisersList.style.display = "none";
        profileEventsList.classList.remove("animated", "fadeOutDown");
        profileEventsList.classList.add("animated", "fadeInUp");
        profileEventsList.style.display = "block";
      }, 600);
    });

  }

};

export { initDetailsToggle };
