# Rails Create, Index, and Show Lab

## Learning Goals

- Generate `create`, `index` and `show` routes for one resource
- Use strong params to create a new resource

## Introduction

In this lab, we'll be building an API for a plant store! The code for this is
separated into two folders:

- `plantsy-api`: our Rails API server
- `plantsy-frontend`: our React frontend

The code for the frontend application is done. Your job is to create the Rails
API so that the `fetch` requests on the frontend work successfully.

## Instructions

To set up and run the frontend, `cd` into the `plantsy-frontend` directory and
run:

```sh
npm install
npm start
```

This will run your frontend in the browser on port 4000.

To set up your backend, in a new terminal, `cd` into the `plantsy-api`
directory and run:

```sh
bundle install
```

You can run `learn test` to test the code for your deliverables as you go.
You're also encouraged to use Postman, and to test your backend routes by
interacting with the API from your frontend.

## Deliverables

### Model

Create a `Plant` model that matches this specification:

<table border="1" cellpadding="4" cellspacing="0">
  <tr>
    <th>Column Name</th>
    <th>Data Type</th>
  </tr>
  <tr>
    <td>name</td>
    <td>string</td>
  </tr>
  <tr>
    <td>image</td>
    <td>string</td>
  </tr>
  <tr>
    <td>price</td>
    <td>decimal</td>
  </tr>
</table>

After creating the `Plant` model, you can run `rails db:migrate db:seed` to run
your migration, and run the code in the `db/seeds.rb` file to add some sample
data to your database.

Check your progress by running `rails c` and verifying that the plants were
created successfully!

### Routes

Your API should have the following routes, which each returns the appropriate
JSON data:

#### Index Route

```txt
GET /plants


Response Body
-------
[
  {
    "id": 1,
    "name": "Aloe",
    "image": "./images/aloe.jpg",
    "price": 11.50
  },
  {
    "id": 2,
    "name": "ZZ Plant",
    "image": "./images/zz-plant.jpg",
    "price": 25.98
  }
]
```

#### Show Route

```txt
GET /plants/:id


Response Body
------
{
  "id": 1,
  "name": "Aloe",
  "image": "./images/aloe.jpg",
  "price": 11.50
}
```

#### Create Route

In your controller's `create` action, use strong params when creating the new
`Plant` object.

```txt
POST /plants


Headers
-------
Content-Type: application/json


Request Body
------
{
  "name": "Aloe",
  "image": "./images/aloe.jpg",
  "price": 11.50
}


Response Body
-------
{
  "id": 1,
  "name": "Aloe",
  "image": "./images/aloe.jpg",
  "price": 11.50
}
```
