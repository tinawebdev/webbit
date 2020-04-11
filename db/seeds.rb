# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!({
  email: "test@example.com",
  password: "password",
  password_confirmation: "password",
  admin: true,
  username: "test"
})

communities = Community.create(
  [{
    name: "WebDesign",
    title: "Web Design",
    description: "All things web design",
    sidebar: "All things web design",
    user_id: user.id
  },
  {
    name: "WebDevelopment",
    title: "Web Development",
    description: "All things web development",
    sidebar: "All things web development",
    user_id: user.id
  },
  {
    name: "Design",
    title: "Design",
    description: "All things design",
    sidebar: "All things design",
    user_id: user.id
  }
])

Submission.create!(title: "Sass Mixins", community: communities.first, user_id: user.id)
Submission.create!(title: "Object-Oriented Ruby patterns", community: communities.first, user_id: user.id)
Submission.create!(title: "Sketch or Figma?", community: communities.last, user_id: user.id)
Submission.create!(title: "Responsive web design topics", community: communities[1], user_id: user.id)
Submission.create!(title: "Developer cheatsheets", community: communities[1], user_id: user.id)
Submission.create!(title: "Responsive frameworks", community: communities.last, user_id: user.id)
Submission.create!(title: "Test Driven Development", community: communities[1], user_id: user.id)
Submission.create!(title: "Marketing yourself as a designer", community: communities.last, user_id: user.id)
Submission.create!(title: "SEO for beginners", community: communities.first, user_id: user.id)
