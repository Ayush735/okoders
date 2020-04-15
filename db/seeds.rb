# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# SHOWS = ['Bhabhi Ji Ghar Par Hai', 'Happu Ki Ultan Pultan' 'Suites','Shark Tank','Lord of the Rings']
Channel.create([{ name: 'Star Plus' }, { name: 'Zee Cinema' }])

Channel.all.each do |channel|
  5.times do |i|
    start_time =  Time.now + "#{i}".to_i.hour
    end_time   =  start_time + 1.hour
    channel.tv_shows.create( name: "show_#{i}", start_time: start_time, end_time: end_time )
  end
end