class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.2.106"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.106/corbits-0.2.106-macos-arm64.tar.gz"
      sha256 "c036b61a7e02a2cd960852226ac18dbeec186082f7e4864f9ffd86d22fcaf1eb"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.106/corbits-0.2.106-macos-x64.tar.gz"
      sha256 "6bb03951bc1ea52a97a284ed92d5e1234a45879b03d609461749a1b3cfe7c2dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.106/corbits-0.2.106-linux-arm64.tar.gz"
      sha256 "f38706bb414d3b995e1a360d424c0615fc07592e01a3f7aaf64cf314742bcde1"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.106/corbits-0.2.106-linux-x64.tar.gz"
      sha256 "52e8e413dc02b94c7d73c4e1e89d4bd383740d3f70ccb4c58755383f3d6b4832"
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
