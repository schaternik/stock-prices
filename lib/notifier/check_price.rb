class CheckPrice
  def call(price, boundary)
    msg = price > boundary ? "Price is #{price}, time to buy" : "Too high"
    puts msg
  end
end
