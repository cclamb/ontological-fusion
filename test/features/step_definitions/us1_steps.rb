require_relative '../../../lib/rectifier'

ontology_1 = nil
ontology_2 = nil
rectifier = nil
content = nil

Given /^The system is configured for ontological analysis$/ do
  rectifier = create_ruby_rectifier ontology_1, ontology_2
end

When /^an analyst requests content$/ do
	content = { :content => 'content', :policy => policy }
end

# When /^the system finds content classified under a different ontology$/ do
#   pending # express the regexp above with the code you wish you had
# end

# Then /^the ontologies are rectified$/ do
#   pending # express the regexp above with the code you wish you had
# end

Then /^the analyst is allowed to see the information they are allowed to see$/ do
  redacted_content = rectifier.rectify content
end
