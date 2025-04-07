class Person
    attr_reader :name, :hobbies
  
    def initialize(name)
      @name = name
      @hobbies = []
    end
  
    def set_hobbies(hobby_string)
      @hobbies = hobby_string.split(",").map(&:strip)
    end
  
    def shared_hobbies(other_person)
      @hobbies & other_person.hobbies
    end
  
    def match_with_others(people)
      matches = people.map do |person|
        shared = shared_hobbies(person)
        [person.name, shared] unless shared.empty?
      end.compact
  
      matches.sort_by { |_, shared| -shared.size }
    end
  end
  
  # Sample test
  p1 = Person.new("Alice")
  p1.set_hobbies("Reading, Chess, Bicycling")
  
  p2 = Person.new("Bob")
  p2.set_hobbies("Chess, Movies, Bicycling")
  
  p3 = Person.new("Carol")
  p3.set_hobbies("Reading, Painting")
  
  matches = p1.match_with_others([p2, p3])
  puts matches.inspect
  