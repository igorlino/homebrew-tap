class Justz < Formula
  desc "Help, checks and shims for just"
  homepage "https://github.com/igorlino/justz"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/igorlino/justz/releases/download/v0.8.1/justz-0.8.1-darwin-arm64.tar.gz"
      sha256 "6a27433da5aa02132710321a04a78334bd2cd9449c56306bd168a69fa5ff4de6"
    end
    on_intel do
      url "https://github.com/igorlino/justz/releases/download/v0.8.1/justz-0.8.1-darwin-amd64.tar.gz"
      sha256 "92a0082e98cc3882c4889aef8d6b81f2a2262ca22243f44946792748ee358daf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/igorlino/justz/releases/download/v0.8.1/justz-0.8.1-linux-arm64.tar.gz"
      sha256 "790693a3b793184071c1ca43ba54fe56dbf4464b990fc33439bf7449a85e6d17"
    end
    on_intel do
      url "https://github.com/igorlino/justz/releases/download/v0.8.1/justz-0.8.1-linux-amd64.tar.gz"
      sha256 "b43de86c385f575a7631e4d3fa87a1ff0766abac962e9fd8a8b57be08688d207"
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
