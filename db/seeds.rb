# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


users = User.create(
    [
        { name: 'Luis Meneses', email: 'lmeneses.dev@gmail.com', photo: 'xxxxx', country: 'Colombia' }, 
        { name: 'Pedro Perez', email: 'pedro.dev@gmail.com', photo: 'xxxxx', country: 'Costa rica' },
        { name: 'Juan Martinez', email: 'Juan.dev@gmail.com', photo: 'xxxxx', country: 'Perú' },
        { name: 'Segio Perez', email: 'Segio.dev@gmail.com', photo: 'xxxxx', country: 'Costa rica' },
        { name: 'Jeffer Pacacira', email: 'Jeffer.dev@gmail.com', photo: 'xxxxx', country: 'Mexico' },
        { name: 'Casas Casas', email: 'Casas.dev@gmail.com', photo: 'xxxxx', country: 'USA' },
        { name: 'Marcela Diáz', email: 'Marcela.dev@gmail.com', photo: 'xxxxx', country: 'Argentina' },
        { name: 'Steven Gonzalez', email: 'Steven.dev@gmail.com', photo: 'xxxxx', country: 'Panama' },
        { name: 'Maria Casas', email: 'Casas.dev@gmail.com', photo: 'xxxxx', country: 'Colombia' },
        { name: 'Andres Lopez', email: 'Lopez.dev@gmail.com', photo: 'xxxxx', country: 'Mexico' },
        { name: 'Leonardo Herrera', email: 'Herrera.dev@gmail.com', photo: 'xxxxx', country: 'Venezuela' },
    ])

Skill.create([
    { name: 'C#', description: 'Programación en c#', user_id: users[0].id }, 
    { name: 'Ruby', description: 'Programación en Ruby', user_id: users[0].id },
    { name: 'Go', description: 'Programación en Go', user_id: users[0].id },
    { name: 'Scala', description: 'Programación en Scala', user_id: users[0].id },
    { name: 'Java', description: 'Programación en Java', user_id: users[1].id }, 
    { name: 'Python', description: 'Programación en Python', user_id: users[1].id },
    { name: 'C', description: 'Programación en c#', user_id: users[2].id }, 
    { name: 'Ruby', description: 'Programación en Ruby', user_id: users[2].id },
    { name: 'Python', description: 'Programación en Go', user_id: users[2].id },
    { name: 'Scala', description: 'Programación en Scala', user_id: users[2].id },
    { name: 'C', description: 'Programación en c#', user_id: users[3].id }, 
    { name: 'Scala', description: 'Programación en Scala', user_id: users[3].id },
    { name: 'Python', description: 'Programación en Go', user_id: users[4].id },
    { name: 'Scala', description: 'Programación en Scala', user_id: users[4].id },
    { name: 'C++', description: 'Programación en c#', user_id: users[5].id }, 
    { name: 'Exlixir', description: 'Programación en Ruby', user_id: users[5].id },
    { name: 'Python', description: 'Programación en Go', user_id: users[5].id },
    { name: 'Scala', description: 'Programación en Scala', user_id: users[5].id },
    { name: 'Scala', description: 'Programación en Scala', user_id: users[6].id },
    { name: 'C', description: 'Programación en c#', user_id: users[7].id }, 
    { name: 'css', description: 'Programación en c#', user_id: users[8].id }, 
    { name: 'Ruby', description: 'Programación en Ruby', user_id: users[8].id },
    { name: 'html', description: 'Programación en html', user_id: users[8].id },
    { name: 'Angular', description: 'Programación en Angular', user_id: users[8].id },
    { name: '.Net', description: 'Programación en Ruby', user_id: users[9].id },
    { name: 'Python', description: 'Programación en Go', user_id: users[9].id },
    { name: 'forms', description: 'Programación en forms', user_id: users[9].id },
    { name: '.Net', description: 'Programación en Net', user_id: users[10].id },
    { name: 'Ruby', description: 'Programación en Ruby', user_id: users[10].id },
    { name: 'Java', description: 'Programación en Java', user_id: users[10].id },
    { name: 'Node', description: 'Programación en Node', user_id: users[10].id }
    ])  
Rating.create([
    { value: 5, user_id: users[0].id },
    { value: 4, user_id: users[1].id },
    { value: 2, user_id: users[2].id },
    { value: 5, user_id: users[3].id },
    { value: 3, user_id: users[4].id },
    { value: 2, user_id: users[5].id },
    { value: 1, user_id: users[6].id },
    { value: 1, user_id: users[7].id },
    { value: 2, user_id: users[8].id },
    { value: 3, user_id: users[9].id },
    { value: 5, user_id: users[10].id }
    ])

