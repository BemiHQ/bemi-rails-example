class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action :set_bemi_context

  private

  def set_bemi_context
    Bemi.set_context(
      user_id: 1,
      endpoint: "#{request.method} #{request.path}",
      class: "#{self.class}##{action_name}",
    )
  end
end
