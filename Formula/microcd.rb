class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.37.0/microcd-darwin-aarch64.tar.gz"
      sha256 "0204271686bf0cc6ae27336104c550e442a67984a146417436fe215d913973d6"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.37.0/microcd-darwin-x86_64.tar.gz"
      sha256 "df294b1b020265f5e0dd2e79a8195d48ace1697c625acba0871b149dbc7c6568"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
