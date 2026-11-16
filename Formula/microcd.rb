class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.41.2/microcd-darwin-aarch64.tar.gz"
      mirror "https://packages.microcd.dev/homebrew/v0.41.2/microcd-darwin-aarch64.tar.gz"
      sha256 "1f7b931a86ad305ca02875dc27622d11efa53a7ae4eedee1c0ecac55d3813ada"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.41.2/microcd-darwin-x86_64.tar.gz"
      mirror "https://packages.microcd.dev/homebrew/v0.41.2/microcd-darwin-x86_64.tar.gz"
      sha256 "e669ba2a705c47f24aaafad34546b2e7af51abe431f86b6c71a27c31d05b182e"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
