require 'spec_helper'

describe Constantizer do
  context 'given the templates directory' do
    before do
      described_class.load!(File.expand_path('lib/constantizer/templates'))
    end

    it 'should initialize the constants' do
      expect(CURRENCIES).to have(2).item
      expect(DEFAULT_CURRENCY).to eq('USD')
    end
  end
end
