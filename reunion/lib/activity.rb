class Activity
  attr_reader :name, :participants, :total_cost
  def initialize(name)
    @name = name
    @participants = {}
    @total_cost = 0
  end

  def add_participant(participant, cost)
    @participants[participant] = cost
    @total_cost += cost
  end

  def split
    @total_cost / @participants.keys.count
  end

  def owed
    output = {}
    @participants.each do |participant, cost|
      output[participant] = split - cost
    end
    output
  end
end