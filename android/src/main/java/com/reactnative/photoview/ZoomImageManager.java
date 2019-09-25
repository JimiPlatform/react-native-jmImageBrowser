package com.reactnative.photoview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;

import com.bumptech.glide.Glide;
import com.bumptech.glide.request.FutureTarget;
import com.bumptech.glide.request.RequestOptions;
import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.concurrent.ExecutionException;

/*
 * COPYRIGHT. ShenZhen JiMi Technology Co., Ltd. 2019.
 * ALL RIGHTS RESERVED.
 *
 * No part of this publication may be reproduced, stored in a retrieval system, or transmitted,
 * on any form or by any means, electronic, mechanical, photocopying, recording,
 * or otherwise, without the prior written permission of ShenZhen JiMi Network Technology Co., Ltd.
 *
 * @ProjectName newsmarthome2.0
 * @Description: 桥接库片放缩控件
 * @Date 2019/3/14 14:25
 * @author HuangJiaLin
 * @version 2.0
 */
public class ZoomImageManager extends SimpleViewManager<PhotoView> {
    @Override
    public String getName() {
        return "JMZoomImageView";
    }
    private Context context;

    public void setContext(Context _context){
        this.context=_context;
    }

    @Override
    protected PhotoView createViewInstance(ThemedReactContext reactContext) {
        return new PhotoView(reactContext);
    }

    @ReactProp(name = "source")
    public void setSource(final PhotoView zoomImageView, final String url){
        Log.i("ZoomImageManager","source:" + url);
        try {
            if(url==null){
                return;
            }
            if(url.startsWith("http")){
                Glide.with(context).load(url).into(zoomImageView);
            }else{
                FileInputStream fis = new FileInputStream(url);
                Bitmap bitmap = BitmapFactory.decodeStream(fis);
                zoomImageView.setImageBitmap(bitmap);
            }

        } catch (FileNotFoundException e) {
            e.printStackTrace();
            Log.i("ZoomImageManager","error");
        }
    }

}
