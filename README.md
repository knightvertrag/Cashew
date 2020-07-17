# CASHEW

#### A cryptocurrency to be incorporated into financial systems.

Clone the repo:

```
https://github.com/knightvertrag/Cashew.git
```

I have included 3 test nodes. Run the python files simultaneously in 3 different ports.

- Note: You may have to run the nodes as sudo if you get a connection refused error at any of the api endpoints.

API Endpoints:

- `GET localhost:{node_port}/mine_block` : Mine a block
- `GET localhost:{node_port}/get_chain` : Get the current chain
- `GET localhost:{node_port}/is_valid` : Check if block is valid
- `POST localhost:{node_port}/add_transaction` : Add a transaction
- `POST localhost:{node_port}/connect_node` : Connect given node to the network
- `GET localhost:{node_port}/replace_chain` : Replace the current chain with the largest chain
