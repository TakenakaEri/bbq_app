# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

# 既存のデータをクリア
puts "既存データをクリアしています..."
Participation.destroy_all
User.destroy_all
Event.destroy_all

# イベント作成
puts "イベントを作成しています..."
bbq_event = Event.create!(
  name: "夏のBBQ大会 2025",
  date: DateTime.new(2025, 8, 30, 11, 0),
  location: "多摩川河川敷BBQ場",
  latitude: 35.6762,
  longitude: 139.6503,
  description: "夏の終わりを楽しむBBQイベント！みんなでワイワイ楽しみましょう"
)

# ユーザー作成
puts "ユーザーを作成しています..."
users_data = [
  {
    name: "田中 太郎",
    job: "エンジニア",
    bio: "システム開発を担当しています。特にバックエンド開発が得意です。",
    twitter_url: "https://twitter.com/tanaka_dev",
    avatar_url: "" # GitHub Pagesの準備ができたら設定
  },
  {
    name: "佐藤 花子",
    job: "デザイナー",
    bio: "UI/UXデザインを担当。ユーザーに優しいデザインを心がけています。",
    twitter_url: "https://twitter.com/sato_design",
    avatar_url: ""
  },
  {
    name: "山田 次郎",
    job: "営業",
    bio: "新規開拓営業を担当しています。お客様との関係構築が得意です。",
    twitter_url: "https://twitter.com/yamada_sales",
    avatar_url: ""
  },
  {
    name: "鈴木 美咲",
    job: "マーケター",
    bio: "デジタルマーケティング担当。SNS運用とコンテンツ制作をしています。",
    twitter_url: "https://twitter.com/suzuki_marketing",
    avatar_url: ""
  },
  {
    name: "渡辺 健一",
    job: "プロジェクトマネージャー",
    bio: "チーム全体のプロジェクト管理を行っています。効率的な進行を重視。",
    twitter_url: "https://twitter.com/watanabe_pm",
    avatar_url: ""
  },
  {
    name: "高橋 麻衣",
    job: "人事",
    bio: "採用と人材育成を担当。働きやすい環境づくりに取り組んでいます。",
    twitter_url: "https://twitter.com/takahashi_hr",
    avatar_url: ""
  }
]

users = users_data.map do |user_data|
  User.create!(user_data)
end

# 参加関係を作成
puts "参加関係を作成しています..."
participation_messages = [
  "BBQ楽しみにしています！肉を焼くのが得意なので任せてください。",
  "野菜料理とサラダを作ります。みんなで美味しく食べましょう♪",
  "BBQ初心者ですが、みなさんと楽しい時間を過ごしたいです！",
  "お酒とおつまみの準備は任せてください！盛り上げ役として頑張ります。",
  "全体の進行をサポートします。スケジュール通り楽しいBBQにしましょう！",
  "チーム交流の機会として、みんなが楽しめるよう頑張ります。お話しましょう！"
]

users.each_with_index do |user, index|
  Participation.create!(
    user: user,
    event: bbq_event,
    message: participation_messages[index]
  )
end

puts "シードデータの作成が完了しました！"
puts "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
puts "作成されたデータ:"
puts "イベント数: #{Event.count}"
puts "ユーザー数: #{User.count}"
puts "参加関係数: #{Participation.count}"
puts "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
