puts



# Modules don’t have instances
# A class can have only one superclass, but it can mix in as many modules as it wants.

class Stack

  attr_reader :stack

  def initialize
    @stack = []
  end

  def add_to_stack(obj)
    @stack.push(obj)
  end

  def take_from_stack
    @stack.pop
  end

end

class Suitcase
end

class CargoHold < Stack

  def load_and_report(obj)
    print "Loading object "
    puts obj.object_idadd_to_stack(obj)
  end

  def unload
    take_from_stack
  end

end



puts