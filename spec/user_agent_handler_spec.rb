require 'faraday'

# frozen_string_literal: true
RSpec.describe MicrosoftKiotaFaraday do
	user_agent_key = "User-Agent"
	url = "https://graph.microsoft.com/v1.0/users"
    it "adds the user agent product" do
        handler = MicrosoftKiotaFaraday::Middleware::UserAgentHandler.new()
        env = {
            url: URI.parse(url),
            request_headers: {}
        }
        handler.call(env)
        expect(env[:request_headers][user_agent_key].split("/")[0]).to eq("kiota-ruby")
    end

    it "adds the user agent product once" do
        handler = MicrosoftKiotaFaraday::Middleware::UserAgentHandler.new()
        env = {
            url: URI.parse(url),
            request_headers: {}
        }
        handler.call(env)
        handler.call(env)
        expect(env[:request_headers][user_agent_key].split("kiota-ruby").length).to eq(2)
    end
    it "doesnt add the header when disabled" do
        handler = MicrosoftKiotaFaraday::Middleware::UserAgentHandler.new()
		opt = MicrosoftKiotaFaraday::Middleware::UserAgentOption.new()
		opt.enabled = false
        env = {
            url: URI.parse(url),
            request_headers: {},
			request: {
				context: {
					opt.get_key => opt
				}
			}
        }
        handler.call(env)
        handler.call(env)
        expect(env[:request_headers][user_agent_key]).to be_nil
    end
end
