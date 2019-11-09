Rails.application.configure do


  # Issue: Cannot render console from 10.4.11.157! Allowed networks: 127.0.0.1, ::1, 127.0.0.0/127.255.255.255 rails
  # https://stackoverflow.com/questions/29417328/how-to-disable-cannot-render-console-from-on-rails
  config.web_console.whiny_requests = false


  config.active_storage.service = :local
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => 'public, max-age=172800'
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # https://laurentbois.wordpress.com/2007/10/20/activemailer-using-msmtp-and-gmail/
  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  config.action_mailer.perform_caching = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
  
  
  
  # config.action_mailer.delivery_method = :smtp
  config.action_mailer.delivery_method = :msmtp
  # SMTP settings for
  #10.5.1.210  # MESG01.stackpole.ca
  # works..
  
  config.action_mailer.smtp_settings = {
   :address           => "mesg01.stackpole.ca"
  }
 
  # gmail worked, 2016-07-21_Thu_14.44-PM.
  # or try smtp-mail.outlook.com
  
  # config.action_mailer.smtp_settings = {
  #  :address              => "smtp.gmail.com",
  #  :port                 => 587,
  #  :user_name            => ENV['gmail_username'],
  #  :password             => ENV['gmail_password'],
  #  :authentication       => "plain",
  # :enable_starttls_auto => true
  # } 
  
  #for devise forgot password.. 2016-07-22_Fri_14.52-PM David Gleba
  # config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }  
  config.action_mailer.default_url_options = { host: '10.4.1.228', port: 6034 }  

end
