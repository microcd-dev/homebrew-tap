class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.41.1/microcd-darwin-aarch64.tar.gz"
      mirror "https://packages.microcd.dev/homebrew/v0.41.1/microcd-darwin-aarch64.tar.gz"
      sha256 "b44362713db4e3029c2b006e1645c68e2db6387d433ba8c379378b48265b428d"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.41.1/microcd-darwin-x86_64.tar.gz"
      mirror "https://packages.microcd.dev/homebrew/v0.41.1/microcd-darwin-x86_64.tar.gz"
      sha256 "9af872dec5e1a59d86664ea3f9d1efc6fe4a0af35d1879b43290aba617480764"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
