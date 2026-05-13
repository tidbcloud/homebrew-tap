class Lakesql < Formula
  desc "TiDB Cloud Lake native command-line tool"
  homepage "https://github.com/tidbcloud/lakesql"
  url "https://github.com/tidbcloud/lakesql.git",
      tag: "v0.1.2-alpha.5",
      revision: "eec2070c332e0516f57caa7bf3a405c5b9053aa7"
  version "0.1.2-alpha.5"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    ENV["LAKESQL_BUILD_INFO"] = "homebrew"
    build_root = buildpath/"cli"
    cd build_root do
      system "cargo", "install", *std_cargo_args
    end
  end

  test do
    output = shell_output("#{bin}/lakesql -V")
    assert_match "lakesql 0.1.2-alpha.5-homebrew\n", output
  end
end
