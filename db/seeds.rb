# 既存のデータをクリア
puts "既存データをクリアしています..."
Participation.destroy_all
User.destroy_all
Event.destroy_all

# イベント作成
puts "イベントを作成しています..."
bbq_event = Event.create!(
  name: "TechBull BBQ 2025",
  date: DateTime.new(2025, 8, 30, 19, 0),
  location: "THE BBQ BEACH in TOYOSU",
  latitude: 35.642342,
  longitude: 139.778018,
  description: "TechBullメンバーの交流をかねて、ワイワイお肉を楽しみましょう！"
)

# ユーザー作成
puts "ユーザーを作成しています..."
users_data = [
  {
    name: "Adachi Ryo",
    job: "FindyのSRE",
    bio: "1989年生まれのFindy/SRE。エンジニア歴は13年目。ホスティングから大規模なアドテクなどのインフラエンジニアとして携わる。現在はSREとしてサービスの信頼性向上やセキュリティ強化などを担当。個人事業主では数社サーバー保守とベンチャー企業のインフラコンサルティングを行うほか、TechBullを創業し、未経験者向けにSREのコーチングやコミュニティ運営、LT大会の開催、 会員管理システム「Members」の開発をリードしている。さらに、エンジニア向けYouTubeメディア「TECH WORLD」ではSREとの対談を行い、過去には脆弱性スキャナ「Vuls」のOSS活動にも貢献。愛犬でもある所長のBull氏に疲労困憊。",
    twitter_url: "https://x.com/adachin0817",
    avatar_url: "https://github.com/user-attachments/assets/93ed8c4a-77bf-4661-8311-0dc3ffe59a1c" # GitHub Pagesの準備ができたら設定
  },
  {
    name: "Hara Koji",
    job: "FindyのSRE",
    bio: "未経験からエンジニアへキャリアチェンジしエンジニア歴としては4年目となる。SESにて様々なAWS案件に携わる。SRE領域の知識を身につけるためTechBullコミュニティへ参画。元運用監視オペレーターという立場からAWSエンジニアやSREへキャリアアップした経験やクラウド関連の記事を執筆しつつ、コミュニティの技術フォローと1on1を実施し、現在はSREとして、Datadogでのオブザーバビリティ強化やTerraformでのIaC環境の整備、コスト削減施策の実施などを行っている。",
    twitter_url: "https://x.com/kouzyunJa",
    avatar_url: "https://github.com/user-attachments/assets/9bb86255-13f4-46fd-9cad-998cf361cae1" # GitHub Pagesの準備ができたら設定
  },
    {
    name: "Tomita kazuki",
    job: "ソフトウェアエンジニア・SRE",
    bio: "約7年間、和食料理人として働き、コロナ禍をきっかけにエンジニアへとキャリアチェンジする。現在はRuby on Railsを中心にバックエンド開発を担当し、ReactやTypeScriptを使ったフロントエンド開発にも取り組んでいる。以前はプログラミングスクールを運営する会社で、エンジニア講師として未経験の方の学習支援を行う。TechBullに出会えたことで、今後はSREになるために技術のキャッチアップや運営チームとして活動。",
    twitter_url: "https://x.com/Cooking_ENG",
    avatar_url: "https://github.com/user-attachments/assets/e452471e-7582-4b22-a1f6-bc25d9df6bdd" # GitHub Pagesの準備ができたら設定
  },
    {
    name: "Hashino Mikiko",
    job: "バックエンドエンジニア",
    bio: "学生時代は、エンジニア学生団体の代表として企画・運営を担いながら、エンジニアリングのインターンシップにも積極的に参加。新卒では、ファッションECサイトのバックエンド開発に携わる。現在は、Findyでバックエンドを担当。「omochi gem」のOSS開発もしており、Shibuya.rbも参加している。将来は Embedded SREを目指しています。",
    twitter_url: "https://x.com/mikiko_bridge",
    avatar_url: "https://github.com/user-attachments/assets/bf7379b7-1f8c-464b-86b4-14d2286c977f" # GitHub Pagesの準備ができたら設定
  },
    {
    name: "Taba Hiroki",
    job: "SaaS開発",
    bio: "学生時代はプログラミングスクールでメンターの経験。現在は24卒Webエンジニアとして、金融ドメインのSaaS開発に従事している。フロントエンドからインフラまで、フルスタックにできるエンジニアを目指している。",
    twitter_url: "https://x.com/tabamarine220",
    avatar_url: "https://github.com/user-attachments/assets/d384ebfd-cfd7-4193-aab5-e6ac12baeaeb" # GitHub Pagesの準備ができたら設定
  },
    {
    name: "吉野 友啓",
    job: "テクノブレーン/キャリアアドバイザー",
    bio: "酒場とダーツが好きです！微力ながら盛り上げられればと思います！",
    twitter_url: "https://x.com/tbcyoshino",
    avatar_url: "https://github.com/user-attachments/assets/79ad5242-378b-4f27-b074-501cc153d186" # GitHub Pagesの準備ができたら設定
  },
    {
    name: "くのやす",
    job: "フルスタックエンジニア",
    bio: "スタートアップでフルスタックエンジニアしてます。",
    twitter_url: "https://x.com/kunoyasu",
    avatar_url: "https://ca.slack-edge.com/T7W2VHWGP-U08751ZLQP4-8094aed997a3-512" # GitHub Pagesの準備ができたら設定
  },
    {
    name: "財津宏幸",
    job: "インフラエンジニア",
    bio: "熊本出身の30歳です！経歴は、酪農組合→システム開発→自動車工場で、現在はインフラエンジニアとしてAWSの構築をしております。インフラエンジニアは1年目のペーペーですが、さまざまな技術を学びたく、参加させていただきました。",
    twitter_url: "https://x.com/ponkichi_infra",
    avatar_url: "" # GitHub Pagesの準備ができたら設定
  },
    {
    name: "Taichi Iwaki",
    job: "クラウドインフラエンジニア",
    bio: "このようなコミュニティに参加するのは、初めてで不慣れな部分もあると思いますが、よろしくお願いします！",
    twitter_url: "https://x.com/IwaTech1222",
    avatar_url: "" # GitHub Pagesの準備ができたら設定
  },
  {
    name: "吉澤 靖裕",
    job: "エンジニア修行中",
    bio: "前前職はSES企業で自動運転のシミュレーションのテスト業務を3年行なっておりました。まずは、自走力をつけ、その後、自社開発企業へ就職、そして、皆様のようなつよつよエンジニアになることを目標にしています！今後ともよろしくお願いします",
    twitter_url: "https://x.com/hirohiro989",
    avatar_url: "" # GitHub Pagesの準備ができたら設定
  },
    {
    name: "Inshiku Han",
    job: "フロントエンドエンジニア",
    bio: "Frontend Developer from 🇰🇷, live in 🇯🇵",
    twitter_url: "https://x.com/inshiku_han",
    avatar_url: "" # GitHub Pagesの準備ができたら設定
  },
    {
    name: "NayaTaiyo",
    job: "インフラエンジニア",
    bio: "6月にSATORI株式会社に入社いたしました。",
    twitter_url: "https://x.com/NayaTaiyo",
    avatar_url: "https://github.com/user-attachments/assets/f7213ae6-84ab-4b9a-9d42-71dc7a72066a" # GitHub Pagesの準備ができたら設定
  },
    {
    name: "津田 和樹",
    job: "SQL使い",
    bio: "テックワールドさんの動画で安達さんを知り本日から参加させていただきました！現職ではSQLを主に触っているのですが、全体的にスキル不足を感じているので向上できるよう頑張りたいと思います。2000年生まれで同年代の方が多いと聞いたので是非交流もできたら嬉しいです！！これからよろしくお願いいたします",
    twitter_url: "",
    avatar_url: "" # GitHub Pagesの準備ができたら設定
  },
    {
    name: "やまけん",
    job: "バックエンドエンジニア",
    bio: "はじめまして、22卒のやまけんです！お仕事ではバックエンドの開発、運用やDBのクエリチューニングなどを行っています。",
    twitter_url: "https://x.com/yamaken_0216",
    avatar_url: "" # GitHub Pagesの準備ができたら設定
  },
    {
    name: "hasumi naoki",
    job: "システムエンジニア",
    bio: "がんばります！",
    twitter_url: "",
    avatar_url: "" # GitHub Pagesの準備ができたら設定
  },
    {
    name: "Momoko Nakajima",
    job: "Findy新卒入社",
    bio: "BBQの準備お手伝いします！！！",
    twitter_url: "",
    avatar_url: "" # GitHub Pagesの準備ができたら設定
  },
    {
    name: "Ishikawa kazuki",
    job: "機械学習エンジニア",
    bio: "WED株式会社の機械学習エンジニア / 趣味は謎解き (解くのも作るのも) ",
    twitter_url: "https://x.com/ishi2ki",
    avatar_url: "https://github.com/user-attachments/assets/4bd718a9-64e9-42f5-8070-0f44387f3c05" # GitHub Pagesの準備ができたら設定
  },
    {
    name: "Oya Takenori",
    job: "FindyのSRE",
    bio: "ファインディの一人目SRE。お子さんと参加しています。",
    twitter_url: "https://x.com/taken0r10",
    avatar_url: "" # GitHub Pagesの準備ができたら設定
  },
    {
    name: "Takemura Ayaka",
    job: "クラウドエンジニア",
    bio: "SESの会社でオンプレミスのネットワークエンジニアとして、クライアントのネットワーク運用保守や移行プロジェクトに携わる。2024年5月にクラウドエンジニアとして転職。",
    twitter_url: "https://x.com/ayaka_t_1005",
    avatar_url: "https://github.com/user-attachments/assets/967672fd-bb69-4b67-82d6-ab596b6988fb" # GitHub Pagesの準備ができたら設定
  },
    {
    name: "西川 雄也",
    job: "DevRel",
    bio: "ファインディ第1期新卒。事業開発。テレアポと飛び込み→日本最大規模の学生ビジコン企画 →飲食店の事業継承事業で起業→Ubiq Inc. CSO→ファインディ ベンチャー稲門会事務局、井上達彦研究室(ビジネスモデル研究)",
    twitter_url: "https://x.com/nishiphilo",
    avatar_url: "" # GitHub Pagesの準備ができたら設定
  },
    {
    name: "林",
    job: "SWE",
    bio: "SWE/ Rails, Next.js, GraphQLとかをよく触ってます。",
    twitter_url: "https://x.com/hyuta555",
    avatar_url: "" # GitHub Pagesの準備ができたら設定
  },
    {
    name: "Sadayoshi Tada",
    job: "筋肉エンジニア",
    bio: "My life's work is to keep blogging about the trajectory of my growth!",
    twitter_url: "https://x.com/taddy_919",
    avatar_url: "" # GitHub Pagesの準備ができたら設定
  },
    {
    name: "yusuke inoue",
    job: "大学生 (修士1年)",
    bio: "クラウドを作れる人になる！",
    twitter_url: "https://x.com/cyokozai0",
    avatar_url: "" # GitHub Pagesの準備ができたら設定
  },
    {
    name: "fukushima ryo",
    job: "",
    bio: "",
    twitter_url: "",
    avatar_url: "" # GitHub Pagesの準備ができたら設定
  },
    {
    name: "ninomiya ryo",
    job: "Webエンジニア",
    bio: "はじめまして:両手です。ついさっきFindyのイベントでadachiさんと繋がらせていただきましたRyoです！Webエンジニアやってます！趣味は筋トレ、洋楽、外国人と話すことです。皆さんと色々お話ししたいです！",
    twitter_url: "https://x.com/ninomin_tech",
    avatar_url: "" # GitHub Pagesの準備ができたら設定
  },
    {
    name: "ninomiya ryo",
    job: "Webエンジニア",
    bio: "はじめまして:両手です。ついさっきFindyのイベントでadachiさんと繋がらせていただきましたRyoです！Webエンジニアやってます！趣味は筋トレ、洋楽、外国人と話すことです。皆さんと色々お話ししたいです！",
    twitter_url: "https://x.com/ninomin_tech",
    avatar_url: "" # GitHub Pagesの準備ができたら設定
  },
  {
    name: "yuichi ito",
    job: "SRE",
    bio: "",
    twitter_url: "",
    avatar_url: "" # GitHub Pagesの準備ができたら設定
  },
  {
    name: "yuto ota",
    job: "エンジニア",
    bio: "みなさま、はじめまして！太田悠斗（おおたゆうと）と申します。社会人1年目（22歳）で独立系Slerで勤務しています！（まだ研修中）。最近は、個人開発や新しい技術に触れることが大好きで、最近はフルスタックアプリや小規模なWebサービスをコツコツ作っています。この場を通して、みなさまから学ばせていただきながら、少しずつ成長していけたらと思っています。どうぞよろしくお願いいたします！",
    twitter_url: "https://x.com/yutttoooo09",
    avatar_url: "" # GitHub Pagesの準備ができたら設定
  },
  {
    name: "れなっち",
    job: "ソフトウェアエンジニア",
    bio: "HTMLとCSSに感動して、未経験からエンジニアへキャリアチェンジして2年目。現在は、フロントエンドエンジニアとして自社開発に携わる。また、副業でプログラミングスクールの講師をしている。技術力を上げること・エンジニアに関わるさまざまな仕事を出来るようになることを目標にしている。TechBullではイベント運営や広報のお手伝いをしている。",
    twitter_url: "https://x.com/hfslca7439",
    avatar_url: "https://github.com/user-attachments/assets/57d02d5d-cdfc-41fd-927a-5d6c81a1a67b" # GitHub Pagesの準備ができたら設定
  },
  {
    name: "なかyarn",
    job: "修行中",
    bio: "未経験エンジニア向けの研修や、プログラミングスクールでの質問対応・就職支援を担当。メインの開発言語はRuby on Railsで、時々Javaも使用。サービス全体の構造を理解したいという思いから、フロントエンドやクラウドなど幅広い分野を横断的に学習中。TechBullではイベント運営や広報のお手伝いをしている。",
    twitter_url: "https://x.com/nakayarn",
    avatar_url: "https://github.com/user-attachments/assets/171ab2a7-0510-4866-b336-bb379c920d52" # GitHub Pagesの準備ができたら設定
  },  {
    name: "菊本 久寿",
    job: "RUNTEQ校長",
    bio: "SIerなどを経てngigroup（現ユナイテッド）技術部部長に就任し、アドテク関連サービスの立ち上げを行う。  2012年よりフリーランスとして独立し、複数のスタートアップの開発支援を行う。その後ポケットコンシェルジュを運営する株式会社ポケットメニューの取締役CTOに就任。 退任後2014年10月に新サービスの立ち上げに特化して開発を行う株式会社スタートアップテクノロジーを設立。 様々なスタートアップの開発や、技術指導を行う。現在はプログラミングスクール「RUNTEQ」の校長としてWebエンジニアを育成。約1000名のWebエンジニアを輩出してきた。",
    twitter_url: "https://x.com/hisaju01/bio",
    avatar_url: "" # GitHub Pagesの準備ができたら設定
  },
  
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
