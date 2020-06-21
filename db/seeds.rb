# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

EMAIL = 'test@example.com'
PASSWORD = 'password'

ADMINEMAIL = 'admin@example.com'
ADMINPASS = 'password'
#通常ユーザ： テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  puts 'ユーザーの初期データインポートに成功しました。'
end

#管理者： テストユーザーが存在しないときだけ作成
AdminUser.find_or_create_by!(email: ADMINEMAIL) do |admin_user|
  admin_user.password = ADMINPASS
  puts '管理者の初期データインポートに成功しました。'
end
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?