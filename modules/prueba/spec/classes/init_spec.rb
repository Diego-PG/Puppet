require 'spec_helper'
describe 'prueba' do
  context 'with default values for all parameters' do
    it { should contain_class('prueba') }
  end
end
