gem-count
====================

[![Build Status](https://travis-ci.org/eighttrackmind/gem-count.png)](https://travis-ci.org/eighttrackmind/gem-count.png)
Fetch a user's gem count from Rubygems

## Usage

```coffee
getGems = require 'gem-count'

success = (count) -> ...
error = (err) -> ...
progress = (countSoFar) -> ...

getGems 'someUserName', success, error, progress
```

## Features

- Uses promises
- Supports paginated responses
- Supports `progress` for paginated responses

## Supported environments

- Node
- CommonJS