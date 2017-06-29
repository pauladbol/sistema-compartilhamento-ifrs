# Use this hook to configure merit parameters
Merit.setup do |config|
  # Check rules on each request or in background
  # config.checks_on_each_request = true

  # Define ORM. Could be :active_record (default) and :mongoid
  # config.orm = :active_record

  # Add application observers to get notifications when reputation changes.
  # config.add_observer 'MyObserverClassName'

  # Define :user_model_name. This model will be used to grand badge if no
  # `:to` option is given. Default is 'User'.
  # config.user_model_name = 'User'

  # Define :current_user_method. Similar to previous option. It will be used
  # to retrieve :user_model_name object if no `:to` option is given. Default
  # is "current_#{user_model_name.downcase}".
  # config.current_user_method = 'current_user'
end

# Create application badges (uses https://github.com/norman/ambry)
# badge_id = 0
# [{
#   id: (badge_id = badge_id+1),
#   name: 'just-registered'
# }, {
#   id: (badge_id = badge_id+1),
#   name: 'best-unicorn',
#   custom_fields: { category: 'fantasy' }
# }].each do |attrs|
#   Merit::Badge.create! attrs
# end

Merit::Badge.create!(
  id: 1,
  name: "Zeca Urubu",
  description: "Parabéns, você virou o Pé de Pano!",
  custom_fields: { difficulty: :silver },
  custom_fields: { img_url: 'shareif-logo1.png' }
)

Merit::Badge.create!(
  id: 2,
  name: "Pica Pau",
  description: "Parabéns, você virou o Pica Pau!",
  custom_fields: { difficulty: :gold},
  custom_fields: { img_url: 'shareif-logo1.png' }
)

Merit::Badge.create!(
  id: 3,
  name: "Clint Eastwood",
  description: "Parabéns, você virou o Clint Eastwood!",
  custom_fields: { difficulty: :gold },
  custom_fields: { img_url: 'shareif-logo1.png' }
)

Merit::Badge.create!(
  id: 4,
  name: "Chuck Norris",
  description: "Parabéns, você virou o Chuck Norris!",
  custom_fields: { difficulty: :silver },
  custom_fields: { img_url: 'shareif-logo1.png' }
)

Merit::Badge.create!(
  id: 5,
  name: "Escritor Junior",
  description: "Parabéns, você virou um Escritor Júnior!",
  custom_fields: { difficulty: :silver },
  custom_fields: { img_url: 'shareif-logo1.png' }
)

Merit::Badge.create!(
  id: 6,
  name: "Escritor Pleno",
  description: "Parabéns, você virou um Escritor Pleno!",
  custom_fields: { difficulty: :silver },
  custom_fields: { img_url: 'shareif-logo1.png' }
)

Merit::Badge.create!(
  id: 7,
  name: "Escritor Senior",
  description: "Parabéns, você virou um Escritor Sênior!",
  custom_fields: { difficulty: :silver },
  custom_fields: { img_url: 'shareif-logo1.png' }
)


Merit::Badge.create!(
  id: 8,
  name: "Super Escritor",
  description: "Parabéns, você virou um Super Escritor!",
  custom_fields: { difficulty: :silver },
  custom_fields: { img_url: 'shareif-logo1.png' }
)

# Merit::Badge.create!(
#   id: 8,
#   name: "Escritor Jr",
#   description: "Parabéns, você virou Super Escritor Jr!",
#   custom_fields: { difficulty: :silver },
#   custom_fields: { img_url: 'shareif-logo1.png' }
# )

# Merit::Badge.create!(
#   id: 9,
#   name: "Escritor",
#   description: "Parabéns, você virou Super Escritor!",
#   custom_fields: { difficulty: :silver },
#   custom_fields: { img_url: 'shareif-logo1.png' }
# )

# Merit::Badge.create!(
#   id: 10,
#   name: "Criativo",
#   description: "Parabéns, você virou Super Criativo!",
#   custom_fields: { difficulty: :silver },
#   custom_fields: { img_url: 'shareif-logo1.png' }
# )
