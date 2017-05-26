require "url_shortener/transactions"

UrlShortener::Transactions.define do |t|
  # Define your dry-transaction objects here:
  #
  # t.define "transactions.users.sign_up" do
  #   step :persist, with: "users.operations.sign_up"
  #   # other steps here
  # end
end
