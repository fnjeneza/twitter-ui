
.pragma library

function retrieve_tweets(listModel) {
    console.debug("retrieve_tweets func...")
    var sample = "{\"tweets\": [{\"username\" : \"alpha\",
                    \"user\" : \"@alpha\",
                    \"uptime\" : \"6h\",
                    \"body\" : \"hello world\"},
                {\"username\" : \"beta\",
                    \"user\" : \"@beta\",
                    \"uptime\" : \"6h\",
                    \"body\" : \"hello world beta\"}]}"
    var jsonObject = JSON.parse(sample)

    for( var i in jsonObject.tweets)
    {
        listModel.append(jsonObject.tweets[i])
    }
}
