require_relative 'message_filter'

describe MessageFilter do
  before(:each) do
    @filter = MessageFilter.new('foo')
  end
  it 'detects message with NG word' do
    expect(@filter.detect?('hello from foo')).to eq true
  end
  it 'does not detect message without NG word' do
    expect(@filter.detect?('hello, world!')).to eq false
  end
end
