class User < ApplicationRecord
  has_many :participations, dependent: :destroy
  has_many :events, through: :participations
  
  validates :name, presence: true

 # GitHub Pages + GitHub リポジトリを使用してアバターを表示する
  def avatar_url
    base_url = "https://あなたのユーザー名.github.io/bbq-app-assets/avatars"
    
    avatar_mapping = {
      "田中 太郎" => "tanaka",
      "佐藤 花子" => "sato",
      "山田 次郎" => "yamada",
      "鈴木 美咲" => "suzuki",
      "渡辺 健一" => "watanabe"
    }
    
    filename = avatar_mapping[name] || "default"
    "#{base_url}/#{filename}.png"
  end
end
