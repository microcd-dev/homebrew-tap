class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.34.3/microcd-darwin-aarch64.tar.gz"
      sha256 "62f818c399d5515d68f6926e05f0f5fc4b577c798ccfcb95466b8e9ccefca985"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.34.3/microcd-darwin-x86_64.tar.gz"
      sha256 "7576439fe29dc5c90e9eba6e06a11a9a93a36781d6e413cb55ba5d63dff81371"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
