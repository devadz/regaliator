require 'regaliator/v30/client'

module Regaliator
  module V32
    API_VERSION = '3.2'.freeze

    Address     = V30::Address
    Client      = V30::Client
    Account     = V30::Account
    Bill        = V30::Bill
    Biller      = V30::Biller
    Rate        = V30::Rate
    Transaction = V30::Transaction
  end
end
