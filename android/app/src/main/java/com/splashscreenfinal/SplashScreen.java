package com.splashscreenfinal;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.WindowManager;

import androidx.appcompat.app.AppCompatActivity;

import com.airbnb.lottie.LottieAnimationView;

public class SplashScreen extends AppCompatActivity {
    private LottieAnimationView topAnimation;
    private LottieAnimationView bottomAnimation;

    //    private GifImageView topWaveAnimation;
//    private GifImageView bottomWaveAnimation;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,WindowManager.LayoutParams.FLAG_FULLSCREEN);
        setContentView(R.layout.activity_splash_screen);
        topAnimation =(LottieAnimationView) findViewById(R.id.firstAnimation);
        topAnimation.setAnimation("top_bands.json");

        bottomAnimation =(LottieAnimationView) findViewById(R.id.bottomAnimation);
        bottomAnimation.setAnimation("bottom_bands.json");
        topAnimation.playAnimation();
        bottomAnimation.playAnimation();


//        cameraAnimation =(GifImageView) findViewById(R.id.cameraAnimation);
//        topWaveAnimation =(GifImageView) findViewById(R.id.topWaveAnimation);
//        cameraAnimation =(GifImageView) findViewById(R.id.cameraAnimation);


//        try{
//            InputStream inputStream1 = getAssets().open("camera.gif");
//            byte[] bytes1 =IOUtils.toByteArray(inputStream1);
//            cameraAnimation.setBytes(bytes1);
//            cameraAnimation.startAnimation();
//
//            //For topWaveAnimation
//            InputStream inputStream2 = getAssets().open("top_wave.gif");
//            byte[] bytes2 =IOUtils.toByteArray(inputStream2);
//            topWaveAnimation.setBytes(bytes2);
//            topWaveAnimation.startAnimation();
//        }
//        catch (IOException ex){
//
//        }

        //Wait for 3 seconds before going to React Native App
        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                SplashScreen.this.startActivity(new Intent(SplashScreen.this , MainActivity.class));
                 SplashScreen.this.finish();
//                overridePendingTransition(R.anim.fadein,R.anim.fadeout);

            }
        }, 3000 );
    }
}
