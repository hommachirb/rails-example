module ApplicationHelper
  def bootswatch_alert_types(alert_type)
    case alert_type.to_sym
    when :info then
      'alert-info'
    when :notice, :success then
      'alert-success'
    when :alert, :error then
      'alert-danger'
    else
      'alert-warning'
    end
  end
end
