require_relative 'message_filter'

describe MessageFilter, 'with argument "foo"' do
  subject { MessageFilter.new('foo') }
  it { is_expected.to be_detect('hello from foo') }
  it { is_expected.not_to be_detect('hello, world') }
end

describe MessageFilter, 'with argument "foo","bar"' do
  subject { MessageFilter.new('foo', 'bar') }
  it { is_expected.to be_detect('hello from bar') }
end