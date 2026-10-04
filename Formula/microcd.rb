class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.28.0/microcd-darwin-aarch64.tar.gz"
      sha256 "a4cb446ad5efadb6efef850dd2134dfe08cce628c57afae1787163a443cff915"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.28.0/microcd-darwin-x86_64.tar.gz"
      sha256 "08e1a132bc7c1a2d4ee8ece68c56b6fe3af25942e105c3cb8c3844e2ad72e9ff"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
