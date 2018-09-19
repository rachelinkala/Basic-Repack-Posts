100.times do
  Post.create(
    name: Faker::Name.name,
    content: Faker::MichaelScott.quote
  )
end
