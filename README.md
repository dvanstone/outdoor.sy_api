# README

## System dependencies
* ruby (3.1.2p20)
* rails (7.0.3)
* rspec (testing)

## Setup
* install ruby (https://rubyinstaller.org/downloads/)
* install rails ('gem install rails')
* run 'bundle install'


### How to run the test suite
* run 'bundle exec rspec'

### How to run locally via outdoor.sy_client repo
* run 'rails s'
    * will start server on port 9000
* run npm start within outdoor.sy_client
    * will start react app on port 9001
* follow outdoor.sy_client repo's README instructions on how to POST to this API

### How to run locally via Postman
* run 'rails s'
    * will start server on port 9000
* in Postman...
    * make sure the type is set to POST
    * in body...
        * set to form-data
        * add a key of "customerFile" and a value of your file of choice
            * file must be of content-type 'text/plain' or 'text/csv'
    * auto-generated headers should be fine



# Title:
Outdoor.sy API
# baseUri:
http://localhost:9000/

# Schema

```
post:
    description: Generate object with customer and vehicle info
    headers:
        (defaults in Postman, none needed for outdoor.sy_client)
    body:
        file:
            content-type: 'text/plain' OR 'text/csv' (without header row)


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
```