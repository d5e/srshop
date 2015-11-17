module ApplicationHelper
  
  def curr(n, u=nil)
    s = number_with_precision( n, precision: 2, strip_insignificant_zeros: false)
    "#{s} #{u}"
  end
  
  def curr_or_text(n, text="", u=nil)
    if n == 0.0
      text
    else
      curr(n, u)
    end
  end
  
end
