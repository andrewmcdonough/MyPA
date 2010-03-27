# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mypa_session',
  :secret      => 'ec6626efd397e0459fd764f7d7f33e1c04ca4d418c52c5d3a6122fbe6ed7e22c80456032f28ad720a6921a64deca6d3ea30b53350bc92542ef2d29ad313eddbd'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
