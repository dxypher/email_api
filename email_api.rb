require 'sinatra'
require 'json'

get '/' do
  "Hello World!"
end

post '/email' do
  params = JSON.parse(request.env["rack.input"].read)  
  Pony.mail :to => params["to"],
              :from => "noreply@example.com",
              :subject => params["subject"],
              :body => params["body"]
end