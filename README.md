# microCD for Homebrew

Install the stable microCD command-line agent on macOS (Apple Silicon or Intel):

```sh
brew install microcd-dev/tap/microcd
microcd --version
```

Update or verify the installation:

```sh
brew update
brew upgrade microcd-dev/tap/microcd
brew test microcd-dev/tap/microcd
```

This installs the binary only. It does not start an agent, configure workloads,
register with a Hub, or enable automatic deployments. Configure your runtime and
agent explicitly before running it. Background service installation through
`brew services` is not provided.

The formula selects the matching official macOS archive. Its SHA-256 pins the
archive; publication verifies the binary against microCD's signed release
manifest first. This tap distributes final stable releases only, never release
candidates. Existing release assets are not overwritten.

Use Homebrew to update a Homebrew-managed installation; do not enable the
agent's self-installer for the Homebrew-managed binary.

Project: [microcd.dev](https://microcd.dev).
Binary license: Apache-2.0; see [LICENSE](LICENSE).
