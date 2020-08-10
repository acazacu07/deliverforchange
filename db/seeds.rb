# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(
  id: 1,
  name: "Admin User",
  address: "Dublin",
  email: "admin@deliverforchange.ie",
  password: "password",
  password_confirmation: "password"
)
user.save!

Charity.create!([{
  name: "Anonymous Hope",
  address: "4157 Dane Ridge",
  county: "Cork",
  phonenumber: "047564854",
  description: "We provide life-changing services for people fighting addiction",
  image: Rails.root.join("app/assets/images/anonymous hope.png").open
},
  {name: "Bet on Better",
  address: "264 Hauck Wall",
  county: "Cavan",
  phonenumber: "2025550175",
  description: "We feed more than 1,400 daily.",
  image: Rails.root.join("app/assets/images/bet on better.png").open
 },
  {name: "Care Club",
  address: "3, L1019",
  county: "Roscommon",
  phonenumber: "2025550170",
  description: "We work hard to alleviate and end poverty",
  image: Rails.root.join("app/assets/images/careclub.png").open
 },
  {name: "Charitable",
  address: "3078 Kilback Vista",
  county: "Sligo",
  phonenumber: "2025550109",
  description: "We fight for animal welfare",
  image: Rails.root.join("app/assets/images/charitable.png").open
 },
  {name: "Donation Nation",
  address: "103 Michaela Common",
  county: "Waterford",
  phonenumber: "2025550144",
  description: "We help women who are homeless or at risk of becoming homeless",
  image: Rails.root.join("app/assets/images/donation nation.png").open
 },
  {name: "Fortune Found",
  address: "94666 Forrest View",
  county: "Dublin",
  phonenumber: "2025550144",
  description: "We help raise awareness about the challenges older people face",
  image: Rails.root.join("app/assets/images/fortune found.png").open
 },
 {name: "Gracious Givers",
  address: "39567 Justus Islands",
  county: "Limerick",
  phonenumber: "2025550154",
  description: "Free addiction service that helps reduce harm and drug use ",
  image: Rails.root.join("app/assets/images/gracious givers.png").open
 },
 {name: "Life of Giving",
  address: "888 Schuyler Keys",
  county: "Cork",
  phonenumber: "0209156836",
  description: "We help to feed over 1,000 people in Cork",
  image: Rails.root.join("app/assets/images/life of giving.png").open
 },
  {name: "Smile Charities",
  address: "41371 Cleora Hills",
  county: "Dublin",
  phonenumber: "0209141232",
  description: "We open doors for homeless people in Dublin",
  image: Rails.root.join("app/assets/images/smile charities.png").open
 },
 {name: "Worthy purpose",
  address: "153 Schiller Highway",
  county: "Galway",
  phonenumber: "0209197371",
  description: "We listen in confidence and without judgement",
  image: Rails.root.join("app/assets/images/worthy purpose.png").open
 }])