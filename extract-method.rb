#Before

class Before
  attr_accessor :name
  def initialize params = {}
    @name = params[:name] || "Default Name"
  end
  def print
    print_banner()

    puts "name: #{self.name}"
    puts "amount: #{get_outstanding()}"
  end

  def print_banner
    puts "BANNER"
  end


  def get_outstanding
    puts "0.0001"
  end

end

# AFTER
class After

  attr_accessor :name
  def initialize params = {}
    @name = params[:name] || "Default Name"
  end

  def print
    print_banner()
    print_details()
  end

  def print_details
    puts "name: #{self.name}"
    puts "amount: #{get_outstanding()}"
  end

  def print_banner
    puts "BANNER"
  end


  def get_outstanding
    puts "0.0001"
  end

end

Before.new.print
After.new.print



