class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  # My gets for members
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/members" do
    members = Member.all   
    members.to_json
  end

  get '/members/:id' do
    member = Member.find(params[:id])
    member.to_json()
  end


# post for members

post '/members' do
  send = Member.create(
    name: params[:name],
    email: params[:email],
    address: params[:address],
    trainer_id: params[:trainer_id],
    package_id: params[:package_id],
    review_id: params[:review_id]
  )
  send.to_json
end

# put for members

put '/members/:id' do
  fix = Member.find(params[:id])
  fix.update(
    name: params[:name],
    email: params[:email],
    address: params[:address],
    trainer_id: params[:trainer_id],
    package_id: params[:package_id],
    review_id: params[:review_id]
  )
  fix.to_json
end

# delete for members

delete '/members/:id' do
  deleted = Member.find(params[:id])
  deleted.destroy
  deleted.to_json
end


# gets for trainer

get "/trainers" do
  trainers = Trainer.all   
  trainers.to_json
end



# gets for package

get "/packages" do
  packages = Package.all   
  packages.to_json
end



# gets for review

get "/reviews" do
  reviews = Review.all   
  reviews.to_json
end



end