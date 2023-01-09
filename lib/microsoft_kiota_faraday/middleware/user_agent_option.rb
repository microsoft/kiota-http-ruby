# frozen_string_literal: true
require 'microsoft_kiota_abstractions'
require_relative '../version.rb'
module MicrosoftKiotaFaraday
    module Middleware
        class UserAgentOption
            include MicrosoftKiotaAbstractions::RequestOption
            attr_accessor :enabled, :product_name, :product_version
			def initialize()
				@enabled = true
				@product_name = "kiota-ruby"
				@product_version = MicrosoftKiotaFaraday::VERSION
			end

			def get_key()
                "userAgent"
            end
		end
	end
end
