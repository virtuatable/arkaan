module Arkaan
  module Monitoring
    # A gateway is a portal by which you access the different web services of the application suite.
    # @author Vincent Courtois <courtois.vincent@outlook.com>
    class Gateway
      include Mongoid::Document
      include Mongoid::Timestamps
      include Arkaan::Concerns::Activable
      include Arkaan::Concerns::Diagnosticable

      # @!attribute [rw] url
      #   @return [String] the URL of the gateway, where the requests will be issued.
      field :url, type: String
      # @!attribute [rw] running
      #   @return [Boolean] the running status of the gateway, indicating if it can be used or not.
      field :running, type: Boolean, default: false

      scope :running , ->{ where(running: true) }

      make_diagnosticable 'gateway'

      validates :url,
        presence: {message: 'gateway.url.blank'},
        format: {with: /\A(https?:\/\/)([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?\z/, message: 'gateway.url.format', if: :url?}
    end
  end
end