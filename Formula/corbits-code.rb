class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.39"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.39/corbits-0.3.39-macos-arm64.tar.gz"
      sha256 "4d2a69167b489d27737703354b1e047ddd9ff1330278a71ce471c871388dd0e2"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.39/corbits-0.3.39-macos-x64.tar.gz"
      sha256 "7812f66c16cadd33586cb3b7dd448e271e8d1d49e76fe20304d47150dd9345d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.39/corbits-0.3.39-linux-arm64.tar.gz"
      sha256 "5d7292e49bd4eec4f903f998587e0cefe9296b2a19feb7ab7b24547d475686a6"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.39/corbits-0.3.39-linux-x64.tar.gz"
      sha256 "f20f05201289dabaec4958099ddea62d981d14ea40eaf22e8d62d20a7c51196b"
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
