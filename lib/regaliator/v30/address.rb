require 'regaliator/endpoint'

module Regaliator
  module V30
    class Address < Endpoint

      #Adds a new address to be used in a check
      #The required parameters to create a new check address are the following:
      #https://docx.regalii.com/#/xPay/postAddresses

      def create(params = {})
        request('/addresses', params).post
      end

      #This endpoint returns the addresses that have been created to be used as Sender or Receiver on your check transactions.
      def list(params = {})
        request('/addresses', params).get
      end

      def show(id, params = {})
        request("/addresses/#{id}", params).get
      end
      
    end
  end
end
