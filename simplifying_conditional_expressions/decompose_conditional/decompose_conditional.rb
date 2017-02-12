module DecomposeConditional
  def raindrops(number)
    message = ""
    if (number / 3.0).floor == (number / 3.0).ceil
      message += "Pling"
    end
    if (number / 5.0).floor == (number / 5.0).ceil
      message += "Plang"
    end
    if (number / 7.0).floor == (number / 7.0).ceil
      message += "Plong"
    end
    message.empty? ? number.to_s : message
  end

  def raindrops_fixed(number)
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
end
