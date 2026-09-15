class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.26"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.26/corbits-0.3.26-macos-arm64.tar.gz"
      sha256 "9cd8ea425a410c69645509134823df06b3e54b237ea51323ed89fa124c0e608c"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.26/corbits-0.3.26-macos-x64.tar.gz"
      sha256 "4af468a4b50bd3a5c51a9b59c30bb8f47eb8d16aa077b0ef1321f5e7473800b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.26/corbits-0.3.26-linux-arm64.tar.gz"
      sha256 "a8bbc7513fc9a62d9f657627342aeabfcd17202bb74141f075c2fecddf942ef9"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.26/corbits-0.3.26-linux-x64.tar.gz"
      sha256 "d2fd919913a99a91da12878e9d3d4636035f4d4dda3927429debba7b1b86cfb5"
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
