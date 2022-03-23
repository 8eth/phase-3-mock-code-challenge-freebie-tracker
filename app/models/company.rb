class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def give_freebie(dev, item_name, value)
        freebies.create(item_name: item_name, value: value, dev: dev)
    end

    def self.oldest_company
        self.all.order(:founding_year).first

        # self.all.min_by(&:founding_year)
        # self.all.min_by {|c| c.founding_year}
        # self.all.minimum(:founding_year) #this gets only the year
        
    end

end
