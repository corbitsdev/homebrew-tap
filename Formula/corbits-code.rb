class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.3"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.3/corbits-0.3.3-macos-arm64.tar.gz"
      sha256 "283713e8fec283dc8e9373327e7f659583a33a35fb3084e3e13060e69983a8d5"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.3/corbits-0.3.3-macos-x64.tar.gz"
      sha256 "810af921aba80cdd6426811bad5ff8b6f0aefc947fc1fd71241ad614dca05685"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.3/corbits-0.3.3-linux-arm64.tar.gz"
      sha256 "a8fe56de1895e6b42575664f92527e6583c90f1abd175b61847470ce70f4998b"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.3/corbits-0.3.3-linux-x64.tar.gz"
      sha256 "96c2d0576afaa4ea181f690f3218790aea76658367575b0ae9002c88e3f4a183"
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
