# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

# ユーザ
csv_path = Rails.root.join('db', 'seeds', 'users.csv')
CSV.foreach(csv_path, headers: true) do |row|
  User.create!(
    name: row['氏名'],
  )
end

# プロジェクト
csv_path = Rails.root.join('db', 'seeds', 'projects.csv')
CSV.foreach(csv_path, headers: true).with_index do |row, index|
  Project.create!(
    title: row['プロジェクト名'],
    body: row['概要'],
    user: User.find(index + 1)
  )
end

# ページ
csv_path = Rails.root.join('db', 'seeds', 'pages.csv')
CSV.foreach(csv_path, headers: true).with_index do |row, index|
  Page.create!(
    title: row['タイトル'],
    body: row['本文'],
    user: User.find(index + 1)
  )
end
