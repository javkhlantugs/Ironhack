class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end

ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
  go = ProgrammingLanguage.new("Go", 6, "Static")
  rust = ProgrammingLanguage.new("Rust", 5, "Static")
  swift = ProgrammingLanguage.new("Swift", 2, "Static")
  java = ProgrammingLanguage.new("Java", 20, "Static")

  array_of_languages = [ruby, python, javascript, go, rust, swift, java]

def array_printer(array)
  array.each do | language |
    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  end
end


aged_languages = array_of_languages.map do |lingua|
	ProgrammingLanguage.new(lingua.name, lingua.age + 1, lingua.type)
end

array_printer(aged_languages)

puts ""
puts ""
puts "-----------"


sorted_languages = []
sorted_languages = array_of_languages.sort_by do
	|language|
	language.age
end

array_printer(sorted_languages.reverse)

puts "==================="

sorted_languages.delete_if {|language| language.name == "Java"}

array_printer(sorted_languages)
puts "**********"
array_printer(sorted_languages.shuffle)

puts ""
puts ""
puts "============ssss"
# it won't work because a new class instance has to be declared to permenantly change the array with methods with "!"
array_of_languages.map! { | language |  ProgrammingLanguage.new(language.name += "!!!" , language.age, language.type)
}

array_printer(array_of_languages)