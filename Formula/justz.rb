class Justz < Formula
  desc "Help, checks and shims for just"
  homepage "https://github.com/igorlino/justz"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/igorlino/justz/releases/download/v0.5.0/justz-0.5.0-darwin-arm64.tar.gz"
      sha256 "a9a0971d15a8004679b1e5f35200d7c91afcf32a25b107c7dffd8d8cab862790"
    end
    on_intel do
      url "https://github.com/igorlino/justz/releases/download/v0.5.0/justz-0.5.0-darwin-amd64.tar.gz"
      sha256 "5abd368a8c350b8d5ee6ea93296fa28280c2563aff55befcdda43535be7b473f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/igorlino/justz/releases/download/v0.5.0/justz-0.5.0-linux-arm64.tar.gz"
      sha256 "2bb2c60bacff5c096b8355e529ca42cf777ecc5e2926574e30207155f7a61fc8"
    end
    on_intel do
      url "https://github.com/igorlino/justz/releases/download/v0.5.0/justz-0.5.0-linux-amd64.tar.gz"
      sha256 "dd914ad409c32bb7991e6763395165117c8311e0c9b3d94f8863eb7b059aba28"
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
