EtcSkillDatabase::Application.routes.draw do
  resources :members
  resources :skills, :only => [:index] do
    collection do
      get :matching
    end
  end
end
