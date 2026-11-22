class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.41.6/microcd-darwin-aarch64.tar.gz"
      mirror "https://packages.microcd.dev/homebrew/v0.41.6/microcd-darwin-aarch64.tar.gz"
      sha256 "a076191ac7ae909b802b2f3fbd58a40db362205ec10cae4075b41fd896eaedbb"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.41.6/microcd-darwin-x86_64.tar.gz"
      mirror "https://packages.microcd.dev/homebrew/v0.41.6/microcd-darwin-x86_64.tar.gz"
      sha256 "8b942d605da73be02cedf557604e1a3f57220a1f25d2826372fa4ce21f26ba5a"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
