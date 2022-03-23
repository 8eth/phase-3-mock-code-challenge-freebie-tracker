class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        freebies.where(item_name: item_name).any?

        # list_of_item_name = freebies.all.pluck(:item_name)
        # list_of_item_name.include?(item_name)

        # self.freebies.any? {|f| f.item_name == item_name}
    end

    def give_away(dev, freebie)
        freebies.where(id: freebie.id).update(dev: dev)

        # if received_one?(freebie.item_name)
        #     freebie.update(dev: dev)
        # else
        #     "You can't give something you don't have"
        # end
    end

end
