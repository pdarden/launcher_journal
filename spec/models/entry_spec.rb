require 'spec_helper'

describe Entry do
  let(:blanks) { ['', nil] }

  it { should have_valid(:title).when('a title') }
  it { should_not have_valid(:title).when(*blanks) }

  it { should have_valid(:body).when('This is my first post!!! 2304924') }
  it { should_not have_valid(:title).when(*blanks) }

  it { should have_valid(:category_id).when(3) }
  it { should_not have_valid(:category_id).when('an id') }

  it { should belong_to(:category) }

end
