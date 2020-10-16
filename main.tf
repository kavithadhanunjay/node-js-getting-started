# Configure the Heroku provider
provider "heroku" {
  email   = "kavithadhanunjay@gmail.com"
  api_key = "c004ebbe-6e80-4abd-b6c2-c480a1b082b4"
}

# Create a new application
# Usage with Local Source Directory
resource "heroku_app" "nodejsapp" {
    name = "kavitha-container-nodejs-2"
    region = "us"
    stack = "container"
}

resource "heroku_build" "nodejsapp" {
  app = heroku_app.nodejsapp.id 
 source = {
  path = "."
 }

 }

output "web_url" {
  value = heroku_app.nodejsapp.web_url 
}
