class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.21"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.21/corbits-0.3.21-macos-arm64.tar.gz"
      sha256 "009622e34f4fafc48c405a2755c49d0b19f1bfcfbdf41067cc4acbbd93790167"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.21/corbits-0.3.21-macos-x64.tar.gz"
      sha256 "8a574f3f35168760d4c34f45e2dfaa601e2e336fc4c3329b71d6baff332c3ba4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.21/corbits-0.3.21-linux-arm64.tar.gz"
      sha256 "bd5c13ae315a8bd6cd247d7baf72ba1ca963ebdffc9ff4fd28b065e211bfb6ef"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.21/corbits-0.3.21-linux-x64.tar.gz"
      sha256 "d646b64da9335ba02a0ad22357b15cacbbf1d6205ba6a6bd7f514a8123cf20df"
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
