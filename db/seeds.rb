Production.destroy_all
CrewMember.destroy_all

Production.create(title: 'The Peripheral', genre: 'Opera', budget: 99, image: 'https://flxt.tmsimg.com/assets/p22941336_b_h9_aa.jpg', director: 'Barbs', ongoing: true)
Production.create(title: 'One of Us Is Lying', genre: 'Thriller', budget: 99, image: 'https://m.media-amazon.com/images/M/MV5BNjVmY2EwMWMtZDJlOS00NGY5LWJkODUtOGQ4NDZlOGE2OTJiXkEyXkFqcGdeQXVyNjEwNTM2Mzc@._V1_FMjpg_UX1000_.jpg', director: 'Dot', ongoing: false)
Production.create(title: 'Elite', genre: 'Drama', budget: 99, image: 'https://ntvb.tmsimg.com/assets/p15991777_b_h8_ae.jpg?w=1280&h=720', director: 'Dola', ongoing: true)

30.times{CrewMember.create[name:Faker::Name.name , job_title:'Stagehand', salary: 65, production:Production.all.sample]}


























































