class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.2.100"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.100/corbits-0.2.100-macos-arm64.tar.gz"
      sha256 "293bb2d3f055d4489dc63257c0a1c6c3d63887ee1189daf9189b9793a48884ad"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.100/corbits-0.2.100-macos-x64.tar.gz"
      sha256 "62aa81f72c036f4b5af0792b598e7dfd991039f0672ad372777ad779cd5a35ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.100/corbits-0.2.100-linux-arm64.tar.gz"
      sha256 "d257d5f3e9cd4609c674936d9f79a7f42042d5575fb076b1af03316b39f63ca9"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.100/corbits-0.2.100-linux-x64.tar.gz"
      sha256 "8a6ddb392c32cd94ca19934626652bace557ce59e612df6a55aa169a816a581f"
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
