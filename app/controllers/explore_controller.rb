class ExploreController < ApplicationController
    def index
        @dog_breeds = Dir.glob('app/assets/images/DogFrames/*').map { |folder| File.basename(folder) }
    end
end