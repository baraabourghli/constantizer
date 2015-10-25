require 'spec_helper'

describe Constantizer do
  let(:file) { 'lib/constantizer/templates' }

  before do
    described_class.load!(File.expand_path(file))
  end

  context 'given the templates directory' do
    it 'should initialize the constants' do
      expect(CURRENCIES.count).to eq(2)
      expect(DEFAULT_CURRENCY).to eq('USD')
    end
  end

  context 'given the unexisted directory' do
    let(:file) { 'who_are_you' }
    it { expect{CURRENCIES}.to raise_error(NameError) }
  end
end
