# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

title: Outdoor.sy API
baseUri: http://localhost:3000/
/customer:
    post:
        description: Generate object with customer and vehicle info
        headers:
            Content-Type: application/json
        body:
            file:
                
    
        responses:
            200:
                body:
                application/json:
                    schema: |
                    {
                        "$schema": "http://json-schema.org/draft-04/schema#",
                        "type": "object",
                        "additionalProperties": false,
                        "properties": {
                            "request": {
                                "type": "object",
                                "properties": {
                                    "name": { "type": "string" },
                                    "email": { "type": "string" },
                                    "vehicle": {
                                        "vehicle_type":{ "type": "string" },
                                        "name":{ "type": "string" },
                                        "length":{ "type": "float" }
                                    }
                                }
                            }
                        }
                    }