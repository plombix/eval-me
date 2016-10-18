
Allowed.create!([
  {email: "plombix@gmail.com"},
  {email: "test@test.com"}
])
User.create!([
  {email: "test@test.com",password:"password" , password_confirmation: "password"},
  {email: "plombix@gmail.com",password:"Soul66k!" , password_confirmation: "Soul66k!"}
])
Eval.create!([
  {name: "Shell / Unix lvl1", intro: "Commandes basiques", viewable: true},

])
Question.create!([
  {statement: "L' emulateur de terminal , est il un acces au noyeau (kernel) ? au système d'exploitation (OS)? ou a internet?", eval_id: 1},
  {statement: "Considerez  l' expression suivante : /usr/bin/data/proc Comment l'appelle-t-on  ? ", eval_id: 1},

])
Answer.create!([
  {student_answer: "sdfasdfas", user_id: 2, question_id: 2},

])
