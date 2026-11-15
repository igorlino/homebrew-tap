class Justz < Formula
  desc "Help, checks and shims for just"
  homepage "https://github.com/igorlino/justz"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/igorlino/justz/releases/download/v0.7.0/justz-0.7.0-darwin-arm64.tar.gz"
      sha256 "8917f1329899b3bc4408f37f46347fa1c386c42f01ccec62f3aa53f3b70d3a34"
    end
    on_intel do
      url "https://github.com/igorlino/justz/releases/download/v0.7.0/justz-0.7.0-darwin-amd64.tar.gz"
      sha256 "de4b63363a47524142c285a67cba7eac3edf1714f77141775d6a55e866e15ae4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/igorlino/justz/releases/download/v0.7.0/justz-0.7.0-linux-arm64.tar.gz"
      sha256 "7297ea4fb20996c3daa754335aa3c30c4283d20b00fc3206b3b472a48535536f"
    end
    on_intel do
      url "https://github.com/igorlino/justz/releases/download/v0.7.0/justz-0.7.0-linux-amd64.tar.gz"
      sha256 "b77abe4503427fdd4835cec3574b5a632bf275c0668c4cd217c4876992114869"
    end
  end

  depends_on "just"

  def install
    bin.install "justz"
    # justz acts as jz and jzh when started under those names
    bin.install_symlink "justz" => "jz"
    bin.install_symlink "justz" => "jzh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/justz --version")
  end
end
