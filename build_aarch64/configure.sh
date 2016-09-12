



  cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_C_COMPILER='/opt/Xilinx/SDK/2016.2/gnu/aarch64/lin/aarch64-linux/bin/aarch64-linux-gnu-gcc' \
    -DCMAKE_CXX_COMPILER='/opt/Xilinx/SDK/2016.2/gnu/aarch64/lin/aarch64-linux/bin/aarch64-linux-gnu-g++' \
    -DCMAKE_LIBRARY_PATH='/home/tomast/xlnx/osg/3.4.0/tmp/yocto/tmp/sysroots/zcu102-zynqmp/usr/lib' \
    -DCMAKE_INCLUDE_PATH='/home/tomast/xlnx/osg/3.4.0/tmp/yocto/tmp/sysroots/zcu102-zynqmp/usr/include' \
    -DBUILD_OSG_EXAMPLES=ON \
    -DOPENGL_PROFILE=GLES2 \
    -DOPENGL_glu_LIBRARY= \
    -DGL_HEADER_HAS_GLINT64:INTERNAL=0 \
    -DGL_HEADER_HAS_GLUINT64:INTERNAL=0 \
    -DOSG_GLU_AVAILABLE=OFF \
    -DOSG_GL1_AVAILABLE=OFF \
    -DOSG_GL2_AVAILABLE=OFF \
    -DOSG_GL3_AVAILABLE=OFF \
    -DOSG_GLES1_AVAILABLE=OFF \
    -DOSG_GLES2_AVAILABLE=ON \
    -DOPENGL_egl_LIBRARY='-lEGL' \
    -DOPENGL_LIBRARY='-lGLESv2' \
    -DOSG_GL_DISPLAYLISTS_AVAILABLE=OFF \
    -DOSG_GL_MATRICES_AVAILABLE=OFF \
    -DOSG_GL_VERTEX_FUNCS_AVAILABLE=OFF \
    -DOSG_GL_VERTEX_ARRAY_FUNCS_AVAILABLE=OFF \
    -DOSG_GL_FIXED_FUNCTION_AVAILABLE=OFF \
    -DOSG_CPP_EXCEPTIONS_AVAILABLE=OFF \
    -DPOPPLER_HAS_CAIRO_EXITCODE=0 \
    -DOPENGL_INCLUDE_DIR='/home/tomast/xlnx/osg/3.4.0/tmp/yocto/tmp/sysroots/zcu102-zynqmp/usr/include' \
    -DOPENGL_egl_LIBRARY='/home/tomast/xlnx/osg/3.4.0/tmp/yocto/tmp/sysroots/zcu102-zynqmp/usr/lib/libEGL.so' \
    -DOPENGL_gl_LIBRARY='/home/tomast/xlnx/osg/3.4.0/tmp/yocto/tmp/sysroots/zcu102-zynqmp/usr/lib/libGLESv2.so' \
    ..
