require_relative 'gun_slinger'
require_relative 'sheriff'

hardin = GunSlinger.new({name: "James Wesley Hardin", reputation: "Outlaw"})
garrett = Sheriff.new({name: "Pat Garrett", reputation: "Honorable Lawman"})

garrett.wanted_poster(hardin)

puts garrett.i_could_be_your_huckleberry
puts hardin.you_got_the_wrong_man
puts  "---"
puts hardin.the_man_in_black
puts garrett.reach_for_the_sky
puts "---"
puts garrett.i_am_the_law
puts hardin.it_aint_your_day
