module NavigationHelper
  def link_to_previous
    index = slides.index(@slide)
    previous_slide = slides.fetch(index - 1, nil) if index > 0

    link_to(
      "&larr; Previous".html_safe,
      previous_slide ? slide_path(previous_slide) : "javascript:void(0)",
      data: {previous: ""},
      class: previous_slide ? "" : "invisible"
    )
  end

  def link_to_next
    index = slides.index(@slide)
    next_slide = slides.fetch(index + 1, nil)

    link_to(
      "Next &rarr;".html_safe,
      next_slide ? slide_path(next_slide) : "javascript:void(0)",
      data: {next: ""},
      class: next_slide ? "" : "invisible"
    )
  end
end
