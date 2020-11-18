# Channel Sender

Distributed Elixir Cluster implementation of real time with websockets and notifications channels.


- [Channel Sender](#channel-sender)
- [Plugin Implementation](#plugin-implementation)
- [How to use](#how-to-use)
  - [Install](#install)
  - [Configuration](#configuration)
  - [Run](#run)
- [How can I help?](#how-can-i-help)

## How to use

### Requirements

- Elixir >= 1.10
- Mix

### Install
```elixir
mix deps.get
mix compile
```
### Configuration

Open and edit the config/dev.exs file to configure, you can create and set new environment files.
   |  **Parameters** | Description                                   | Default Value |
   | -------------------------------- | -------------------------------------- | ------------------ |
   | socket_port                          | Port to atend Web Sockets requests                   | 8082      |
   | rest_port                          | API Port to atend Rest service requests     |       8081             |
   | initial_redelivery_time                          | time in milliseconds to retry |      900              |
   | socket_idle_timeout                          | timeout in milliseconds to reject idle socket |            30000        |
   | max_age                          | time in seconds   |        900            |

### Run
In the shell:
```elixir
iex -S mix 
or
 MIX_ENV=<CONFIG-FILE-NAME> iex --erl "-name async-node1@127.0.0.1" -S mix 
 ```
 ### Connect nodes
Can connect the nodes with a self-discovery strategy as a central register or broadcast, you can also connect the nodes manually with the following task. 
```elixir
Node.connect(:"node-name@ip")
 ```
 and verify with:
 ```elixir
 Node.list()
 ```

## How can I help?

Review the [issues](https://github.com/bancolombia/async-dataflow-channel-sender/issues). Read [how Contributing](https://github.com/bancolombia/async-dataflow-channel-sender/wiki/Contributing).