require 'rails_helper'

module BetterTogether
  module Community
    describe Person do
      let(:person) { build(:person) }
      subject { person }

      describe 'has a valid factory' do
        it { is_expected.to be_valid }
      end

      it_behaves_like 'a friendly slugged record'
      it_behaves_like 'an identity'

      describe 'ActiveRecord associations' do

      end

      describe 'ActiveModel validations' do
        it { is_expected.to validate_presence_of(:given_name) }
      end

      describe 'callbacks' do
      end

      describe '#full_name' do
        it { is_expected.to respond_to(:full_name) }
      end
    end
  end
end
