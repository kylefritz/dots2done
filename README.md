#Dot2Done App



## Heroku Hints:

don't include production, test environment

    heroku config:add BUNDLE_WITHOUT="development:test"


##Web App Theme

http://pilu.github.com/web-app-theme/#themes/warehouse

### gen nice pages
$ rails g web_app_theme:themed tasks --engine=haml

