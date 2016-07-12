require "active_support"
require "active_support/dependencies"
require "active_record"

require "micro_service/node/version"
require "micro_service/node/compatibility"

module MicroService
	class Node < ::ActiveRecord::Base
		self.table_name = "micro_service_nodes"

		validates :secret, uniqueness: true
		validates :host, uniqueness: true
		after_initialize :initialize_secret
		
		private

		def initialize_secret
			require 'securerandom'
			self.secret ||= "#{SecureRandom.base64(24)}.s"
		end
	end
end
