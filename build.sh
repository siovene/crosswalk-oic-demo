ARCH="x86"
EXTENSION_LIB="libcrosswalk-oic.so"
PACKAGE="org.crosswalk.demo.oic"
EXTENSION_DEST="$PACKAGE/prj/android/libs/$ARCH"

rm -f *.apk 
(cd crosswalk-oic-extension; ./build.sh)
mkdir -p $EXTENSION_DEST
cp crosswalk-oic-extension/out/$ARCH/$EXTENSION_LIB $EXTENSION_DEST
crosswalk-app build $PACKAGE
