require 'faraday'
require_relative 'user_agent_option'
module MicrosoftKiotaFaraday
    module Middleware
        class UserAgentHandler < Faraday::Middleware
            @@default_option = UserAgentOption.new
			@@user_agent_key = "User-Agent"
			def call(request_env)
                request_option = request_env[:request][:context][@@default_option.get_key] unless request_env[:request].nil? || request_env[:request][:context].nil?
                request_option = @@default_option if request_option.nil?
                unless request_env[:request_headers].nil? || !request_option.enabled || request_option.product_name.nil? || request_option.product_name.empty? || request_option.product_version.nil? || request_option.product_version.empty? then
                    existing_value = request_env[:request_headers][@@user_agent_key]
					additional_value = "#{request_option.product_name}/#{request_option.product_version}"
					if !existing_value || existing_value.empty? then
						request_env[:request_headers][@@user_agent_key] = additional_value
					elsif !existing_value.include? additional_value then
						request_env[:request_headers][@@user_agent_key] = "#{existing_value} #{additional_value}"
					end
                end
                @app.call(request_env) unless @app.nil?
            end
		end
	end
end