# Newnews Backend
The backend of my US stock news aggregator

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

## Goal
- [ ] Learn Elixir
- [ ] Learn Socket
  - [ ] How to build a protocol (via socket)
- [ ] Rawdog a service that can login via oauth

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

