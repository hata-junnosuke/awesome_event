Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    # 本番ではgit管理しないように
    provider :github, "535238eb9d4b4018009f", "5d1cb93e5a7f98fc9632dc481ed5fb691a6357bd"
  else
    provider :github
      Rails.application.credentials.github[:client_id]
      Rails.application.credentials.github[:client_secret]
  end
end