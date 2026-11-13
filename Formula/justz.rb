class Justz < Formula
  desc "Help, checks and shims for just"
  homepage "https://github.com/igorlino/justz"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/igorlino/justz/releases/download/v0.1.0/justz-0.1.0-darwin-arm64.tar.gz"
      sha256 "2611979c414b9a3c656345cdd1f8161aabade8c75421cf5cc622d2426f10e978"
    end
    on_intel do
      url "https://github.com/igorlino/justz/releases/download/v0.1.0/justz-0.1.0-darwin-amd64.tar.gz"
      sha256 "61617861bc682c3f217cc809298fcbecbfb0fdeeb6891a61399f8aae25d6cfcb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/igorlino/justz/releases/download/v0.1.0/justz-0.1.0-linux-arm64.tar.gz"
      sha256 "777b84b5e32b727f11a0e644be088e666be4cfcc3c1967cbd82168c140ef6c87"
    end
    on_intel do
      url "https://github.com/igorlino/justz/releases/download/v0.1.0/justz-0.1.0-linux-amd64.tar.gz"
      sha256 "3501673486693eac4c39c2d7b6b3d082c487d44164c47a75eecf90605d0d536b"
    end
  end

  depends_on "just"

  def install
    bin.install "justz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/justz --version")
  end
end
