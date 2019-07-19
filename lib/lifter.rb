
class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select { |membership| membership.lifter == self }
  end

  def gyms
    memberships.map { |memberships| memberships.gym }
  end

  def self.lifter_lift_total
    self.all.map { |lifter| lifter.lift_total }
  end

  def self.average_lift_total
    lifter_lift_total.reduce { |sum, entry| sum + entry } / lifter_lift_total.size.to_f
  end

  def gym_memberships_cost
    memberships.map { |membership| membership.cost }
  end

  def total_gym_memberships_cost
    gym_memberships_cost.reduce { |sum, membership_cost| sum + membership_cost }
  end

  def sign_up(cost, gym)
    Membership.new(cost, self, gym)
  end

end
