class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.19"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.19/corbits-0.3.19-macos-arm64.tar.gz"
      sha256 "fa3915ea95b3c32f736319931d94fcaec15371efd2d3f08b4d3c95934da1a47d"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.19/corbits-0.3.19-macos-x64.tar.gz"
      sha256 "80a93505f66cdad697fd4074e2313a1ae474fe57608ec34c754ce0130258d7cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.19/corbits-0.3.19-linux-arm64.tar.gz"
      sha256 "bc4e27f1d3dd15f7b84212a50d13996b867dae4a33bc5293339d53754daf3d93"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.19/corbits-0.3.19-linux-x64.tar.gz"
      sha256 "6a6e3286e6ec00a70d87f334919a0ee2d3308fc5978174535a5b824d7d44cbc0"
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
