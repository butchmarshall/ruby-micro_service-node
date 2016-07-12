require 'spec_helper'

describe MicroService::Node do
	it 'has a version number' do
		expect(MicroService::Node::VERSION).not_to be nil
	end

	describe "#initialize_secret" do
		it 'should always have a secret' do
			expect(MicroService::Node.new.secret).not_to be nil
			expect(MicroService::Node.create.secret).not_to be nil

			micro_service_node = MicroService::Node.new(:host => "http://micro_service_node.local/")
			expected_secret = micro_service_node.secret
			micro_service_node.save

			expect(micro_service_node.secret).to eq expected_secret

			micro_service_node.reload
			expect(micro_service_node.secret).to eq expected_secret
		end
	end
end
