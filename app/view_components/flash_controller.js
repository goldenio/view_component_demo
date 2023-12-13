import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static values = {
    action: String,
  }

  connect() {
    document.addEventListener('turbo:load', this.show.bind(this))
    this.actionValue === 'show' ? this.show() : this.reset()
  }

  disconnect() {
    document.removeEventListener('turbo:load', this.show.bind(this))
    this.stopTimer()
  }

  reset() {
    this.element.classList.remove('opacity-100')
    this.element.classList.add('opacity-0', '-translate-x-10')
  }

  show() {
    // eslint-disable-next-line compat/compat
    window.requestAnimationFrame(this.appear.bind(this))
    this.startTimer()
  }

  appear() {
    this.element.classList.add('opacity-100')
    this.element.classList.remove('-translate-x-10')
  }

  disappear() {
    this.element.classList.add('-translate-x-10')
    this.element.classList.remove('opacity-100', 'animate-pulse')
    this.element.remove()
  }

  startTimer() {
    this.element.classList.add('animate-pulse')
    this.timer = window.setTimeout(this.disappear.bind(this), 5000)
  }

  stopTimer() {
    this.element.classList.remove('animate-pulse')
    if (this.timer) {
      window.clearTimeout(this.timer)
    }
  }
}
