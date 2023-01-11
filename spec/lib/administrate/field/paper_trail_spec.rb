require "administrate/field/paper_trail"

describe Administrate::Field::PaperTrail do
  describe "#to_partial_path" do
    it "returns a partial based on the page being rendered" do
      page = :show
      field = Administrate::Field::PaperTrail.new(:image, "/a.jpg", page)

      path = field.to_partial_path

      expect(path).to eq("/fields/paper_trail/#{page}")
    end
  end
end
