puts "🌱 Seeding spices..."

# Seed your database here
Task.create(title:"Go shopping",description: "buy groceries",due_date: Date.today,completion_status:false, user_id:1)
Task.create(title:"study",description: "learn ruby",due_date: "2023-02-10",completion_status:true, user_id:1)
Task.create(title:"watching",description: "queen of the south",due_date: "2023-10-04",completion_status:false, user_id:2)
Task.create(title:"Baking",description: "vanilla cake",due_date: "2023-03-03",completion_status:false, user_id:2)
Task.create(title:"Go shopping",description: "buy clothes",due_date:"2023-03-01",completion_status:true, user_id:3)
Task.create(title:"Reading",description: "an enemy of the people",due_date:"2023-03-10",completion_status:false, user_id:3)
Task.create(title:"swimming",description: "estate swimming pool",due_date:"2023-03-9",completion_status:false, user_id:5)

User.create(email:"iddahawuor@yahoo.com",password_hash:"rose")
User.create(email:"odhiamboawuor@yahoo.com",password_hash:"rosrefe")
User.create(email:"winnieodhiambo@yahoo.com",password_hash:"iddah12")
User.create(email:"charlesowuor@yahoo.com",password_hash:"odhiambo")
User.create(email:"matabelakinyi@yahoo.com",password_hash:"awiti")






puts "✅ Done seeding!"
