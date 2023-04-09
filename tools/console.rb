require_relative "../config/environment.rb"

    def reload
     load "config/environment.rb"
end

###  WRITE YOUR TEST CODE HERE ###
google = Company.first
instagram = Company.second
eras = Company.third
donda = Company.last

micky = Dev.first
mouse = Dev.second
cat = Dev.third
girlie = Dev.last

free1 = Freebie.first
free2 = Freebie.second
free3 = Freebie.find(3)
free4 = Freebie.find(4)
free5 = Freebie.find(5)
free6 = Freebie.find(6)
free7 = Freebie.find(7)
free8 = Freebie.last

### DO NOT REMOVE THIS
binding.pry

0