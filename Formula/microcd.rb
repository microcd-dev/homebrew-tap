class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.39.0/microcd-darwin-aarch64.tar.gz"
      mirror "https://packages.microcd.dev/homebrew/v0.39.0/microcd-darwin-aarch64.tar.gz"
      sha256 "241f6739dacacb2f7a7b905978cd7e0a92ec694822452ad1d13b9bca9fe2d66f"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.39.0/microcd-darwin-x86_64.tar.gz"
      mirror "https://packages.microcd.dev/homebrew/v0.39.0/microcd-darwin-x86_64.tar.gz"
      sha256 "22c9ab72faebf432d95392364a6cc1937dbab98f28d268b2b207e2807ae1e6c1"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
