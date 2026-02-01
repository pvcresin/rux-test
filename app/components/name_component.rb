# frozen_string_literal: true

class NameComponent < ViewComponent::Base
  def initialize(first_name:, last_name:)
    @first_name = first_name
    @last_name = last_name
  end
end
