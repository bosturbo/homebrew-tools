require "formula"

class Libsixel < Formula
  homepage "https://github.com/saitoha/libsixel"
  url "https://github.com/saitoha/libsixel/archive/v1.7.2.tar.gz"
  sha256 "8e6af162314728d13dfa87b6b3c795a3807032a0df25a0ce6c7ad9c24ab5c12a"
  head "https://github.com/saitoha/libsixel.git"
  version "1.7.2"

  depends_on "libpng"
  depends_on "pkg-config" => :build

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end
end
