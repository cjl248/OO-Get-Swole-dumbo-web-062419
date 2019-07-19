# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new("matt", 150)
l2 = Lifter.new("paul", 120)
l3 = Lifter.new("luke", 170)
l4 = Lifter.new("jesus", 9999999)
l5 = Lifter.new("CHRIS", 450)

g1 = Gym.new("mr_softee")
g2 = Gym.new("mc_fluree")

m1 = Membership.new(19, l1, g1)
m2 = Membership.new(50, l1, g2)
m3 = Membership.new(83, l2, g1)
m4 = Membership.new(22, l3, g1)
m5 = Membership.new(29, l4, Gym.new("the father's gym"))




binding.pry

puts "Gains!"
