using JSON

# Set up the request parameters
params = Dict(
    "engine" => "google_scholar_author",
    "author_id" => "LvSioAIAAAAJ",
    "api_key" => "c61a0ed62b2a40103d488d7416aab4c2a38fc995afaf295fee3be9fcd3660230"
,
    "hl" => "en"
)


url = "https://serpapi.com/search.json?engine=google_scholar_author&author_id=$(params["author_id"])&api_key=$(params["api_key"])&hl=$(params["hl"])"



# Send the request to SerpAPI's Cited By API using curl
r = read(`curl --get $url`, String)

# Parse the JSON response
data = JSON.parse(String(r))

##

# Retrieve the author's citations
h_index = data["cited_by"]["table"][2]["h_index"]["all"]
citations = data["cited_by"]["table"][1]["citations"]["all"]


