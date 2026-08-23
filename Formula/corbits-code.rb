class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.2.104"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.104/corbits-0.2.104-macos-arm64.tar.gz"
      sha256 "11b738c6f24a00187bb2084e05324d9dfdda63c0c6bb84619b6d27fa993deed4"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.104/corbits-0.2.104-macos-x64.tar.gz"
      sha256 "c43e986a8cd2c745eb830a7eacfae5ffcdf17936ed410d7cffb67789d511b562"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.104/corbits-0.2.104-linux-arm64.tar.gz"
      sha256 "0d78e22d3cd54059a5275118d1a6dd57e7eef1d5b458acf373caeee028219689"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.104/corbits-0.2.104-linux-x64.tar.gz"
      sha256 "081997232d306eda3c74e6b84623c836eaf276326a64910b45c2c554ad66c556"
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
