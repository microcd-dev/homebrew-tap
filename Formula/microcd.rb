class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.41.5/microcd-darwin-aarch64.tar.gz"
      mirror "https://packages.microcd.dev/homebrew/v0.41.5/microcd-darwin-aarch64.tar.gz"
      sha256 "e62ebf7af126255f705b24b8eac7ac24c97fef7857108324bc92a0fee176c98e"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.41.5/microcd-darwin-x86_64.tar.gz"
      mirror "https://packages.microcd.dev/homebrew/v0.41.5/microcd-darwin-x86_64.tar.gz"
      sha256 "653e3944adcecafc88aa2cdfa051a312fbaad5947e0bf414116a44906eddfff2"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
