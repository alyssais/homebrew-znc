class ZncPlayback < Formula
  desc "An advanced playback module for ZNC"
  homepage "https://wiki.znc.in/Playback"
  head "https://github.com/jpnurmi/znc-playback.git"

  depends_on "znc"

  def install
    system "znc-buildmod", "playback.cpp"
    (lib/"znc").install "playback.so"
  end
end
