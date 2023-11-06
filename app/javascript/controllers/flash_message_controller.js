import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flash-message"
export default class FlashMessageController extends Controller {
  connect() {
    this.element.addEventListener("animationend", this, false)
  }

  handleEvent(event) {
    if (event.type === "animationend") {
      this.close()
    }
  }

  close() {
    this.element.classList.add("hidden")
  }
}
