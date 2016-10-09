class DklabRealsync < Formula
  desc "Replicate developer's files over SSH in realtime"
  homepage "http://en.dklab.ru/lib/dklab_realsync/"
  url "https://github.com/DmitryKoterov/dklab_realsync/archive/master.zip"
  sha256 "6a4f73975d25f8613d44ef9b4290876ecff22d6acf10e397c7fd8c1ccd37be8e"
  version "1.0.0"

  def install
    bin.install "realsync"
    (bin/"bin/darwin/").install "bin/darwin/notify"
  end

  test do
    system "yes|realsync"
  end
end
