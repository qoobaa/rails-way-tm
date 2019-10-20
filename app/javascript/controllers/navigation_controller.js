import { Controller } from "stimulus";

const commands = {
  ArrowLeft: "previous",
  ArrowRight: "next"
};

export default class extends Controller {
  connect() {
    this.element.addEventListener("keydown", this._onKeyPress.bind(this));
  }

  _onKeyPress(event) {
    if (commands[event.code]) {
      this.element.querySelector(`[data-${commands[event.code]}]`).click();
    }
  }
}
