# ⛽ Base Gas Tracker

> Real-time gas price monitor for Base mainnet — know when to transact, estimate your costs, and never overpay again.

[![Base Network](https://img.shields.io/badge/Network-Base%20Mainnet-0052FF?style=flat&logo=coinbase&logoColor=white)](https://base.org)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Live Demo](https://img.shields.io/badge/Live%20Demo-GitHub%20Pages-green?style=flat&logo=github)](https://memosr.github.io/base-gas-tracker/)

**[→ Open Live Demo](https://memosr.github.io/base-gas-tracker/)**

---

## Features

- ⚡ **Real-time gas prices** — auto-refreshes every 10 seconds
- 🚦 **Status indicator** — instantly see if gas is Cheap, Normal, or High
- 📈 **24-hour history chart** — visualize gas price trends over the last day
- 🧮 **Transaction cost calculator** — estimate fees for common operations:
  - ETH transfer
  - ERC-20 token transfer
  - Uniswap swap
  - NFT mint
- 🕐 **Best time to transact** — analysis of optimal windows based on recent history
- 📦 **Latest block info** — block number, timestamp, base fee, and priority fee
- 🔄 **Multiple RPC fallbacks** — automatic failover keeps the tracker online even if one endpoint goes down

---

## Tech Stack

| Layer | Technology |
|---|---|
| Frontend | Vanilla JavaScript (no framework) |
| Blockchain | [ethers.js v6](https://docs.ethers.org/v6/) |
| Charts | [Chart.js v4](https://www.chartjs.org/) |
| Hosting | GitHub Pages |
| Network | Base Mainnet (chainId: 8453) |

No build step, no bundler, no dependencies to install.

---

## Local Development

```bash
# 1. Clone the repo
git clone https://github.com/memosr/base-gas-tracker.git
cd base-gas-tracker

# 2. Open in your browser
open frontend/index.html
```

That's it. The app is entirely static — no server, no build process, no `npm install`.

---

## RPC Endpoints

The tracker cycles through these public Base RPC endpoints with automatic failover:

| Provider | URL |
|---|---|
| LlamaRPC | `https://base.llamarpc.com` |
| PublicNode | `https://base-rpc.publicnode.com` |
| Base Official | `https://mainnet.base.org` |

If one endpoint fails, the tracker silently switches to the next. The active connection is shown in the status pill at the top of the page.

---

## Contributing

Contributions are welcome. To get started:

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/your-feature`
3. Make your changes in `frontend/index.html`
4. Test locally by opening the file in a browser
5. Open a pull request with a clear description of what you changed and why

Bug reports and feature suggestions are equally welcome — open an issue and we'll take a look.

---

## License

[MIT](LICENSE) — free to use, modify, and distribute.
