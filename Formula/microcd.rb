class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.41.7/microcd-darwin-aarch64.tar.gz"
      mirror "https://packages.microcd.dev/homebrew/v0.41.7/microcd-darwin-aarch64.tar.gz"
      sha256 "c6fc8b5a3766c9bf25d654dee2f7d4edde29a2133892aed690c81a3740c0e314"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.41.7/microcd-darwin-x86_64.tar.gz"
      mirror "https://packages.microcd.dev/homebrew/v0.41.7/microcd-darwin-x86_64.tar.gz"
      sha256 "46e3ecf86466c85727caf4699cbdeeede6bbbc9efcfefafa0b985fac798b0d9c"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
