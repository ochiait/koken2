require 'rails_helper'

RSpec.describe SettingsController, type: :controller,skipped_usual: true do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
