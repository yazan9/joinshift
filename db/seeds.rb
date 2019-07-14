# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

   question = Question.create([
       { sequence: 1, text: 'You find it takes effort to introduce yourself to other people' }, 
       { sequence: 2, text: 'You consider yourself more practical than creative' }, 
       { sequence: 3, text: 'Winning a debate matters less to you than making sure no one gets upset' }, 
       { sequence: 4, text: 'You get energized going to social events that involve many interactions' }, 
       { sequence: 5, text: 'You often spend time exploring unrealistic and impractical yet intriguing ideas' }, 
       { sequence: 6, text: 'Deadlines seem to you to be of relative rather than absolute importance' }, 
       { sequence: 7, text: 'Logic is usually more important than heart when it comes to making important decisions' }, 
       { sequence: 8, text: 'Your home and work environments are quite tidy' }, 
       { sequence: 9, text: 'You do not mind being at the center of attention' }, 
       { sequence: 10, text: 'Keeping your options open is more important than having a to-do list' }, 
       ])

