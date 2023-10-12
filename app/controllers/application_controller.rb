class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden }
      format.html { redirect_to dashboard_path, alert: exception.message }
    end
  end
private
  def after_sign_in_path_for(resource)
    dashboard_path
  end
end
