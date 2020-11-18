class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
    
    def initialize (name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness 
        @hygiene = hygiene

    end

    def happiness
        @happiness > 10 ? 10 : @happiness < 0 ? 0 : @happiness
        # @happiness = num
        # @happiness = 10 if @happiness < 10
        
        # @happiness > 10? 10 : @happiness
        # @happiness = 0 if @happiness < 0
    end

    def hygiene
        @hygiene > 10 ? 10 : @hygiene < 0 ? 0 : @hygiene
    end 



    def happy?
        # @happiness > 7? true : @happiness 
        happiness > 7
    end

    def clean?
        hygiene > 7
    end

    def get_paid(salary)
        self.bank_account += salary
        'all about the benjamins'
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        [friend, self].each {|o| o.happiness += 3 }
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
      
    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"     
        end

       
        

            

    end
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
        #   def start_conversation(person, topic)
    #     objects = [self, person]
    #     if topic == "politics"
    #       objects.each { |o| o.happiness -= 2}
    #       first, second = ["partisan", "lobbyist"]
    #     elsif topic == "weather"
    #       objects.each { |o| o.happiness += 1}
    #       first, second = ["sun", "rain"]
    #     end
    #     first ||= "blah"
    #     second ||= "blah"
    #     base_string = "blah blah #{first} blah #{second}"
    #   end

end
