require 'random_data'
#create topics
 15.times do
   Topic.create!(
     name:         RandomData.random_sentence,
     description:  RandomData.random_paragraph
   )
 end
 topics = Topic.all




#Create Posts
50.times do
    Post.create!(
        topic:  topics.sample,
        title: RandomData.random_sentence,
        body: RandomData.random_paragraph
    )
end
posts = Post.all

# Create Sponsored Posts
5.times do
  SponsoredPost.create!(
      topic:  topics.sample,
      title:  RandomData.random_sentence,
      body:   RandomData.random_paragraph
  )
end



#Create Comments

100.times do
    Comment.create!(
        post: posts.sample,
        body: RandomData.random_paragraph
    )
end

puts "Seed finished"
puts "#{Topic.count} topics created"
puts "#{Post.count} post created"
puts "#{SponsoredPost.count} post created"
puts "#{Comment.count} comments created"
