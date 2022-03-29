class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        auditions.map{|a| a.actor}
    end


    def locations
        auditions.map{|a| a.location}
    end

    def lead 
          if auditions.find do |f| f.hired?
            return f
          end
            if f.hired? == false
        puts "no actor has been hired for this role"
            end
        end
    end

    def understudy
    end
end