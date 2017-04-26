LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_COPY_HEADERS_TO := qcom/camera
LOCAL_COPY_HEADERS := QCameraFormat.h

include $(BUILD_COPY_HEADERS)
