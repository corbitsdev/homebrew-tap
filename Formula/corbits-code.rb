class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.11"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.11/corbits-0.3.11-macos-arm64.tar.gz"
      sha256 "df0b037d8dc0bfe49915096742a1016013bf31966a26ec208442073bb95f7ad7"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.11/corbits-0.3.11-macos-x64.tar.gz"
      sha256 "bfa708d7cecef09d1ea1012aa51f008706c8c148b42b36286a050401bcc5ebeb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.11/corbits-0.3.11-linux-arm64.tar.gz"
      sha256 "5f725b8be614010005ecdfc0b618e9a3f9cc3173227b7c9eeaf9687ea7fa94bf"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.11/corbits-0.3.11-linux-x64.tar.gz"
      sha256 "14bd0851af31439abdc6aed0524d620f43811f53434bcbd7ecdceb1b194cf875"
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
