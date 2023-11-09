module ApplicationHelper
  def split_description(description:, classes:)
    return [] unless description
    description.split("\n").map do |paragraph|
      content_tag(:p, paragraph, class: classes)
    end
  end

  def title(string = 'ViniBispo')
    return content_for(:title, string) if string == 'ViniBispo'

    content_for(:title, "#{string} | ViniBispo")
  end
end
