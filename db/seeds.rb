# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



user = User.create!( email: "powersjcb@gmail.com",
              password: 'foobarcats',
              password_confirmation: 'foobarcats')
group = user.groups.create!( name: "San Francisco Group 1",
                            description: "group that lives by the bay")
organization = []
listing = []
n=0


20.times {
  user = User.create!( :email => "example-#{n}@gmail.com", 
                      :password => 'topsecret',
                      :password_confirmation => 'topsecret')
  
  user.memberships.create! group_id: group.id
  
  if n % 6 == 0
    organization = group
                    .organizations
                    .create!(
                      user_id: user.id,
                      name: "Big company #{n}",
                      description: "Make shareholders money")
  end

  listing = organization.listings.create!(
              user_id: user.id,
              name: "Engineering job #{n}",
              description: "Awsome role that you want to apply for")

    # #apply for all available
  Listing.all.each {|listing|
    user.opportunities.create!(listing_id: listing.id, status: 'watching everything')
  }
  n += 1
}




