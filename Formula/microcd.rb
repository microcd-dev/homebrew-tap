class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.38.2/microcd-darwin-aarch64.tar.gz"
      mirror "https://packages.microcd.dev/homebrew/v0.38.2/microcd-darwin-aarch64.tar.gz"
      sha256 "4cf03accf74101b1fc2a619753f3b0c3a22b0b083c6b5b14b8426b0d0cf68c26"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.38.2/microcd-darwin-x86_64.tar.gz"
      mirror "https://packages.microcd.dev/homebrew/v0.38.2/microcd-darwin-x86_64.tar.gz"
      sha256 "b511549447fb91f6b7c61787f48b73ff03eb9accef4bfc05011789ea3829c282"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
