class Vcdextract < Formula
  desc "Tool for extracting Sega Saturn discs for later rebuilding"
  homepage "https://github.com/cyberwarriorx/vcdextract"
  url "https://github.com/cyberwarriorx/vcdextract.git",
    :revision => "d02cfdce9a514fa1d85ad6842d449c1b6feff2b3"
  version "2017-09-25+gitd02cfdce9a514fa1d85ad6842d449c1b6feff2b3"
  head "https://github.com/cyberwarriorx/vcdextract.git"

  depends_on "cmake" => :build

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make"

      bin.install "src/vcdextract"
    end
  end

  test do
    system "#{bin}/vcdextract", "."
  end
end
