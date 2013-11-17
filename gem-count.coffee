# deps

promise = require 'when'
request = require 'request'

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
	process = (error, res, body) ->

		# hacky, as the API doesn't return proper HTTP status codes >:(
		if error or body.charAt(0) isnt '['

			deferred.reject error or body

		else

			gems = JSON.parse body
			count = gems.length or 0
			deferred.resolve count

	# do it!
	fetch()

	# return
	deferred.promise

# export

module.exports = count