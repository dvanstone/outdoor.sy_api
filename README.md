# README

* Ruby version
    ** 3.1.2p20

* System dependencies
    ** rspec (testing)


* How to run the test suite
    ** run 'bundle exec rspec'

* How to run locally
    ** run 'rails s'

# title:
Outdoor.sy API
# baseUri:
http://localhost:9000/

/customer:
    post:
        description: Generate object with customer and vehicle info
        headers:
            n/a (defaults in Postman)
        body:
            file: plain text file


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
            400:
                "Improperly Formatted File"
            418:
                "I am a teapot"