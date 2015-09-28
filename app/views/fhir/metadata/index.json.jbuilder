json.resourceType "Conformance"
json.publisher "MITRE"
json.date "2015-07-10T09:08:29.499-04:00"
json.description "Test implementation of the FHIR markup for our database"
# json.experimental "true"
json.kind "capability"
json.fhirVersion "0.0.82"
json.acceptUnknown "false"
json.format ["xml", "json"]
json.rest [nil] do
  json.mode "server"
  json.resource ["Practitioner", "Organization"] do |resource|
    json.type resource
    json.interaction [nil] do
      json.code "read"
      json.documentation "can only retrieve via ids"
    end
    json.interaction [nil] do
      json.code "search-type"
      json.documentation "No search criteria leads to all #{resource}s beings returned"
    end
    # json.searchParam [nil] do
    #   json.name "_id"
    #   json.type "string"
    #   json.documentation "All #{resource}s with id"
    # end
    json.searchParam [nil] do
      json.name "name"
      json.type "string"
      json.documentation "All #{resource}s with first or last name matching value"
    end
    json.searchParam [nil] do
      json.name "given_name"
      json.type "string"
      json.documentation "All #{resource}s with first name matching value"
    end if resource == "Practitioner"
    json.searchParam [nil] do
      json.name "family_name"
      json.type "string"
      json.documentation "All #{resource}s with last name matching value"
    end if resource == "Practitioner"
  end
end
