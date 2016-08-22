%w(apple cherry).each do |item|
  new_item = Item.create({title: item})
  1000.times do
    new_item.click_tracks.create!({created_at: rand(3.years.ago..Time.now) })
  end
end