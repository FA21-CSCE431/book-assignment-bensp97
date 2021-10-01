# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  subject do
    described_class.new(author: 'J. K. Rowling')
  end

  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  subject do
    described_class.new(price: '15.95')
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  subject do
    described_class.new(publisheddate: '1997-06-26')
  end


  it 'is not valid without a published date' do
    subject.publisheddate = nil
    expect(subject).not_to be_valid
  end

end