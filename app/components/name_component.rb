class NameComponent < ViewComponent::Base
  def initialize(first_name:, last_name:)
    @first_name = first_name
    @last_name = last_name
  end

  def call
    Rux.tag("span") {
      Rux.create_buffer.tap { |_rux_buf_|
        _rux_buf_.append(@first_name)
        _rux_buf_.safe_append(" ")
        _rux_buf_.append(@last_name)
      }.to_s
    }
  end
end
