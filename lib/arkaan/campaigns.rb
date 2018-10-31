module Arkaan
  # The campaigns module is holding the logic for some objects related to campaigns.
  # @author Vincent Courtois <courtois.vincent@outlook.com>
  module Campaigns
    autoload :File      , 'arkaan/campaigns/file'
    autoload :Invitation, 'arkaan/campaigns/invitation'
    autoload :Message   , 'arkaan/campaigns/message'
    autoload :Tag       , 'arkaan/campaigns/tag'
  end
end