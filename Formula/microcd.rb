class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.30.1/microcd-darwin-aarch64.tar.gz"
      sha256 "7b0f54d09d7da8455dcecf208732f63fc01e30fb6d7acb09bf44140c3bce87c3"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.30.1/microcd-darwin-x86_64.tar.gz"
      sha256 "d44e8a92047ad9faf170b9686207a01c7ff98059ec4c619e42acbc2f76ee00f2"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
