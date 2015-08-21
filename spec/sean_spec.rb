require 'spec_helper'

describe 'seans_slow_reverse' do
  let(:string_reverse) { ->(str) { str.seans_slow_reverse } }
  it_behaves_like 'a string reverse method'
end

describe 'seans_xor_swap' do
  let(:string_reverse) { ->(str) { str.seans_xor_swap } }
  it_behaves_like 'a string reverse method'
end
