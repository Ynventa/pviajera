RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

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

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model 'Client' do
    edit do
      field :name
      field :description
      field :activity
      field :city
      field :location_label do
        read_only true
        label "Dirección"
      end
      field :google_map, :google_map do
        google_api_key 'AIzaSyBkEq2XlKAtX1ASfflNaRTK9cX4c0hg0JA'
        default_latitude -32.9535803
        default_longitude -60.7221068
        default_zoom_level 13
      end
      field :phone
      field :whatsapp
      field :email
      field :web
      field :facebook
      field :instagram
      field :youtube_url
      field :image
      field :client_images
    end
  end

end
