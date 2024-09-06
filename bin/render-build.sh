set -o errexit

bundle install
# Tailwind CSS のビルド
yarn build:css
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate