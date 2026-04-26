## GitHub Copilot Chat

- Extension: 0.44.2 (prod)
- VS Code: 1.116.0 (560a9dba96f961efea7b1612916f89e5d5d4d679)
- OS: darwin 25.4.0 arm64
- GitHub Account: ranjit-walunj

## Network

User Settings:
```json
  "http.systemCertificatesNode": true,
  "github.copilot.advanced.debug.useElectronFetcher": true,
  "github.copilot.advanced.debug.useNodeFetcher": false,
  "github.copilot.advanced.debug.useNodeFetchFetcher": true
```

Connecting to https://api.github.com:
- DNS ipv4 Lookup: timed out after 10 seconds
- DNS ipv6 Lookup: ::ffff:20.207.73.85 (4131 ms)
- Proxy URL: None (0 ms)
- Electron fetch (configured): HTTP 200 (1531 ms)
- Node.js https: HTTP 200 (141 ms)
- Node.js fetch: HTTP 200 (146 ms)

Connecting to https://api.githubcopilot.com/_ping:
- DNS ipv4 Lookup: 140.82.113.21 (16 ms)
- DNS ipv6 Lookup: ::ffff:140.82.113.21 (2 ms)
- Proxy URL: None (1 ms)
- Electron fetch (configured): HTTP 200 (989 ms)
- Node.js https: HTTP 200 (881 ms)
- Node.js fetch: HTTP 200 (1153 ms)

Connecting to https://copilot-proxy.githubusercontent.com/_ping:
- DNS ipv4 Lookup: 4.225.11.192 (1052 ms)
- DNS ipv6 Lookup: ::ffff:4.225.11.192 (2 ms)
- Proxy URL: None (5 ms)
- Electron fetch (configured): HTTP 200 (515 ms)
- Node.js https: HTTP 200 (553 ms)
- Node.js fetch: HTTP 200 (576 ms)

Connecting to https://mobile.events.data.microsoft.com: HTTP 404 (226 ms)
Connecting to https://dc.services.visualstudio.com: HTTP 404 (799 ms)
Connecting to https://copilot-telemetry.githubusercontent.com/_ping: HTTP 200 (799 ms)
Connecting to https://telemetry.individual.githubcopilot.com/_ping: HTTP 200 (835 ms)
Connecting to https://default.exp-tas.com: HTTP 400 (98 ms)

Number of system certificates: 0

## Documentation

In corporate networks: [Troubleshooting firewall settings for GitHub Copilot](https://docs.github.com/en/copilot/troubleshooting-github-copilot/troubleshooting-firewall-settings-for-github-copilot).