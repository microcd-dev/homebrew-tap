class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.36.0/microcd-darwin-aarch64.tar.gz"
      sha256 "96960e93fe63b034be7c3cd2e1ba87c12277f1b135176bd235158c351f7a303f"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.36.0/microcd-darwin-x86_64.tar.gz"
      sha256 "69094d0af3f707deb2b736f187fe928ab098ed6439031187d15f454f0181c3f5"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
