class Student < ActiveRecord::Base

        def initialize(params)
                super
                self.active = false unless self.active
        end

        def to_s
                self.first_name + " " + self.last_name
        end

end