require 'formula'

class Megalodon <Formula
  head 'git://github.com/msonnabaum/megalodon.git'
  homepage 'https://github.com/msonnabaum/megalodon'

  def patches; DATA; end

  def install
    prefix.install Dir['config', 'cookbooks', 'formulas', 'roles']
    bin.install "megalodon"
  end
end

__END__
diff --git a/megalodon b/megalodon
index f04db01..da7d117 100755
--- a/megalodon
+++ b/megalodon
@@ -54,7 +54,7 @@ end
 directory_name = "#{ENV['HOME']}/.megalodon/data_bags/vhosts"
 FileUtils.mkdir_p(directory_name) unless FileTest::directory?(directory_name)

-cwd = Dir.pwd
+cwd = `brew --prefix megalodon`.strip

 chef_solo = which('chef-solo') || install_chef
