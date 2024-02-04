class ImagesController < ApplicationController
  def show
    # Retrieve breed and image_name from the params
    breed = params[:breed]
    image_name = params[:image_name]

    # Assuming your images are stored in 'app/assets/images/DogFrames'
    image_path = "DogFrames/#{breed}/#{image_name}.jpg"  # Change the extension based on your images

    # Extract location and time from the image_name
    location, time = image_name.split('_', 2)

    # Save or use the location and time as needed
    # Example: Save them to the database
    ImageMetadata.create(breed: breed, location: location, time: time)

    # Render the show view with necessary data
    render 'show', locals: { breed: breed, image_name: image_name, image_path: image_path, location: location, time: time }
  end

end
