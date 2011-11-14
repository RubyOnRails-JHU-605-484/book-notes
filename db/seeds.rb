User.delete_all
Book.delete_all

john = User.create(username: "John", password: "Smith")
john2 = User.create(username: "John", password: "TheSecond")
john3 = User.create(username: "John", password: "Last")

Book.create [
             {name: "The Rails 3 Way", author: "Obie Fernandez", user: john},
             {name: "jQuery Cookbook", author: "Cody Lindley",   user: john},
             {name: "Eloquent Ruby", author: "Russ Olsen",       user: john},

             {name: "The Starving Students' Cookbook", author: "Dede Hall", user: john2},
             {name: "The Vegetarian Family Cookbook", author: "Nava Atlas", user: john2},

             {name: "Exotic Cars", author: "John Lamm",                 user: john3},
             {name: "How Cars Work", author: "Tom Newton",              user: john3},
             {name: "Auto Repair For Dummies", author: "Deanna Sclar",  user: john3},
             {name: "Ultimate American Cars", author: "Craig Cheetham", user: john3}
            ]