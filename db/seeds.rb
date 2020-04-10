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

Submission.create!(title: "Sass Mixins", body: "Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras mattis consectetur purus sit amet fermentum.",community: communities.first, user_id: user.id)

Submission.create!(title: "Object-Oriented Ruby patterns", body: "Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras mattis consectetur purus sit amet fermentum.",community: communities.first, user_id: user.id)

Submission.create!(title: "Sketch or Figma?", body: "Donec sed odio dui. Nullam id dolor id nibh ultricies vehicula ut id elit.", community: communities.last, user_id: user.id)

Submission.create!(title: "Responsive web design topics", body: "Curabitur blandit tempus porttitor. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.", community: communities[1], user_id: user.id)
Submission.create!(title: "Developer cheatsheets", body: "Curabitur blandit tempus porttitor. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.", community: communities[1], user_id: user.id)

Submission.create!(title: "Responsive frameworks", body: "Donec sed odio dui. Nullam id dolor id nibh ultricies vehicula ut id elit.", community: communities.last, user_id: user.id)

Submission.create!(title: "Test Driven Development", body: "Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Curabitur blandit tempus porttitor. Nulla vitae elit libero, a pharetra augue. Vestibulum id ligula porta felis euismod semper.", community: communities[1], user_id: user.id)

Submission.create!(title: "Marketing yourself as a designer", body: "Donec ullamcorper nulla non metus auctor fringilla. Nullam quis risus eget urna mollis ornare vel eu leo.", community: communities.last, user_id: user.id)

Submission.create!(title: "SEO for beginners", body: "Maecenas sed diam eget risus varius blandit sit amet non magna. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nullam id dolor id nibh ultricies vehicula ut id elit. Nullam quis risus eget urna mollis ornare vel eu leo.", community: communities.first, user_id: user.id)
