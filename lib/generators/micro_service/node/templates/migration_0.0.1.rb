class AddMicroServiceNode001Migration < ActiveRecord::Migration
	def self.up
		create_table :micro_service_nodes do |t|
			t.string :host
			t.string :secret

			t.timestamps null: false
		end
	end

	def self.down
		drop_table :micro_service_nodes
	end
end