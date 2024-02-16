# frozen_string_literal: true
RSpec.describe MicrosoftKiotaFaraday::FaradayRequestAdapter do
  subject(:adapter) { described_class.new(authentication_provider) }

  let(:authentication_provider) { double("authentication_provider") }
  let(:headers) { { 'content-type' => 'application/json' } }
  let(:body) { { key: "value" }.to_json }

  describe "#get_root_parse_node" do
    context "when response is null" do
      it "raises an error" do
        expect { adapter.get_root_parse_node(nil) }.to raise_error(StandardError, 'response cannot be null')
      end
    end

    context "when response content type is not found" do
      let(:response) { instance_double(Faraday::Response, body:, headers: {}) }

      it "raises an error" do
        expect { adapter.get_root_parse_node(response) }.to raise_error(StandardError, 'no response content type found for deserialization')
      end
    end

    context "when response body is nil" do
      let(:response) { instance_double(Faraday::Response, body: nil, headers:) }

      it "returns nil" do
        expect(adapter.get_root_parse_node(response)).to be_nil
      end
    end

    context "when response body is empty" do
      let(:response) { instance_double(Faraday::Response, body: "", headers:) }

      it "returns nil" do
        expect(adapter.get_root_parse_node(response)).to be_nil
      end
    end

    context "when response body is not nil" do
      subject(:adapter) { described_class.new(authentication_provider, parse_node_factory) }

      let(:response) { instance_double(Faraday::Response, body:, headers:) }
      let(:parse_node_factory) { double("parse_node_factory") }
      let(:parse_node) { double("parse_node") }

      before do
        allow(parse_node_factory).to receive(:get_parse_node).with("application/json", body).and_return(parse_node)
      end

      it "returns the parse node" do
        expect(adapter.get_root_parse_node(response)).to eq(parse_node)
      end
    end
  end
end
