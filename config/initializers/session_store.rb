# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rateIt_session',
  :secret      => 'ffe514fbb667a2126c12829fa48ccc5f72aa248351033ada8338b238f987a97a6e0d7eedbfbd19ad5d1129d40f99b47ec294ce23c9afe21dc4f147c7997b6abc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
