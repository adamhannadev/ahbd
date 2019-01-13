# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Level.create([
    {
        title: 'Pre-Bronze',
        description: ''
    },
    {
        title: 'Associate Bronze',
        description: ''
    },
    {
        title: 'Full Bronze',
        description: ''
    },
    {
        title: 'Associate Silver',
        description: ''
    }
    
    ]);
    Category.create([
    {
        title: 'American Rhythm',
        description: ''
    },
    {
        title: 'American Smooth',
        description: ''
    },
    {
        title: 'International Latin',
        description: ''
    },
    {
        title: 'International Standard',
        description: ''
    },
        {
        title: 'Club',
        description: ''
    }
    
    ]);