import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["menu", "icon"]

    toggle() {
        this.menuTarget.classList.toggle("hidden")

        if (!this.menuTarget.classList.contains("hidden")) {
            // Set dropdown width equal to the button width
            this.menuTarget.style.width = `${this.element.offsetWidth}px`

            // Show with animation
            this.menuTarget.classList.replace("opacity-0", "opacity-100")
            this.menuTarget.classList.replace("scale-95", "scale-100")
            this.iconTarget.classList.add("rotate-180")
        } else {
            // Hide with animation
            this.menuTarget.classList.replace("opacity-100", "opacity-0")
            this.menuTarget.classList.replace("scale-100", "scale-95")
            this.iconTarget.classList.remove("rotate-180")
        }
    }
}
