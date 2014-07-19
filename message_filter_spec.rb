require_relative 'message_filter'
require 'rspec/its'
require 'rspec/collection_matchers'

describe MessageFilter do
  shared_examples 'MessageFilter with argument "foo"' do
    it { is_expected.to be_detect('hello from foo') }
    it { is_expected.not_to be_detect('hello, world!') }
    its(:ng_words) { is_expected.not_to be_empty }
  end
  context 'with argument "foo"' do
    subject { MessageFilter.new('foo') }
    it_behaves_like 'MessageFilter with argument "foo"'
    it 'ng_words size is 1' do
      expect(subject.ng_words).to have(1).item
    end
  end
  context 'with argument "foo","bar"' do
    subject { MessageFilter.new('foo', 'bar') }
    it { is_expected.to be_detect('hello from bar') }
    it_behaves_like 'MessageFilter with argument "foo"'
  end
end
