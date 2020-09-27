import { Controller } from "stimulus";
import Rails from "@rails/ujs";

export default class extends Controller {
  static targets = ["form", "query", "display"];

  connect() {
  }

  search(event) {
    Rails.fire(this.formTarget, 'submit')
  }

  result(event) {
    console.log(event);
    const data = event.detail[0].body.innerHTML
    if (data.length > 0) {
      return this.displayTarget.innerHTML = data
    }
  }

  error(event) {
    console.log(event);
  }

}
