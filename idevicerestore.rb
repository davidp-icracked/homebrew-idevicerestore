require 'formula'

class Idevicerestore < Formula
  head 'https://github.com/libimobiledevice/idevicerestore.git'

  # depends_on 'make' => :build

  def install
    system "./autogen.sh"
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end

end
