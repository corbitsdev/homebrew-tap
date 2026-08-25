class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.2"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.2/corbits-0.3.2-macos-arm64.tar.gz"
      sha256 "d91147d52d66587cb1d7a2c9bb21661a73281c67dc5be5e64330d3552e7dc14f"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.2/corbits-0.3.2-macos-x64.tar.gz"
      sha256 "009f6a01e97ec5f78d17d74690f2041b2fef0018c88d29c544e98686f8188a7a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.2/corbits-0.3.2-linux-arm64.tar.gz"
      sha256 "76692e4087d9a213c298ac58106576054d67ce0c222ae9c9c05164abd33ec62d"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.2/corbits-0.3.2-linux-x64.tar.gz"
      sha256 "01f54005d24fbb7967545cdb58b62a201812867b227e2add93fa06c6b4166fb9"
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
