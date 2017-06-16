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
  name: "Chuck",
  description: "Parabéns, você virou o Chuck Norris!",
  custom_fields: { difficulty: :silver },
  custom_fields: { img_url: 'shareif-logo1.png' }
)

Merit::Badge.create!(
  id: 2,
  name: "Babaca",
  description: "Parabéns, você virou um Babaca!",
  custom_fields: { difficulty: :gold},
  custom_fields: { img_url: 'shareif-logo1.png' }
)

Merit::Badge.create!(
  id: 3,
  name: "Querido",
  description: "Parabéns, você virou um Querido!",
  custom_fields: { difficulty: :gold },
  custom_fields: { img_url: 'shareif-logo1.png' }
)

Merit::Badge.create!(
  id: 4,
  name: "Amado",
  description: "Parabéns, você virou um Amado!",
  custom_fields: { difficulty: :silver },
  custom_fields: { img_url: 'shareif-logo1.png' }
)

Merit::Badge.create!(
  id: 5,
  name: "Calouro",
  description: "Parabéns, você virou um Calouro!",
  custom_fields: { difficulty: :silver },
  custom_fields: { img_url: 'shareif-logo1.png' }
)

Merit::Badge.create!(
  id: 6,
  name: "Popular",
  description: "Parabéns, você virou Popular!",
  custom_fields: { difficulty: :silver },
  custom_fields: { img_url: 'shareif-logo1.png' }
)

Merit::Badge.create!(
  id: 7,
  name: "Super Popular",
  description: "Parabéns, você virou Super Popular!",
  custom_fields: { difficulty: :silver },
  custom_fields: { img_url: 'shareif-logo1.png' }
)

Merit::Badge.create!(
  id: 8,
  name: "Escritor Jr",
  description: "Parabéns, você virou Super Escritor Jr!",
  custom_fields: { difficulty: :silver },
  custom_fields: { img_url: 'shareif-logo1.png' }
)

Merit::Badge.create!(
  id: 9,
  name: "Escritor",
  description: "Parabéns, você virou Super Escritor!",
  custom_fields: { difficulty: :silver },
  custom_fields: { img_url: 'shareif-logo1.png' }
)

Merit::Badge.create!(
  id: 10,
  name: "Criativo",
  description: "Parabéns, você virou Super Criativo!",
  custom_fields: { difficulty: :silver },
  custom_fields: { img_url: 'shareif-logo1.png' }
)

Merit::Badge.create!(
  id: 11,
  name: "Mega Criativo",
  description: "Parabéns, você virou Super Mega Criativo!",
  custom_fields: { difficulty: :silver },
  custom_fields: { img_url: 'shareif-logo1.png' }
)