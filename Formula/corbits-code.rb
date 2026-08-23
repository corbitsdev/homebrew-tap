class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.2.103"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.103/corbits-0.2.103-macos-arm64.tar.gz"
      sha256 "6e58ebaf3a015b7fe09ff6be1516401ff5972f6ecdb6baff3035e618d00d3372"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.103/corbits-0.2.103-macos-x64.tar.gz"
      sha256 "2f18f9b70ad2ec70e7e0b103e1fa1ebadb25587bb1e27e219f5eaab89d143cf8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.103/corbits-0.2.103-linux-arm64.tar.gz"
      sha256 "ef8dfbf48b035453c2b4f7f6dd748ea6bda1df665bc5ec23711dfecfe925c4f2"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.103/corbits-0.2.103-linux-x64.tar.gz"
      sha256 "cc5341ef5b56ee95209e2771b04288b82d5b1688fc2c4df3ebb838f724f649f2"
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
