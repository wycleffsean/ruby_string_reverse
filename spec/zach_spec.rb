require 'spec_helper'

describe 'zachs string recursive reverse' do
  let(:string_reverse) { ->(str) { str.zachs_recurse_reverse } }
  it_behaves_like 'a string reverse method'
end
