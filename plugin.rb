# frozen_string_literal: true
# name: discourse-tudiabetes
# about: Customizations for www.tudiabetes.org/forum
# version: 0.1
# authors: Neil Lalonde

register_css <<CSS
.wordpress-preferences-link {
  margin-top: 32px;
  margin-bottom: 24px;
}
.wordpress-preferences-link a {
  text-decoration: underline;
}
CSS

after_initialize do
  require_dependency File.expand_path("../lib/no_group_constraint.rb", __FILE__)

  Discourse::Application.routes.prepend do
    # A lot of Ning urls use "group" and "groups" as a synonym for "topic". Stop showing access denied page.
    get "/groups/:id",
        to: redirect("https://forum.tudiabetes.org"),
        constraints: NoGroupConstraint.new
    get "/group/:id",
        to: redirect("https://forum.tudiabetes.org"),
        constraints: NoGroupConstraint.new
  end
end
