class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.34.2/microcd-darwin-aarch64.tar.gz"
      sha256 "836079c9d35ecddddf86e1eda3804eca69bbf3e26869322fb913446c2cc06e48"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.34.2/microcd-darwin-x86_64.tar.gz"
      sha256 "8b6c309505aa713e871e230e1fb356c68882860a66411e000741bd9ec47d5f98"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
