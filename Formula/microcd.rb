class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.35.1/microcd-darwin-aarch64.tar.gz"
      sha256 "8fcf5e2c021f25bf59233ddf470af5058a2d8b054d756382f8c4d28630dac9ce"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.35.1/microcd-darwin-x86_64.tar.gz"
      sha256 "18b2c2cc5659442bfd0722f2cfd94439a515b7c7a63e498364b860ebc1e60434"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
