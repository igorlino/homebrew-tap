class Justz < Formula
  desc "Help, checks and shims for just"
  homepage "https://github.com/igorlino/justz"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/igorlino/justz/releases/download/v0.5.1/justz-0.5.1-darwin-arm64.tar.gz"
      sha256 "5065097bb93d9a628193894277cec9bedab80b5aaaeb1412ee8e35db99b0c463"
    end
    on_intel do
      url "https://github.com/igorlino/justz/releases/download/v0.5.1/justz-0.5.1-darwin-amd64.tar.gz"
      sha256 "f8a79ca3956dc0275623857873f79bb5f53e8a33a097f275d8be03d1ff2322b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/igorlino/justz/releases/download/v0.5.1/justz-0.5.1-linux-arm64.tar.gz"
      sha256 "93bb8d244a5152363a93a2bb67ee24d80eea0e722ee6a2e2be3ec9d610e34294"
    end
    on_intel do
      url "https://github.com/igorlino/justz/releases/download/v0.5.1/justz-0.5.1-linux-amd64.tar.gz"
      sha256 "d9c9b7ba1f5392fd21af9b4dee3078e1cf768f3e30c60754bb844d14012465df"
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
