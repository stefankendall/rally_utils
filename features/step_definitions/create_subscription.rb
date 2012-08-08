When /^I log into ALM with username (.*?) with password (.*)$/ do |username, password|
  @cookie = RallyUtils.login(username, password)
end

Then /^I can create a subscription with admin username (.*?) and modules (.*)$/ do |admin_user, modules|
  @subscription_id = RallyUtils.create_subscription(@cookie, admin_user, modules.split('|'))
end

Then /^I can toggle on (.*)$/ do |toggles|
  RallyUtils.switch_toggles(@cookie, @subscription_id, toggles.split('|'))
end
