rails new tbk -d postgresql -j esbuild --css bootstrap
database.yml
    username: <%= Rails.application.credentials.db[:username] %>
    password: <%= Rails.application.credentials.db[:password] %>
    host: 127.0.0.1
    port: 5432
EDITOR="atom --wait" bin/rails credentials:edit
    db:
        username:...
        password:...
rails db:create
rails g scaffold producto nombre descripcion:text stock:integer precio:decimal sku
rails db:migrate
bundle add devise
rails g devise:install
en devise.rb línea 266: config.navigational_formats = ['*/*', :html, :turbo_stream]
rails g controller home index
rails g devise admin
rails g devise usuario
rails db:migrate
bundle add transbank-sdk
rails g model Metodo_pago nombre codigo
rails db:migrate
rails g model Orden usuario:references numero total:decimal estado
rails db:migrate
rails g model Detalle_orden cantidad:integer precio:decimal producto:references orden:references
rails db:migrate
rails g model Pago estado total:decimal token orden:references metodo_pago:references
rails db:migrate
rails g controller carros

rails c o seed
    MetodoPago.create(nombre: 'Transbank', codigo: 'TBK')
