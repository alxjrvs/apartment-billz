require 'spec_helper'

describe ApartmentBills do
  let(:apartment) do
    ApartmentBills.new(roommates_number)
  end


  describe '#initialize' do
    let!(:roommates_number) { 5 } 

    it "takes the number of roommates as an argument" do
      expect(apartment.roommates).to eq roommates_number
    end

  end

  describe "#add_bill" do
    let(:roommates_number) { 4 } 
    describe "takes arguments for Name of bill and Bill Amount" do

      it "returns true" do
        expect(apartment.add_bill("BLOOD OF THE INNOCENT", 400)).to eq true
      end

      it "adds the bill to the apartment" do
        apartment.add_bill("BLOOD OF THE INNOCENT", 400)
        expect(apartment.bills).to include "BLOOD OF THE INNOCENT"
      end
    end

  end

  describe "#each_roommate_total_owed" do
    let(:roommates_number) { 4 } 

    it "correctly divides up the total bills of the home" do 
      apartment.add_bill("BLOOD OF THE INNOCENT", 400)
      expect(apartment.each_roommate_total_owed).to eq 100
    end
  end
end
