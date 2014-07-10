RailsAdmin.config do |config|

  # == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

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
