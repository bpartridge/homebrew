require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Pyo < Formula
  homepage ''
  version '0.6.8'
  url 'https://pyo.googlecode.com/files/pyo_0.6.8-src.tar.bz2'
  sha1 '7ba66ce89ba1ac87616717be265016afc52393a0'

  depends_on :python
  depends_on 'liblo'
  depends_on 'libsndfile'
  depends_on 'portaudio'
  depends_on 'portmidi'

  def install
    system "python setup.py install --use-coreaudio --use-double --prefix=#{prefix}"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test pyo_0.6.8`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "--version"`.
    system "false"
  end
end
