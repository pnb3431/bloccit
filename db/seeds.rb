require 'random_data'
#Create Posts
#50.times do
#    Post.create!(
#        title: RandomData.random_sentence,
#        body: RandomData.random_paragraph
#    )
#end
#posts = Post.all

#Create Comments

#100.times do
#    Comment.create!(
#        post: posts.sample,
#        body: RandomData.random_paragraph
#    )
#end

Post.find_or_create_by(title: 'Scarlett', body: 'new body') 

Post.find_or_create_by(title: 'Scarlett') do |post|
  post.body = 'this is the new body for this one'
end
  

puts "Seed finished"
puts "#{Post.count} post created"
puts "#{Comment.count} comments created"
