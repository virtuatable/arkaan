require 'mongoid'
require 'active_model'
require 'active_support'
require 'sinatra/base'
require 'sinatra/config_file'
require 'platform-api'
require 'draper'
require 'faraday'
require 'sinatra/custom_logger'

# Main module of the application, holding all the subsequent classes.
# @author Vincent Courtois <courtois.vincent@outlook.com>
module Arkaan
  autoload :Account       , 'arkaan/account'
  autoload :Authentication, 'arkaan/authentication'
  autoload :Campaign      , 'arkaan/campaign'
  autoload :Campaigns     , 'arkaan/campaigns'
  autoload :Concerns      , 'arkaan/concerns'
  autoload :Decorators    , 'arkaan/decorators'
  autoload :Factories     , 'arkaan/factories'
  autoload :Monitoring    , 'arkaan/monitoring'
  autoload :OAuth         , 'arkaan/oauth'
  autoload :Permissions   , 'arkaan/permissions'
  autoload :Phone         , 'arkaan/phone'
  autoload :Ruleset       , 'arkaan/ruleset'
  autoload :Rulesets      , 'arkaan/rulesets'
  autoload :Utils         , 'arkaan/utils'
end