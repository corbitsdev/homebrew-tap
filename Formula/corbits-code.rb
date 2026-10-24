class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.45"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.45/corbits-0.3.45-macos-arm64.tar.gz"
      sha256 "6d82bede0443e3f7e8533f8a13d49b8ad272dfba83319797fd99d170ee35bec0"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.45/corbits-0.3.45-macos-x64.tar.gz"
      sha256 "1517bf74ce4c7ac739a349a31e03f50f9dab10f877aaf0d1a98c95755526caa2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.45/corbits-0.3.45-linux-arm64.tar.gz"
      sha256 "4c76c63c9aea874f9c708a5ab648fb15e0ec30979af7f2658017fa836dfef7ae"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.45/corbits-0.3.45-linux-x64.tar.gz"
      sha256 "13ffcd4e54692bcfc48c8e8abed1820eb31027a649f0c665f5eea353ad86ab7d"
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
