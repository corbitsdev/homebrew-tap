class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.1"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.1/corbits-0.3.1-macos-arm64.tar.gz"
      sha256 "d445dac997b48ff99e85f1ccf935504a2811cee1b8c4cf02fb293d8dd5402e50"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.1/corbits-0.3.1-macos-x64.tar.gz"
      sha256 "76c55d1b00e43cc682c2a899044977230e9bdc779890bd80b21e1ea3bbc654a2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.1/corbits-0.3.1-linux-arm64.tar.gz"
      sha256 "1f95c2abadb7e98ecda234dc04fbdad148d8f242a182c1a6670911b21bc6323a"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.1/corbits-0.3.1-linux-x64.tar.gz"
      sha256 "ca8da2272d4557a1b16009d0e086fdb7dc1b5e5ae040b8da85fa1a9e92969cdc"
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
