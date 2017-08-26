require 'rails_helper'

RSpec.describe ReportsController, type: :controller,skipped_usual: true do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
