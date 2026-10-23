class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.30.0/microcd-darwin-aarch64.tar.gz"
      sha256 "7dbc867bd14974191319dea7852148faddd5ad64d72b47bae329a9cc01f73e78"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.30.0/microcd-darwin-x86_64.tar.gz"
      sha256 "dc385ea012c2c031c7d4464b7178a2613aea00bf5e6d423973f9a8441a549834"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
