class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.32"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.32/corbits-0.3.32-macos-arm64.tar.gz"
      sha256 "cad9a3c0bf8c2fef99ecc5fd98f3cb57d70f3540348b1ad07a9fc07250fe3551"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.32/corbits-0.3.32-macos-x64.tar.gz"
      sha256 "3064c0e76164fc17c0d31bf4e9db6fb0914ca7a79c84faf0c2be8639679659ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.32/corbits-0.3.32-linux-arm64.tar.gz"
      sha256 "96e1c32f95284652ad14c0787b20e795628dda12b43ab72f8762d375db6cf411"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.32/corbits-0.3.32-linux-x64.tar.gz"
      sha256 "c1e36706cf69ab9c51d18a896656312dce94197c471dd87018e3f7bc671ab14f"
    end
  end

  def install
    bin.install "corbits"
    if File.directory?("plugins")
      (bin/"plugins").mkpath
      cp_r "plugins/.", bin/"plugins"
    end
  end

  test do
    assert_predicate bin/"corbits", :executable?
  end
end
