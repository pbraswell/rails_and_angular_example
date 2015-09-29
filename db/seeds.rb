require 'faker'

Group.delete_all
Group.create([
  { name: 'Ben Franklin Labs' },
  { name: 'Snip Salon Software' },
  { name: 'GloboChem' },
  { name: 'TechCorp' },
])

Contact.delete_all
for contacts in 1..10 do
	Contact.create(name: Faker::Name.name,
		phone: Faker::PhoneNumber.phone_number,
		address: Faker::Address.street_address,
	    email: Faker::Internet.email,
	    website: Faker::Internet.url,
	    notes: Faker::Lorem.words(5))
end
