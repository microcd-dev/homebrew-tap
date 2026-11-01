class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.34.0/microcd-darwin-aarch64.tar.gz"
      sha256 "959a2646f5e55779416f193ccb816b0b89dac593f78ae947bbc2a15319eda1d7"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.34.0/microcd-darwin-x86_64.tar.gz"
      sha256 "c1e33674f91eab9b04447cb4ccba35354e520763e2cd61463eeec31a9e6d833b"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
