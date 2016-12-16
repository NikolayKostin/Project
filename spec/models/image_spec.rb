require 'rails_helper'

RSpec.describe Image, type: :model do
  subject { described_class.new(
                               name: 'Name'
                               file: 'File.jpg'
  ) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without a file' do
    subject.file = nil
    expect(subject).do_not be_valid
  end

  it 'has one Theme' do
    asso = described_class.reflect_on_association(:theme)
    expect(asso.macro).to eq :belongs_to
  end
end