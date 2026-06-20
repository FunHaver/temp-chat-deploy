# TODO
The list of tasks to make the current iteration of Temp Chat better!

## Client (temp-chat-client submodule)
- [x] Update npm dependencies
- [x] Add meta description and Open Graph tags to index.html
- [x] Right align user's messages, left align other chatters' messages
- [ ] Fix bug where when first user leaves room, room gets reaped even when other users are still there
- [ ] Add indications that the chat room vanishes (some flavor text, an info button with a modal explaining things)
  - [ ] Message at top of user list that states # of users left
  - [ ] Info icon button that displays modal stating the following:
      - [ ] The shareable URL (show url here with copy button next to it) can be copied to the clipboard by selecting the   Copy Room Link button on the top right.
      - [ ] When the last user leaves, the chat room is deleted
      - [ ] Users can leave by closing the window/tab or by selecting the Leave Room button on the top left
      - [ ] Users cannot rejoin a chat room with a name that has already been used
  - [ ] Visual indication that a user has left (faded color or strikethrough)
- [ ] Add chat message timestamps
- [ ] Select and implement an attractive pallette and design

## Server (temp-chat-server submodule)
- [ ] Fix bug where if message is sent in already reaped chatroom, the node process crashes. Handle better.
- [ ] Update npm dependencies
- [ ] Refactor to typescript

## Deployment (temp-chat-deploy parent repo)
- [ ] Audit installation script
- [ ] Audit nginx config
