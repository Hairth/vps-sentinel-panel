# vps-sentinel Cloudflare Panel

[![Deploy to Cloudflare](https://deploy.workers.cloudflare.com/button)](https://deploy.workers.cloudflare.com/?url=https%3A%2F%2Fgithub.com%2FHairth%2Fvps-sentinel)

This repository is a one-click Cloudflare Worker/D1 panel template for `vps-sentinel`.

## Deploy

Click the button above, or open:

```text
https://deploy.workers.cloudflare.com/?url=https%3A%2F%2Fgithub.com%2FHairth%2Fvps-sentinel
```

Cloudflare will clone this repository, create the Worker, provision the D1 database, run the D1 migration, and deploy the panel.

During setup, fill these required secrets:

- `PANEL_SHARED_SECRET`: random HMAC ingest secret shared with every VPS agent.
- `PANEL_TOKEN`: random browser token for private management pages.

Keep the default deploy command:

```bash
npm run deploy
```

## Agent Config

After the Worker is deployed, configure each VPS agent:

```toml
[panel]
enabled = true
url = "https://<your-worker>.<your-subdomain>.workers.dev/api/v1/ingest"
node_name = "prod-sg-1"
secret = "<PANEL_SHARED_SECRET>"
privacy_mode = "strict"
```

Then run on the VPS:

```bash
sudo vs config validate
sudo vs panel push
sudo vs reload
```

Open the private panel at:

```text
https://<your-worker>.<your-subdomain>.workers.dev/panel-admin
```

Use `PANEL_TOKEN` when the UI asks for the token.
