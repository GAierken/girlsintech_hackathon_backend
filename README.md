## Volunteer app backend for hackathon

Backend live link: [link](https://blooming-wave-77750.herokuapp.com/users)
                   [link](https://blooming-wave-77750.herokuapp.com/appointments)

The backend RESTful API service is built with Ruby on Rails powered by PostgreSQL. It is designed with self referential association for improving the query speed and avoiding the extra unneeded models. To persist and maintain database, the validations are implemented. For security management, the backend is developed with JSON Web Token, bcrypt and dotenv-rails.

1. git clone 

2. bundle install

3. rails s

4. open http://localhost:3000/users to see the json data. 



Heroku Live: 
Users: https://blooming-wave-77750.herokuapp.com/users
Appointments: https://blooming-wave-77750.herokuapp.com/appointments
