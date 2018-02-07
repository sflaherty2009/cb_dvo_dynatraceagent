# # encoding: utf-8

# Inspec test for recipe cb_dvo_tdcPd::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root') do
    it { should exist }
  end
end

# This tests that httpd is running on ports 80 and 443
describe port(80) do
  it { should be_listening }
end
describe port(443) do
  it { should be_listening }
end
