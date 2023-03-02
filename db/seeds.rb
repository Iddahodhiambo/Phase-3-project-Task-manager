puts "🌱 Seeding spices..."

# Seed your database here
Task.create(title:"Go shopping",description: "buy groceries",due_date: Date.today,completion_status:false)
Task.create(title:"study",description: "learn ruby",due_date: 2023-02-10,completion_status:true)
Task.create(title:"watching",description: "queen of the south",due_date: 2023-10-04,completion_status:false)
Task.create(title:"Baking",description: "vanilla cake",due_date: 2023-03-03,completion_status:false)
Task.create(title:"Go shopping",description: "buy clothes",due_date:2023-03-01,completion_status:true)

puts "✅ Done seeding!"
