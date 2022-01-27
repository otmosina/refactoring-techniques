
def found_person__before(people)
  i = 0
  while i < people.size
    if people[i] == "Don"
      return "Don"
    end
    if people[i] == "John"
      return "John"
    end
    if people[i] == "Kent"
      return "Kent"
    end
    i += 1
  end

  return ""
end

def found_person__after(people)
  candidates = ["Don", "John", "Kent"]
  people.each do |human|
    return human if candidates.include? human
  end
end

p found_person__before ["1", "Don"]
p found_person__after ["1", "Don"]