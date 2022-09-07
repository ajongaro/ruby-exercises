class Retirement

  def calculate(current_age, retirement_age)
    if current_age < 0
      return "Error. Age cannot be negative."
    elsif retirement_age < 0
      return "Error. Retirement age cannot be negative."
    else
      "You have #{retirement_age - current_age} years left until you can retire. " +
      "It is 2015, so you can retire in #{2015 + (retirement_age - current_age)}."
    end
  end
end
