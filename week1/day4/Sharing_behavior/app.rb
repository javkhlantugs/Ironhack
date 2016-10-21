require_relative ("lib/caffiene_consumer.rb")
require_relative ("lib/programmer.rb")
require_relative ("lib/designer.rb")

jay = Programmer.new
jay.program
jay.receive_salary

santi = Designer.new
santi.design_things
