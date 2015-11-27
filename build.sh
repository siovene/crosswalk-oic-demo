ARCH="x86"
EXTENSION_LIB="libcrosswalk-oic.so"
EXTENSION_DEST="org.crosswalk.demo.oic/prj/android/libs/$ARCH"

if [ ! -d org.crosswalk.demo.oic ]; then
    crosswalk-app create org.crosswalk.demo.oic --android-crosswalk=canary
fi

rm *.apk 1>&2 >/dev/null
(cd crosswalk-oic-extension; ./build.sh)
mkdir -p $EXTENSION_DEST
cp crosswalk-oic-extension/out/$ARCH/$EXTENSION_LIB $EXTENSION_DEST
crosswalk-app build org.crosswalk.demo.oic
