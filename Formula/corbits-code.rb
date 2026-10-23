class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.44"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.44/corbits-0.3.44-macos-arm64.tar.gz"
      sha256 "e0d0f57f6c7f480c965f6e986c44268dfdfca99f2621f7b2bbf46aee37d760fd"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.44/corbits-0.3.44-macos-x64.tar.gz"
      sha256 "7360c2927191ef2c90354b74fd54d3d17840ba9fbcf2803bc7739a634f93adb4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.44/corbits-0.3.44-linux-arm64.tar.gz"
      sha256 "ed508d82759048b94510c11a383c91a00c85ae1372713e5e5aa8e6224909f027"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.44/corbits-0.3.44-linux-x64.tar.gz"
      sha256 "e7087848b17bd151ba97acb64892e06c5588fdd879a3810264fe5b2872a0c39f"
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
