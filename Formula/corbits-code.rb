class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.35"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.35/corbits-0.3.35-macos-arm64.tar.gz"
      sha256 "7a563079452a4f840d38d1872a0204524cfa6aa01946a564d02eb552a74f1cac"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.35/corbits-0.3.35-macos-x64.tar.gz"
      sha256 "bfdbc5c0f2840eb3a4854ac7704a0c500cd3afac224049e358735b8a17312c65"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.35/corbits-0.3.35-linux-arm64.tar.gz"
      sha256 "b5e3d3dba836c6c1f094824afe3a5a00b1abddbd4b250cde8641a426f9ac5828"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.35/corbits-0.3.35-linux-x64.tar.gz"
      sha256 "050f18a50cf0e7bf0ab02988c2362968636695d1c5707dd0f25bd0f6dfc18f8a"
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
