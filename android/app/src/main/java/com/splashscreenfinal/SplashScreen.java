package com.splashscreenfinal;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.WindowManager;

import androidx.appcompat.app.AppCompatActivity;

import com.felipecsl.gifimageview.library.GifImageView;

import org.apache.commons.io.IOUtils;

import java.io.IOException;
import java.io.InputStream;


public class SplashScreen extends AppCompatActivity {

        private GifImageView topAnimation;
        private GifImageView bottomAnimation;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
//        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,WindowManager.LayoutParams.FLAG_FULLSCREEN);
        setContentView(R.layout.activity_splash_screen);

        bottomAnimation =(GifImageView) findViewById(R.id.bottomAnimation);
        topAnimation =(GifImageView) findViewById(R.id.topAnimation);


        try{
            InputStream inputStream1 = getAssets().open("top_bands_final.gif");
            byte[] bytes1 = IOUtils.toByteArray(inputStream1);
            topAnimation.setBytes(bytes1);
            topAnimation.startAnimation();

            //For topWaveAnimation
            InputStream inputStream2 = getAssets().open("bottom_bands_final.gif");
            byte[] bytes2 =IOUtils.toByteArray(inputStream2);
            bottomAnimation.setBytes(bytes2);
            bottomAnimation.startAnimation();
        }
        catch (IOException ex){

        }

        //Wait for 3 seconds before going to React Native App
        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                SplashScreen.this.startActivity(new Intent(SplashScreen.this , MainActivity.class));
                 SplashScreen.this.finish();

            }
        }, 3000 );
    }
}
