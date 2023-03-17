# InSpec test for recipe postgres::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('rootttesty'), :skip do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(5434) do
  it { should be_listening }
end
