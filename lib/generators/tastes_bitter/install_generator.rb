module TastesBitter

  module Generators

    class InstallGenerator < Rails::Generators::Base

      source_root File.expand_path("../templates", __FILE__)

      def create_tastes_bitter_initializer
        copy_file "tastes_bitter.rb", "config/initializers/tastes_bitter.rb"
      end

    end

  end

end
