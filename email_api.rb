require 'sinatra'
require 'json'

post '/' do
  params = JSON.parse(request.env["rack.input"].read)  
  Pony.mail :to => params["to"],
              :from => "noreply@example.com",
              :subject => params["subject"],
              :body => params["body"]
end