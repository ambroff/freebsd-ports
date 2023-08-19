diff --git src/braft/file_system_adaptor.h src/braft/file_system_adaptor.h
index 9a50b6779a26..5314391f219d 100644
--- src/braft/file_system_adaptor.h
+++ src/braft/file_system_adaptor.h
@@ -165,7 +165,7 @@ protected:
     PosixDirReader(const std::string& path) : _dir_reader(path.c_str()) {}
 
 private:
-    butil::DirReaderPosix _dir_reader;
+    mutable butil::DirReaderPosix _dir_reader;
 };
 
 class PosixFileAdaptor : public FileAdaptor {
