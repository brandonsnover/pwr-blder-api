# pwr-blder-api

## Overview

This is the backend for pwr-blder-api, a Rails API that manages exercises, workout programs, and user authentication. The API is designed to handle exercises, days, programs with associated tags and user-related functionalities.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [API Endpoints](#api-endpoints)
- [Authentication](#authentication)
- [Models](#models)
- [Contributing](#contributing)
- [License](#license)

## Installation

1. **Clone the repository:**

    ```bash
    git clone https://github.com/yourusername/your-project.git
    cd pwr-blder-api
    ```

2. **Install Dependencies:**

    ```bash
    bundle install
    ```

3. **Database Setup:**

    ```bash
    rails db:create
    rails db:migrate
    ```

4. **Seed the Database:**

    ```bash
    rails db:seed
    ```

## Usage

**Start the Rails server:**

```bash
rails server

The API will be accessible at http://localhost:3000/.


Certainly! Here's the complete README in a single Markdown file:

markdown
Copy code
# Your Project Name

## Overview

This is the backend for [Your Project Name], a Rails API that manages exercises, workout programs, and user authentication. The API is designed to handle exercises, days, programs, tags, and user-related functionalities.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [API Endpoints](#api-endpoints)
- [Authentication](#authentication)
- [Models](#models)
- [Contributing](#contributing)
- [License](#license)

## Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/yourusername/your-project.git
   cd your-project
Install dependencies:

bash
Copy code
bundle install
Database Setup:

bash
Copy code
rails db:create
rails db:migrate
Seed the database (optional):

bash
Copy code
rails db:seed
Usage
Start the Rails server:

bash
Copy code
rails server
The API will be accessible at http://localhost:3000/.

## API Endpoints
### Here is an overview of the main API endpoints:

Exercises:

GET /exercises: Get a list of all exercises.
GET /exercises/:id: Get details of a specific exercise.
POST /exercises: Create a new exercise.
PUT /exercises/:id: Update an existing exercise.
DELETE /exercises/:id: Delete an exercise.

Days:

GET /days: Get a list of all days.
GET /days/:id: Get details of a specific day.
POST /days: Create a new day.
PUT /days/:id: Update an existing day.
DELETE /days/:id: Delete a day.

ExerciseDays:

GET /exercise_days: Get a list of all days.
GET /exercise_days/:id: Get details of a specific day.
POST /exercise_days: Create a new day.
PUT /exercise_days/:id: Update an existing day.
DELETE /exercise_days/:id: Delete a day.

Programs:

GET /programs: Get a list of all programs. (requires authentication)
GET /programs/:id: Get details of a specific program.
POST /programs: Create a new program. (requires authentication)
PUT /programs/:id: Update an existing program. (requires authentication)
DELETE /programs/:id: Delete a program. (requires authentication)

Users:

POST /users/signup: Sign up as a new user.

Sessions:

POST /sessions/signup: Create JWT for authentication.

## Authentication
- This API uses JSON Web Tokens (JWT) for authentication. To access protected routes, include the JWT token in the Authorization header of your requests.

Example:
curl -H "Authorization: Bearer YOUR_JWT_TOKEN" http://localhost:3000/users/profile



