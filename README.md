gem-count
====================

[![Build Status](https://travis-ci.org/eighttrackmind/gem-count.png)](https://travis-ci.org/eighttrackmind/gem-count.png)
Fetch a user's gem count from Rubygems

## Usage

```coffee
getGems = require 'gem-count'

success = (count) -> ...
error = (err) -> ...

getGems 'someUserName', success, error
```

## Features

- Uses promises

## Supported environments

- Node
- CommonJS