class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.16"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.16/corbits-0.3.16-macos-arm64.tar.gz"
      sha256 "be8cbda80785033704ed70334b4c0cb7783634cc718c05c223eab72ccba88a6c"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.16/corbits-0.3.16-macos-x64.tar.gz"
      sha256 "08bf4364d4317a051d5e075381a6c1bdb5c36b22d88b7a8ea972374ba632984b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.16/corbits-0.3.16-linux-arm64.tar.gz"
      sha256 "c2204b4a1eddba5a98da16d84a51caa0202284438d159a9bd41990396f9add04"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.16/corbits-0.3.16-linux-x64.tar.gz"
      sha256 "19d1f6c38e3017d2bdd69aecbad92ff31ee35a2449ae3d7833ede9d1afabcaa6"
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
