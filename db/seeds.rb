# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

50.times do |n|
	cases = Case.create(
											name: "啊猫-#{n+1}",
											phone: "1300000000#{n}",
											address: "家庭住址",
											work: "工作单位",
											relation: "母",
											cname: "啊服",
											ename: "jone",
											gender: "男",
											birthday: "2000-5-3",
											school_id: 1,
											employee_id: 1,
											source_id: 1,
											status: "无效",
											comment: "test"
		)
end

schools = School.create( name: "school",
												 address: "address",
												 contacts: "master",
												 phone: "130",
												 comment: "test"
	)

sources = Source.create( content: "content"
	)

