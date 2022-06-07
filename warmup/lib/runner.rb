require_relative 'gun_slinger'
require_relative 'sheriff'

hardin = GunSlinger.new({name: "James Wesley Hardin", reputation: "Outlaw"})
garrett = Sheriff.new({name: "Pat Garrett", reputation: "Honorable Lawman"})

garrett.wanted_poster(hardin)

garrett.i_could_be_your_huckleberry
hardin.you_got_the_wrong_man
puts  "---"
garrett.i_am_the_law
hardin.the_man_in_black
puts "---"
garrett.fastest_hands_in_the_west
hardin.it_aint_your_day
