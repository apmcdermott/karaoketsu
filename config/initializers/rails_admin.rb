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
end
