# newnews-backend
The backend of my news aggregator

## Pre-requisite
- just
- Elixir 1.18.4
- Mix 1.18.4

## Functions
- Auth
- Get news
- Socket communication with frontend
  - Push news
  - Accept new keyword / category, search and push

## TODO
- [x] Figure out how to properly use Mix (i hope my current implementation is proper)
- [ ] News API Crawler 
  - [x] the "call"
  - [ ] error handling
  - [ ] response handling
    - [ ] Cache
- [ ] Start a HTTP server for auth
  - [ ] OAuth using google
- [ ] Socket connection
