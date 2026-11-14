class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.40.1/microcd-darwin-aarch64.tar.gz"
      mirror "https://packages.microcd.dev/homebrew/v0.40.1/microcd-darwin-aarch64.tar.gz"
      sha256 "03fb31ed5b2705e27d8e12ea2e5f2c3daeedcb97e3eb1a6546974e5787063107"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.40.1/microcd-darwin-x86_64.tar.gz"
      mirror "https://packages.microcd.dev/homebrew/v0.40.1/microcd-darwin-x86_64.tar.gz"
      sha256 "bfef2a7ae56956f656bff0aa9b5d4f7700ed847a8848c4a833aa75ef8b3a297c"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
