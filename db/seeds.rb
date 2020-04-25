admin = User.where(username: 'admin').first_or_create(
  email: 'admin@email.com',
  password: '123456'
)

user1 = User.where(username: 'user_1').first_or_create(
  email: 'user1@email.com',
  password: '123456'
)

user2 = User.where(username: 'user_2').first_or_create(
  email: 'user2@email.com',
  password: '123456'
)

category1 = Category.where(name: 'Programming').first_or_create
category2 = Category.where(name: 'Fishing').first_or_create

article1 = user1.articles.where(title: 'Hello').first_or_create(
  description: 'Hello guys! This is an example!',
  category_ids: [category1.id, category2.id]
)

article2 = user2.articles.where(title: 'Hi!').first_or_create(
  description: 'This is another example!',
  category_ids: [category1.id, category2.id]
)
