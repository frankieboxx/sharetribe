# == Schema Information
#
# Table name: transaction_types
#
#  id                         :integer          not null, primary key
#  type                       :string(255)
#  community_id               :integer
#  sort_priority              :integer
#  price_field                :boolean
#  preauthorize_payment       :boolean          default(FALSE)
#  price_quantity_placeholder :string(255)
#  price_per                  :string(255)
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#

class Request < TransactionType

  DEFAULTS = {
    price_field: 0
  }

  before_validation(:on => :create) do
    self.price_field ||= DEFAULTS[:price_field]
  end

  def direction
    "request"
  end

  def is_offer?
    false
  end

  def is_request?
    true
  end

  def is_inquiry?
    false
  end

end
