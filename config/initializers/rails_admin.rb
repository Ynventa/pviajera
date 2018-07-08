RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  config.authorize_with do
    redirect_to main_app.root_path unless current_user.admin?
  end

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
    new do
      except ['HighlightsTracking']
    end
    export
    bulk_delete
    show
    edit do
      except ['HighlightsTracking']
    end
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model 'Activity' do
    list do
      field :name
      field :image
      field :clients
      field :created_at do
        strftime_format '%d-%m-%Y'
      end
      field :updated_at do
        strftime_format '%d-%m-%Y'
      end
    end
  end

  config.model 'Document' do
    edit do
      field :title 
      field :text, :ck_editor
    end
    list do
      field :title
      field :created_at do
        strftime_format '%d-%m-%Y'
      end
      field :updated_at do
        strftime_format '%d-%m-%Y'
      end
    end
  end

  config.model 'City' do
    list do
      field :name
      field :region
      field :province
      field :created_at do
        strftime_format '%d-%m-%Y'
      end
      field :updated_at do
        strftime_format '%d-%m-%Y'
      end
    end
  end

  config.model 'Highlight' do
    edit do
      field :client
      field :date_start do
        strftime_format '%d-%m-%Y'
      end
      field :date_end do
        strftime_format '%d-%m-%Y'
      end
      field :image
      field :status
    end
    list do
      field :client
      field :date_start do
        strftime_format '%d-%m-%Y'
      end
      field :date_end do
        strftime_format '%d-%m-%Y'
      end
      field :status
    end
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

  config.model 'User' do
    edit do
      field :email
      field :name
      field :lastname
      field :admin
      field :password
      field :password_confirmation
    end
  end

  config.model 'Excursion' do
    edit do
      field :title
      field :description
      field :image
      field :html, :ck_editor
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
      field :city
      field :phone
      field :whatsapp
      field :email
      field :web
      field :facebook
      field :instagram
      field :youtube_url
    end
    list do
      field :title
      field :location
      field :image
      field :created_at do
        strftime_format '%d-%m-%Y'
      end
      field :updated_at do
        strftime_format '%d-%m-%Y'
      end
    end
  end

  config.model 'Province' do
    list do
      field :name
      field :created_at do
        strftime_format '%d-%m-%Y'
      end
      field :updated_at do
        strftime_format '%d-%m-%Y'
      end
    end
  end

  config.model 'Region' do
    list do
      field :name
      field :image
      field :created_at do
        strftime_format '%d-%m-%Y'
      end
      field :updated_at do
        strftime_format '%d-%m-%Y'
      end
    end
  end
end
