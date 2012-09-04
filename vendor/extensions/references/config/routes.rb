Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :references do
    resources :references, :path => '', :only => [:index, :show]
    scope :path => 'references' do
      resources :categories, :only => [:index, :show]
    end
  end

  # Admin routes
  namespace :references, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :references, :except => :show do
        collection do
          post :update_positions
        end
      end

      scope :path => 'references' do
        resources :categories, :except => :show
      end
    end
  end

end
