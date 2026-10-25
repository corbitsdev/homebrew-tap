class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.46"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.46/corbits-0.3.46-macos-arm64.tar.gz"
      sha256 "49934623fec531442756ad53120f20e9e8a1a6b5fbbbbd8efd8d14dac6937b15"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.46/corbits-0.3.46-macos-x64.tar.gz"
      sha256 "d55942dc3b606819fb3f7cc4400ca6551009e5db406e4eb70fb77cd47cd4b4c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.46/corbits-0.3.46-linux-arm64.tar.gz"
      sha256 "1e7c739ef94f723b09f9caacf68328758f1051d375c28f720513bd5687a56174"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.46/corbits-0.3.46-linux-x64.tar.gz"
      sha256 "edfa5969b3c2484518115c193129855fa46814b650e86213cb2a92dd8c3b0627"
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
