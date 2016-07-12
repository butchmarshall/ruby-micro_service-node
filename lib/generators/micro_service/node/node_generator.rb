require 'rails/generators/base'
require 'micro_service/node/compatibility'

module MicroService
	class Node < ::ActiveRecord::Base
		class Generator < Rails::Generators::Base
			source_paths << File.join(File.dirname(__FILE__), 'templates')
		end
	end
end

