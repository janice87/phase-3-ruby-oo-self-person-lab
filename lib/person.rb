# your code goes here
class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene # only need getter bc we are using setter methods for these attributes
   
    def initialize(name, bank_account=25, happiness=8, hygiene=8 )
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    # setter method needs the = after method name, per learn test
    def happiness=(num)
      @happiness = if num > 10
                    10
                    elsif num <= 0
                        0
                    else 
                        num
                    end
    end

    # setter method for hygiene
    def hygiene=(num)
        @hygiene = if num > 10
                      10
                      elsif num <= 0
                          0
                      else 
                          num
                      end
      end
    
    # need ? after method name bc returns true or false (per learn test)
    def clean?
        self.hygiene > 7   
        # self.hygiene > 7 ? true : false #ternary works too     
    end

    def happy?
        happiness > 7
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
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

    # per readme accepts another instance of the Person class, "friend"
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

# doesnt work "Hi #{friend}! It's #{name}. How are you?"

# "Hi #{friend}! It's #{self.name}. How are you?"    
# returns "Hi #<Person:0x0000563a2787b948>! It's Felix. How are you?"

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2 
            friend.happiness -= 2 
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else  
            "blah blah blah blah blah"
        end
    end

    # using case 
    # def start_conversation(friend, topic)
    #     case topic
    #     when "politics"
    #         self.happiness -= 2 
    #         friend.happiness -= 2 
    #         "blah blah partisan blah lobbyist"
    #     when "weather"
    #         self.happiness += 1
    #         friend.happiness += 1
    #         "blah blah sun blah rain"
    #     else  
    #         "blah blah blah blah blah"
    #     end
    # end

end