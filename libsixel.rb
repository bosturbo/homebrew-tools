require 'formula'

HOMEBREW_LIBSIXEL_VERSION='1.7.2'
class Libsixel < Formula
  homepage 'https://github.com/saitoha/libsixel'
  url      'https://github.com/saitoha/libsixel.git', :tag => "v#{HOMEBREW_LIBSIXEL_VERSION}"
  head     'https://github.com/saitoha/libsixel.git', :branch => 'master'
  version HOMEBREW_LIBSIXEL_VERSION

  depends_on 'libpng'
  depends_on 'pkg-config' => :build

  def install
    system './configure', "--prefix=#{prefix}"
    system 'make'
    system 'make', 'install'
  end
end
