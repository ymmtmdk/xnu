# Build and install CTF tools from dtrace
curl -O https://opensource.apple.com/tarballs/dtrace/dtrace-168.tar.gz
tar zxf dtrace-168.tar.gz
cd dtrace-168
mkdir -p obj sym dst
xcodebuild install -target ctfconvert -target ctfdump -target ctfmerge ARCHS="x86_64" SRCROOT=$PWD OBJROOT=$PWD/obj SYMROOT=$PWD/sym DSTROOT=$PWD/dst

sudo ditto $PWD/dst/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain
