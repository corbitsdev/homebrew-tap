class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.15"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.15/corbits-0.3.15-macos-arm64.tar.gz"
      sha256 "baf632eb089fa2bd21212e647312271a66343db541b383131d846f0d2dff5d82"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.15/corbits-0.3.15-macos-x64.tar.gz"
      sha256 "e4ec771c3542a11b368784a299a28b7dd9c432d3b930b5c39655c727b57c97ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.15/corbits-0.3.15-linux-arm64.tar.gz"
      sha256 "bc30182b790b524fbced4015f01e83db8aeb48e7a93f538e6dbf57579c41c47c"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.15/corbits-0.3.15-linux-x64.tar.gz"
      sha256 "1761c2f3c9915ed3b69e9ae08340f03fe0e219d5cdb250b9b1e7a488f74f83ce"
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
