module TastesBitter

  module Generators

    class InstallGenerator < Rails::Generators::Base

      def create_tastes_bitter_initializer
        copy_file "lib/generators/tastes_bitter/templates/tastes_bitter.rb", "config/initializers/tastes_bitter.rb"
      end

    end

  end

end
