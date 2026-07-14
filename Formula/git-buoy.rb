class GitBuoy < Formula
  desc "Living terminal harbor for understanding parallel software work"
  homepage "https://github.com/markg-05/git-buoy"
  url "https://github.com/markg-05/git-buoy/releases/download/v0.1.0/git-buoy-v0.1.0-macos-aarch64.tar.gz"
  version "0.1.0"
  sha256 "dafb53fb838e8c5f4a555847ead9505dd51d38a49edff51f7151e2eedcdb54e0"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "git-buoy"
  end

  test do
    assert_match "git-buoy #{version}", shell_output("#{bin}/git-buoy --version")
  end
end
