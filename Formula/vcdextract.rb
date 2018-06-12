class Vcdextract < Formula
  desc "Tool for extracting Sega Saturn discs for later rebuilding"
  homepage "https://github.com/cyberwarriorx/vcdextract"
  url "https://github.com/cyberwarriorx/vcdextract.git",
    :revision => "a4cdd15a83e96e83a3de6deef5e014ebd691bffe"
  version "2018-06-11-1+gita4cdd15a83e96e83a3de6deef5e014ebd691bffe"
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
