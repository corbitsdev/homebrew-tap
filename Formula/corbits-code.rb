class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.42"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.42/corbits-0.3.42-macos-arm64.tar.gz"
      sha256 "29d648e58f933f0d007bdfe2d2d9d41810d1b9116cee76da5baeacfcd291fcf6"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.42/corbits-0.3.42-macos-x64.tar.gz"
      sha256 "c1a8167c63e98fcf78316a24864f1a418eb2e74f7cc94514749bffea7fdecd2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.42/corbits-0.3.42-linux-arm64.tar.gz"
      sha256 "4fd0c3eabf605d9071bca348ffd5a72a1f1bac4ed8dfc4a910c00e38a56d988c"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.42/corbits-0.3.42-linux-x64.tar.gz"
      sha256 "302fbf9633f69ed8049200823501235ca1c0db8ecc4cadda8ec7a0ea47b0d1fc"
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
