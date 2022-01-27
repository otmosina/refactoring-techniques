
def discount__before(val, quantity)
  if quantity > 50
    val = val - 2
  end
  return val
end

def discount__after(val, quantity)
  result = val
  if quantity > 50
    result = result - 2
  end
  return result
end

p discount__before 10, 100
p discount__after 10, 100