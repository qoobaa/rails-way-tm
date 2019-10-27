class SlidesController < ApplicationController
  helper_method :slides

  def show
    @attendees = Attendee.last(10)
    @attendee = Attendee.new
    @slide = ActiveSupport::StringInquirer.new(params.fetch("id", "start"))
    @turbolinks = false if @slide.turbolinks_off_1? || @slide.turbolinks_off_2?
    sleep(2) if @slide.turbolinks_flicker_2? || @slide.turbolinks_caching_2?

    render action: @slide
  end

  private

  def slides
    %w[
      start
      meme
      single_page_apps
      single_page_apps_drawbacks
      turbolinks_basics
      turbolinks_off_1
      turbolinks_off_2
      turbolinks_on_1
      turbolinks_on_2
      disabling_turbolinks
      turbolinks_flicker_1
      turbolinks_flicker_2
      turbolinks_caching_1
      turbolinks_caching_2
      turbolinks_preparing_for_caching
      turbolinks_docs
      remote_true
      remote_form
      rails_ujs
      stimulus_intro_1
      stimulus_intro_2
      stimulus_controllers_1
      stimulus_controllers_2
      stimulus_controllers_3
      stimulus_actions
      stimulus_targets
      stimulus_data_maps
    ]
  end
end
