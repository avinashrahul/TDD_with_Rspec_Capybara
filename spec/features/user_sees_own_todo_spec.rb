require "rails_helper"
feature "User sees his own todos" do
	scenario "doesn't see other todos" do
		Todo.create!(title: "Buy groceries", email: "someone_else@example.com")

		sign_in_as "someone@example.com"
		expect(page).not_to have_css ".todos li", text: "Buy groceries"
	end
end
