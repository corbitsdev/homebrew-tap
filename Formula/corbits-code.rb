class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.0"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.0/corbits-0.3.0-macos-arm64.tar.gz"
      sha256 "92365fe3501510528bc8525fc8acffa43608f035485d483c7917836f1ed568db"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.0/corbits-0.3.0-macos-x64.tar.gz"
      sha256 "284b964a5409fa0f189a2bdfe8e3835bed0e202e3d1b5bc12268d3317d0ae9c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.0/corbits-0.3.0-linux-arm64.tar.gz"
      sha256 "2ec1d6ad6d6e5635c8539641789553dfca82b68903911833687c41d56bcaac1e"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.0/corbits-0.3.0-linux-x64.tar.gz"
      sha256 "8fcae952b2e5235857e4fc2826609eb7107f94a901876cb281776950b59c56aa"
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
