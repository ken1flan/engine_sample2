module Special
  class Engine < ::Rails::Engine
    isolate_namespace Special

    initializer "special.assets.precompile", group: :all do |app|
      app.config.assets.precompile += %w(
        special/application.js
        special/application.css
      )
    end
  end
end
