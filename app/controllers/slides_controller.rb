class SlidesController < ApplicationController
  helper_method :slides

  def show
    @slide = ActiveSupport::StringInquirer.new(params.fetch("id", "start"))
    @turbolinks = false if @slide.turbolinks_off_1? || @slide.turbolinks_off_2?

    render action: @slide
  end

  private

  def slides
    %w[
      start
      meme
      turbolinks_off_1
      turbolinks_off_2
      turbolinks_on_1
      turbolinks_on_2
    ]
  end
end
