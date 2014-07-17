require_relative 'message_filter'

describe MessageFilter do
  before do
    @filter = MessageFilter.new('foo')
  end
  it 'detects message with NG word' do
    expect(@filter).to be_detect('hello from foo')
  end
  it 'does not detect message without NG word' do
    expect(@filter).not_to be_detect('hello, world')
  end
end
