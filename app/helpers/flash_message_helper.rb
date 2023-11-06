module FlashMessageHelper
  def color_classes(type)
    case type
    when 'notice'
      'bg-green-100 border-green-400 text-green-700'
    when 'warning'
      'bg-yellow-100 border-yellow-400 text-yellow-700'
    when 'info'
      'bg-blue-100 border-blue-400 text-blue-700'
    when 'alert'
      'bg-red-100 border-red-400 text-red-700'
    end
  end
end
