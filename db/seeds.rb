# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.create(name: 'Kooja', email: 'a@a.com', password: '123456')

f1 = Feed.create(title: '첫 번째 Feed 입니다', content: '친구들과 공유하고 싶은 이야기를 남겨봅시다', user_id: u.id)
f2 = Feed.create(title: '이번 겨울은 너무 추운 것 같아요', content: '겨울엔 태국이나 베트남에서 살고싶네요', user_id: u.id)

FeedComment.create(content: '댓글도 남길 수 있네요', feed_id: f1.id, user_id: u.id)
