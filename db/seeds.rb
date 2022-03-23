puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
Freebie.create(item_name: "Freebie 1", value: 10 , company_id: 1, dev_id: 1)
Freebie.create(item_name: "Freebie 2", value: 15 , company_id: 1, dev_id: 2)
Freebie.create(item_name: "Freebie 3", value: 20 , company_id: 2, dev_id: 3)
Freebie.create(item_name: "Freebie 4", value: 25 , company_id: 2, dev_id: 4)
Freebie.create(item_name: "Freebie 5", value: 30 , company_id: 3, dev_id: 1)
Freebie.create(item_name: "Freebie 6", value: 35 , company_id: 3, dev_id: 2)
Freebie.create(item_name: "Freebie 7", value: 40 , company_id: 4, dev_id: 3)
Freebie.create(item_name: "Freebie 8", value: 45 , company_id: 4, dev_id: 4)

puts "Seeding done!"
