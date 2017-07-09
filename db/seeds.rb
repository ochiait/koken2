# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#coding: utf-8
Content.create!(body: '自宅で本人に面会')
Content.create!(body: '施設で本人に面会')
Content.create!(body: '施設で本人に面会')
Content.create!(body: '自宅の確認')
Content.create!(body: '通帳記帳')
Content.create!(body: '支払い処理')
Content.create!(body: 'その他')

Guardian.create!(
	email:'tanaka@hogehoge.com',
	password:123456,
	company_name:'田中行政書士事務所',
	last_name:'田中',
	first_name:'一郎',
	last_name_kana:'タナカ',
	first_name_kana:'イチロウ',
	zip:'155-0044',
	pref:'東京都',
	city:'世田谷区',
	addr1:'下北沢',
	addr2:'2-3-4',
	tel:'03-3456-9876',
	mobile:'090-3456-3567',
	url:'http://about.kokennin.com/'
)

Ward.create(name:"後見人 太郎", address:"東京都世田谷区1-2-3", tel:"03-1234-5678", sex:1, guardian_id:1)
Ward.create(name:"山田 太郎", address:"埼玉県さいたま区1-2-3", tel:"03-1234-5678", sex:1, guardian_id:1)
Ward.create(name:"佐藤 花子", address:"千葉県中央区1-2-3", tel:"03-1234-5678", sex:2, guardian_id:1)
Ward.create(name:"竹田 よつこ", address:"茨城県中区1-2-3", tel:"03-1234-5678", sex:2, guardian_id:1)
Ward.create(name:"鈴木 龍之介", address:"群馬県港区1-2-3", tel:"03-1234-5678", sex:1, guardian_id:1)
