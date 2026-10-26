class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.47"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.47/corbits-0.3.47-macos-arm64.tar.gz"
      sha256 "d0af2ef2ad86662ce10f387a0adefee5813dcdc42868cf47ca837e30189879b9"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.47/corbits-0.3.47-macos-x64.tar.gz"
      sha256 "4efc051835c2648d3a44265b9b16403f9ad07a94b00bd46e97c4e12910065b0c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.47/corbits-0.3.47-linux-arm64.tar.gz"
      sha256 "38aeb676d4005b47468a5e40d2e5facbd02720073d9b168100cda0419129c1e6"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.47/corbits-0.3.47-linux-x64.tar.gz"
      sha256 "cf6eaddef55d72daca6f744f3833040bbe1a63509b78fb7d8f9034835f704c2c"
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
