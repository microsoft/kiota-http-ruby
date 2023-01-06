require 'faraday'

# frozen_string_literal: true
RSpec.describe MicrosoftKiotaFaraday do
    it "adds the user agent product" do
        handler = MicrosoftKiotaFaraday::Middleware::UserAgentHandler.new()
        env = {
            url: URI.parse("https://graph.microsoft.com/v1.0/users"),
            request_headers: {}
        }
        handler.call(env)
        expect(env[:request_headers]["User-Agent"].split("/")[0]).to eq("kiota-ruby")
    end

    it "adds the user agent product once" do
        handler = MicrosoftKiotaFaraday::Middleware::UserAgentHandler.new()
        env = {
            url: URI.parse("https://graph.microsoft.com/v1.0/users"),
            request_headers: {}
        }
        handler.call(env)
        handler.call(env)
        expect(env[:request_headers]["User-Agent"].split("kiota-ruby").length).to eq(2)
    end
    it "doesnt add the header when disabled" do
        handler = MicrosoftKiotaFaraday::Middleware::UserAgentHandler.new()
		opt = MicrosoftKiotaFaraday::Middleware::UserAgentOption.new()
		opt.enabled = false
        env = {
            url: URI.parse("https://graph.microsoft.com/v1.0/users"),
            request_headers: {},
			request: {
				context: {
					opt.get_key => opt
				}
			}
        }
        handler.call(env)
        handler.call(env)
        expect(env[:request_headers]["User-Agent"]).to be_nil
    end
end
