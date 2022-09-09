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

  # get members individually

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

# get each trainer

get '/trainers/:id' do
  trainer = Trainer.find(params[:id])
  trainer.to_json()
end


# post for trainers

post '/trainers' do
  send = Trainer.create(
    name: params[:name],
    gender: params[:gender],
    email: params[:email],
  )
  send.to_json
end

# put for trainers

put '/trainers/:id' do
  fix = Trainer.find(params[:id])
  fix.update(
    name: params[:name],
    gender: params[:gender],
    email: params[:email],
  )
  fix.to_json
end


# delete for trainers

delete '/trainers/:id' do
  deleted = Trainer.find(params[:id])
  deleted.destroy
  deleted.to_json
end



# gets for package

get "/packages" do
  packages = Package.all   
  packages.to_json
end

# get each package by id

get '/packages/:id' do
  package = Package.find(params[:id])
  package.to_json()
end

# post for package

post '/packages' do
  send = Package.create(
    name: params[:name],
    description: params[:description],
    amount: params[:amount]
  )
  send.to_json
end

# put for packages

put '/packages/:id' do
  fix = Package.find(params[:id])
  fix.update(
    name: params[:name],
    description: params[:description],
    amount: params[:amount]
  )
  fix.to_json
end


# delete for packages

delete '/packages/:id' do
  deleted = Package.find(params[:id])
  deleted.destroy
  deleted.to_json
end


# gets for review

get "/reviews" do
  reviews = Review.all   
  reviews.to_json
end

# get a single review by its id

get '/reviews/:id' do
  review = Review.find(params[:id])
  review.to_json()
end

# post for review

post '/reviews' do
  send = Review.create(
    title: params[:title],
    description: params[:description],
    trainer_id: params[:trainer_id]
  )
  send.to_json
end

# put for reviews

put '/reviews/:id' do
  fix = Review.find(params[:id])
  fix.update(
    title: params[:title],
    description: params[:description],
    trainer_id: params[:trainer_id]
  )
  fix.to_json
end


# delete for reviews

delete '/reviews/:id' do
  deleted = Review.find(params[:id])
  deleted.destroy
  deleted.to_json
end


end