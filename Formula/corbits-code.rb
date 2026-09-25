class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.31"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.31/corbits-0.3.31-macos-arm64.tar.gz"
      sha256 "d55591ad63796e4f39c8958675b5a057f9dca6f60a5632af86983963c1fac60e"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.31/corbits-0.3.31-macos-x64.tar.gz"
      sha256 "aadd1e3880b592a06805a69b9a31789beaa64a747c6f9d342fddc993e62c47e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.31/corbits-0.3.31-linux-arm64.tar.gz"
      sha256 "68fe85ac46752f540cad846cfa4ba98c88560b1ca56f1adc429586f1801f6c5b"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.31/corbits-0.3.31-linux-x64.tar.gz"
      sha256 "dc7d8e28765dd44ce318e940664ce880a189425e4529757291eec7f3e2feeaa5"
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
