# Multi-Sig Wallet Challenge

This is my attempt at the [Speed Run Challenge #5](https://speedrunethereum.com/).

# Changes

- added a transaction expiry
- Removed nonce and added executed transactions history to prevent replays. Allows parallel proposals (maybe I misunderstoon the nonce?)
- Removes the backend and instead uses P2P connections to other owners. Probably little real-world usuage but removes the need for servers. Use two browsers as meta mask is cross window

# TODO

- Wallet Factory
- Test with ERC-20
- Would be cool to have a custom call data builder
- custom call data
- remove executed trans
