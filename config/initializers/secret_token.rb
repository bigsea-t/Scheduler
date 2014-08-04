# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Scheduler::Application.config.secret_key_base = 'adde927f0662483a1f2c08d2e8f998b5476fbeb7e1c0452bb17c4ee0151b02d856985f6719a517a83e230746afdca3b5633eee373ae7c07e7cbdfbd32b4d0653'
