class ApplicationMailer < ActionMailer::Base
  default to: "info@mealplanner.com", from: 'info@mealplanner.com'
  layout 'mailer'
end
