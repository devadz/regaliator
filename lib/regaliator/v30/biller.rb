require 'regaliator/endpoint'

module Regaliator
  module V30
    class Biller < Endpoint
      def credentials(params = {})
        request('/billers/credentials', params).get
      end

      def topups(params = {})
        request('/billers/topups', params).get
      end

      def utilities(params = {})
        request('/billers/utilities', params).get
      end
      
      def rpps_billers(params = {})
        request('/rpps_billers', params).get
      end
    end
  end
end
