# TODO
The list of tasks to make the current iteration of Temp Chat better!

## Client (temp-chat-client submodule)
- [x] Update npm dependencies
- [x] Add meta description and Open Graph tags to index.html
- [x] Right align user's messages, left align other chatters' messages
- [x] If user loses websocket connection automatically display modal with a connection lost message and the leave room button.
- [x] Add indications that the chat room vanishes (some flavor text, an info button with a modal explaining things)
  - [x] Message at top of user list that states # of users left
  - [x] Info icon button that displays modal stating the following:
      - [x] When the last user leaves, the chat room is deleted
      - [x] Users can leave by closing the window/tab or by selecting the Leave Room button on the top left
      - [x] Users cannot rejoin a chat room with a name that has already been used
  - [x] Visual indication that a user has left (faded color or strikethrough)
- [x] Add chat message timestamps
- [x] Select and implement an attractive pallette and design

## Server (temp-chat-server submodule)
- [x] Fix bug where when first user leaves room, room gets reaped even when other users are still there
- [x] Fix bug where if message is sent in already reaped chatroom, the node process crashes. Handle better.
- [x] Update npm dependencies
- [x] Refactor to typescript

## Deployment (temp-chat-deploy parent repo)
- [ ] Audit installation script
- [ ] Audit nginx config
