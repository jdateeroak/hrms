SECRET_KEY_BASE= '47bb4b8237264f2d4e35aed77c48314fce1fb45ac0b94c874c063f4fc6b7030e182521f7bceb36eb3c5098f9b5e18d128333ca2cc0f858c3fd29731bc94abc6a'
HTTP_BASIC_AUTH_ENABLED=false
HTTP_BASIC_AUTH_NAME="admin"
HTTP_BASIC_AUTH_PASSWORD="password"
SEARCH_HTTP_BASIC_AUTH_ENABLED=false
SEARCH_HTTP_BASIC_AUTH_NAME='admin'
SEARCH_HTTP_BASIC_AUTH_PASSWORD='password'
UPLOADS_DIR='/tmp/uploads'
# DOMAIN_NAME=hrms.example.com
# EMAIL_PROVIDER_ADDRESS=smtp.mandrillapp.com
# EMAIL_PROVIDER_USERNAME=name@example.com
# EMAIL_PROVIDER_API_KEY=xxxxxxxxxxxxxxxxxxxxx
# EMAIL_PROVIDER_DOMAIN_NAME=xxx.example.com
# SENTRY_DSN=

ITEMS_PER_PAGE=20
VACATION_PER_YEAR=10
VACATION_PER_YEAR_SIZE_JSON={"0":15,"1":15,"2":15,"3":20,"4":20,"5":30}
VACATION_PER_YEAR_SIZE_JSON_2={"0":20,"1":20,"2":20,"3":25,"4":25,"5":30}
VACATION_MAX_END_OF_YEAR_TRANSFER=5
PROGRESSIVE_VACATION_SIZE_START_DATE=06/01/2016
PROGRESSIVE_VACATION_SIZE_START_DATE_2=01/01/2017
EXPENSES_LIMIT_PER_YEAR=250
# COMPANY_EMAIL_MASK=@example.com
# MAIN_CITY=Kyiv


Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Mailer
  config.action_mailer.default_url_options = { host: ENV['DOMAIN_NAME'] }
  config.action_mailer.delivery_method = :letter_opener

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  config.after_initialize do
    Bullet.enable = true
    Bullet.unused_eager_loading_enable = false
    Bullet.alert = false
    Bullet.bullet_logger = true
    Bullet.console = false
    Bullet.rails_logger = true
    Bullet.add_footer = false
  end
end
