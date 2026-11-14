class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.40.0/microcd-darwin-aarch64.tar.gz"
      mirror "https://packages.microcd.dev/homebrew/v0.40.0/microcd-darwin-aarch64.tar.gz"
      sha256 "3aa2e165fb42baeaee30e884051d54c5216b08f18af6b05f0848dd1d87ce917a"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.40.0/microcd-darwin-x86_64.tar.gz"
      mirror "https://packages.microcd.dev/homebrew/v0.40.0/microcd-darwin-x86_64.tar.gz"
      sha256 "a7b31e35e9a8fafd679bfcb04c9c9dfe5c27b397ea84c97c5855907e2f621a57"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
