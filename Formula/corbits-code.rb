class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.9"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.9/corbits-0.3.9-macos-arm64.tar.gz"
      sha256 "da8ea6b961a2e2aecc6b3c07c9ed63f9f5ec5df0925cad9a3783686e3d61649d"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.9/corbits-0.3.9-macos-x64.tar.gz"
      sha256 "a748312f081b0da757e4c99cd850683c1371c54c172071a0af11555a9339a3dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.9/corbits-0.3.9-linux-arm64.tar.gz"
      sha256 "7753dbf67fbd5085ba0bcacea691749ec92871f8ea77e5fca2ea232cec7c7775"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.9/corbits-0.3.9-linux-x64.tar.gz"
      sha256 "66b22c10024b48612c373e8704e48439877780bf67a051348ee24c6ff56d5c21"
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
