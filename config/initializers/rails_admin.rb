RailsAdmin.config do |config|

  config.main_app_name = ["SPA Urbano Julio Ganiko", ""]


  config.navigation_static_links = {
    'Frente de Caixa' => '/cashiers',
    'Agenda' => '/schedules'
  }
 
  config.navigation_static_label = "Recepção"


  config.model 'User' do
    edit do
      field :name
      field :kind
      field :status
      field :notes
      field :email
      field :password
      field :password_confirmation
      field :color#, :color
    end
  end

  
  config.model 'Schedule' do
    visible true
  end

  config.model 'Record' do
    visible false
  end

  config.model 'Item' do
    edit do
      field :client
      field :user
      field :therapy
      field :description
    end
  end


  config.model 'Record' do
    edit do
      field :cream_allergy
      field :blood_pressure
      field :uses_pacemaker
      field :diabetes
      field :surgery
      field :surgery_where
      field :accident_fracture
      field :accident_where
      field :bone_disease
      field :medicine
      field :medicine_which
      field :faint_seizure
      field :woman_pregnant
      field :woman_contraceptive
      field :pains
    end
  end

  config.model 'PhoneClient' do
    edit do
      field :number
    end
  end

  config.model 'PhoneUser' do
    edit do
      field :number
    end
  end

  config.model 'Address' do
    visible false
  end

  config.model 'Address' do
    edit do
      field :street
      field :number
      field :complement
      field :neighborhood
      field :city
      field :state
      field :country
    end
  end
  ### Popular gems integration

  ## == Devise ==
   config.authenticate_with do
     warden.authenticate! scope: :user
   end
   config.current_user_method(&:current_user)

  ## == Cancan ==
   config.authorize_with :cancan

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
end
