class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.12"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.12/corbits-0.3.12-macos-arm64.tar.gz"
      sha256 "0dd9072ca4af737495a4416eaa22680e9f63836d8b7019c42a342dc788cd8fb3"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.12/corbits-0.3.12-macos-x64.tar.gz"
      sha256 "8d7144023b559c3285bb4966b1202efb5495d9e77ab7db74b26c439f16314bf8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.12/corbits-0.3.12-linux-arm64.tar.gz"
      sha256 "680d0924e8601a30cae259bc806255ade2d5d9c444449fbd2ff10e74194e932b"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.12/corbits-0.3.12-linux-x64.tar.gz"
      sha256 "e27b0f68edc15d98f1bed9f27757a374658ea5fba7d203723901aae5bba512ec"
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
