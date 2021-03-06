require 'rails_helper'

RSpec.describe Logo, type: :model do
    describe '#published?' do
    subject { logo.published? }

    let(:logo) { Logo.new(title: 'Logo', publication_status: 'published') }

    it { is_expected.to eq(true) }
    end
end
