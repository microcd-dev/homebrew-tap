class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.41.4/microcd-darwin-aarch64.tar.gz"
      mirror "https://packages.microcd.dev/homebrew/v0.41.4/microcd-darwin-aarch64.tar.gz"
      sha256 "94ab1f1d5371f379094b15ceae1b00310e07632c0d37ebade11a1b8a742bd5ee"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.41.4/microcd-darwin-x86_64.tar.gz"
      mirror "https://packages.microcd.dev/homebrew/v0.41.4/microcd-darwin-x86_64.tar.gz"
      sha256 "3ad34c6e524b41f349ca85b0ba69ca31de65a55bffa6231ddce213b7e3ee4fbd"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
