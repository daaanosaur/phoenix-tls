# Northflank Phoenix Elixir template

<a target="_blank" rel="noopener noreferrer" href="https://www.northflank.com">
    <img alt="Northflank" align="right" src="/media/logo.svg" width="35%" />
</a>

Deploy this Phoenix Elixir application easily with [Northflank](https://www.northflank.com):

- Deploy the [stack template](https://northflank.com/stacks/deploy-phoenix-elixir) to your account
- Run the template
- Wait for the app to build and visit the newly assigned URL. That's it!

You can now clone your repository locally and start making changes. Push your changes to automatically build and deploy the updated application!

[Learn more about using Northflank](https://northflank.com/docs/).

## About Phoenix

[Phoenix](https://www.phoenixframework.org/) is a web development framework to build rich, interactive web applications, with components and concepts likened to Ruby on Rails or Python's Django. It provides high developer productivity and high application performance. It allows you to create real-time features with server-rendered HTML delivered over websocket, and HTML-aware compile time checking.

Learn more about deploying Phoenix applications on Northflank [in our guide](https://northflank.com/guides/deploy-your-phoenix-elixir-app-on-northflank)

## Develop locally 🚀

You need to have [a local PostgreSQL database](https://hexdocs.pm/phoenix/installation.html#postgresql) [configured and running](https://hexdocs.pm/phoenix/mix_tasks.html#mix-ecto-create).

Set up your local development environment by following these steps:

1. Configure your local PostgreSQL database in `/config/dev.exs`
2. Run `mix setup` to install and setup dependencies
3. Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

The live development website should be available at [http://localhost:4000](http://localhost:4000)