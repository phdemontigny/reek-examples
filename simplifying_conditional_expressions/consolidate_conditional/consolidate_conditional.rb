module ConsolidateConditional
  def raindrops(number)
    message = ""
    if divisible(number, 3)
      message += "Pling"
    end
    if divisible(number, 5)
      message += "Plang"
    end
    if divisible(number, 7)
      message += "Plong"
    end
    message.empty? ? number.to_s : message
  end

  def divisible(numerator, denominator)
    return (numerator / denominator.to_f).floor == (numerator / denominator.to_f).ceil
  end

  def raindrops_fixed(number)
    message = ""
    raindrops_speak.each do |factor, translation|
      message += translation if divisible(number, factor)
    end
    message.empty? ? number.to_s : message
  end

  def raindrops_speak
    {
      3 => "Pling",
      5 => "Plang",
      7 => "Plong",
    }
  end
end
