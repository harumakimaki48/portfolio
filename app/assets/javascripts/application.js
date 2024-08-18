//= require rails-ujs

// Rails UJSをインポート
import Rails from "@rails/ujs"

// Rails UJSを初期化
Rails.start()

console.log("Rails UJS initialized:", !!Rails)

// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import "bootstrap"
import "../stylesheets/application"

