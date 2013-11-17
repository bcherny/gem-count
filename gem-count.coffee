# deps

promise = require 'when'
request = require 'request'

# export

module.exports = count

# module!

count = (user) ->

	api = 'https://rubygems.org/api/v1/owners/:user/gems.json'
	deferred = promise.defer()

	getUrl = (user = '') ->
		api.replace ':user', user

	# fetches repo count
	fetch = ->
		url = getUrl user
		request
			uri: url
		, process

	# process response
	process = (err, res, body) ->
		gems = JSON.parse body
		deferred.resolve gems.length or 0

	# do it!
	fetch()

	# return
	deferred.promise