class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.31.0/microcd-darwin-aarch64.tar.gz"
      sha256 "8f5538bf301ad4fa111c9fc5e231c06c4193333a733da5e1d3b44389c43a508c"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.31.0/microcd-darwin-x86_64.tar.gz"
      sha256 "48107457a880afac5f2c627aebb532e0ad2f9f34b2267000de66eb406082d022"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
