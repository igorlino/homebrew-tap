class Justz < Formula
  desc "Help, checks and shims for just"
  homepage "https://github.com/igorlino/justz"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/igorlino/justz/releases/download/v0.2.0/justz-0.2.0-darwin-arm64.tar.gz"
      sha256 "dc80849a72b8d9d8dba788c4115f2f2b118783259ec06ce85f952ad0a93399af"
    end
    on_intel do
      url "https://github.com/igorlino/justz/releases/download/v0.2.0/justz-0.2.0-darwin-amd64.tar.gz"
      sha256 "b6e889092abb8f63a57c58192e86aa557d49e0836931911d3f10f8628e8875df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/igorlino/justz/releases/download/v0.2.0/justz-0.2.0-linux-arm64.tar.gz"
      sha256 "fc161647d8f7c5dcc9b25cccabbf1aa701505818bf30aed451b4c2b3e2cc7dcb"
    end
    on_intel do
      url "https://github.com/igorlino/justz/releases/download/v0.2.0/justz-0.2.0-linux-amd64.tar.gz"
      sha256 "fa7a40a7496ee91fe78e4201d7bb8e0282029aa7dbbfb56edacca077280c5aa8"
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
