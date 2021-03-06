require 'rails_helper'

module BetterTogether
  module Community
    describe Identification do
      let(:identification) { build(:identification) }
      subject { identification }

      describe 'has a valid factory' do
        it { is_expected.to be_valid }
      end

      describe 'ActiveRecord associations' do
        it { is_expected.to belong_to(:identity) }
        it { is_expected.to belong_to(:agent) }
      end

      describe 'ActiveModel validations' do
        it { is_expected.to validate_presence_of(:identity) }
        it { is_expected.to validate_presence_of(:agent) }
        it { is_expected.to validate_presence_of(:active) }
        it { is_expected.to validate_uniqueness_of(:active).scoped_to(%i(agent_type agent_id)) }
        it { is_expected.to validate_uniqueness_of(:identity_id).scoped_to(%i(identity_type agent_type agent_id)) }
      end

      describe 'callbacks' do
      end

      describe '#active' do
        it { is_expected.to respond_to(:active) }
      end
    end
  end
end
