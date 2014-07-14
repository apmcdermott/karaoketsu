RailsAdmin.config do |config|

  # == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  config.authorize_with do |controller|
    unless current_user.try(:admin?)
      flash[:error] = "You are not an admin"
      redirect_to main_app.root_path([])
    end
  end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
  end

  # == Acts As Taggable On ==
  config.included_models = [Tag, Artist, User, Song]

  # == custom model configurations ==
  config.model 'User' do
    field :first_name
    field :last_name
    field :email
    field :artist
    field :range_low do
      label "Low"
    end
    field :range_high do
      label "High"
    end
    field :created_at
    field :admin
    field :sign_in_count do
      label "Signins"
    end
  end

  config.model 'Artist' do
    field :name
    field :alt_name
    field :gender
    field :voice_type
    field :range_low do
      label "Low"
    end
    field :range_high do
      label "High"
    end
    field :songs
    field :tags
  end

  config.model 'Song' do
    field :title
    field :artist_name do
      label "Artist"
    end
    field :range_low do
      label "Low"
    end
    field :range_high do
      label "High"
    end
    field :tags
  end

end
