class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.2.102"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.102/corbits-0.2.102-macos-arm64.tar.gz"
      sha256 "f3b887ce15d812d2db6faf53399a9cfd2d6861f9d03f106a031d32b783f8c170"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.102/corbits-0.2.102-macos-x64.tar.gz"
      sha256 "3c8175f7b7061c04cee180d072437af53b6444ec13d88dfe7c5ba00a228049f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.102/corbits-0.2.102-linux-arm64.tar.gz"
      sha256 "c87957291f088360f457737a8be508e2b5bea3891165ccf5ca63543ef590d4ba"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.102/corbits-0.2.102-linux-x64.tar.gz"
      sha256 "2aef750df42109af59475cbd3b4e002ff995efb03f7cb219e38cbea9b741945a"
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
