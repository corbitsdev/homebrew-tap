class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.8"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.8/corbits-0.3.8-macos-arm64.tar.gz"
      sha256 "b6e19eaa79943d9640266666bc334c3df6fcedad902cef5fda5509a8f7693dd2"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.8/corbits-0.3.8-macos-x64.tar.gz"
      sha256 "4d17517f045705832d757bd493434db6368b6dff34281063c85e7dd1b7daa32e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.8/corbits-0.3.8-linux-arm64.tar.gz"
      sha256 "e66d1563b26d8f82f860bb7f53072b101dde4230965270ef584ae74ef0aabb13"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.8/corbits-0.3.8-linux-x64.tar.gz"
      sha256 "715695d1a30f40310b7b3b026055943c915b41d1cef5cfd81cd98428556c9270"
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
