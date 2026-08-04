class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.2.87"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.87/corbits-0.2.87-macos-arm64.tar.gz"
      sha256 "9ad1fd1ebc1e0e54aadda3b684d001abec79324a45c2d134f07ca7bff558f101"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.87/corbits-0.2.87-macos-x64.tar.gz"
      sha256 "af2f1018a08f411d729c870b8c22e202e329bf80cae66ec3babedc82b4b07980"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.87/corbits-0.2.87-linux-arm64.tar.gz"
      sha256 "234d31a3f0a22202810625b0e0dc4c65289b82386189b2c7651035135f26f629"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.87/corbits-0.2.87-linux-x64.tar.gz"
      sha256 "d68914ca2ea8ef81660561fa2a57f24f3fa84650c351069c5dac62f5ef96de2d"
    end
  end

  def install
    bin.install "corbits"
  end

  test do
    assert_predicate bin/"corbits", :executable?
  end
end
