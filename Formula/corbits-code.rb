class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.24"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.24/corbits-0.3.24-macos-arm64.tar.gz"
      sha256 "2fd51f7a7012a06b55c552db2f576d6679ed2211422fb488a2cb266996ec589a"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.24/corbits-0.3.24-macos-x64.tar.gz"
      sha256 "bb0eae9c936f28c2e93d2990f3eccf71072538f13a4d9b8713283a362a4e030c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.24/corbits-0.3.24-linux-arm64.tar.gz"
      sha256 "c04316d7148f2f01c7906a5658459419df0698243a05207989e7fb88c20118da"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.24/corbits-0.3.24-linux-x64.tar.gz"
      sha256 "80393cd7ca3b6d5eace79beb1e531798e27042236c241274a450441a94996487"
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
