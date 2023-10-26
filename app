Saltar al contenido
MENÚ
ANDROID APPS

Aprende conmigo

PROYECTOS

Aplicación sencilla con tres textos
main_activity.xml

<?xml version=»1.0″ encoding=»utf-8″?>

<LinearLayout xmlns:android=»http://schemas.android.com/apk/res/android»
android:layout_width=»match_parent»
android:layout_height=»match_parent»
android:orientation=»vertical»
android:gravity=»center»>

<TextView

android:id=»@+id/like»

android:layout_width=»match_parent» android:layout_height=»wrap_content»

android:layout_margin=»20dp»
android:gravity=»center»
android:text=»Dale LIKE»/>

<TextView android:id=»@+id/campana»

android:layout_width=»match_parent»
android:layout_height=»wrap_content»

android:layout_margin=»20dp»
android:gravity=»center»
android:textColor=»#ff0000″
android:textSize=»20dp»
android:text=»Activa la Campana»/>

<TextView
android:id=»@+id/suscribirse»
android:layout_width=»match_parent»
android:layout_height=»wrap_content»
android:layout_margin=»20dp»
android:gravity=»center»
android:textColor=»#ffff»
android:textSize=»30dp»
android:background=»#ff0000″
android:text=»Suscribete» />

</LinearLayout>


res/values-v21/styles.xml

<?xml version=»1.0″ encoding=»utf-8″?>
<resources>
<style name=»AppTheme» parent=»@android:style/Theme.Material»>
<item name=»android:textColorPrimary»>#fff</item>
<item name=»android:colorPrimary»>#009643</item>
</style>


Pantalla Splash y Fondo
res/values-v21/styles.xml

<?xml version=»1.0″ encoding=»utf-8″?>
<resources>
<style name=»AppTheme» parent=»@android:style/Theme.Material»>
<item name=»android:textColorPrimary»>#fff</item>
<item name=»android:colorPrimary»>#009643</item>
<item name=»android:windowBackground»>@drawable/bg_hallo</item>
</style>
<style name=»Splash» parent=»@android:style/Theme.NoTitleBar»>
<item name=»android:windowBackground»>@drawable/sp_hallo</item>
</style>
</resources>

AndroidManifest.xml

<application

        android:allowBackup=»true»
        android:icon=»@drawable/ic_launcher»
        android:label=»@string/app_name»
        android:theme=»@style/AppTheme»>
        <activity android:name=»com.tutorial.myapp.MainActivity»
android:theme=»@style/Splash»>
       
            <intent-filter>
                <action android:name=»android.intent.action.MAIN» />
                <category android:name=»android.intent.category.LAUNCHER» />
            </intent-filter>
        </activity>
    </application>

MainActivity.java

package com.tutorial.myapp;

import android.app.Activity;
import android.os.Bundle;
import com.tutorial.myapp.R;
public class MainActivity extends Activity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
setTheme(R.style.AppTheme);        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
}


main_activity.xml

<?xml version=»1.0″ encoding=»utf-8″?>
<LinearLayout xmlns:android=»http://schemas.android.com/apk/res/android»
    android:layout_width=»match_parent»
    android:layout_height=»match_parent»
    android:orientation=»vertical»
    android:gravity=»center»>
<TextView
android:id=»@+id/like»
android:layout_width=»match_parent»
android:layout_height=»wrap_content»
android:layout_margin=»20dp»
android:gravity=»center»
android:text=»Dale LIKE» />
<TextView
android:id=»@+id/campana»
android:layout_width=»match_parent»
android:layout_height=»wrap_content»
android:layout_margin=»20dp»
android:gravity=»center»
android:textColor=»#ff0000″
android:textSize=»20dp»
android:text=»Activa la Campana» />
<Button
android:id=»@+id/suscribirse»
android:layout_width=»match_parent»
android:layout_height=»wrap_content»
android:layout_margin=»20dp»
android:gravity=»center»
android:text=»Suscríbete»
style=»@style/Btn» />

</LinearLayout>

drawable/radius.xml

<?xml version=»1.0″ encoding=»utf-8″?>
<shape xmlns:android=»http://schemas.android.com/apk/res/android»
   android:shape=»rectangle»>
<solid android:color=»#ff0000″ />
<corners android:radius=»10dp» />
</shape>

styles.xml

<resources>
<style name=»Btn»>
<item name=»android:textColor»>#ffff</item>
<item name=»android:textSize»>30dp</item>
<item name=»android:background»>@drawable/radius</item>
</style>
</resources>


activity_main.xml

<?xml version=»1.0″ encoding=»utf-8″?>
<LinearLayout xmlns:android=»http://schemas.android.com/apk/res/android»
    android:layout_width=»match_parent»
    android:layout_height=»match_parent»
    android:orientation=»vertical»
    android:gravity=»center»>
<TextView
android:id=»@+id/txt»
android:layout_width=»match_parent»
android:layout_height=»wrap_content»
android:layout_margin=»20dp»
android:gravity=»center»
android:textSize=»30dp»
android:text=»Comenta:» />
<EditText
android:id=»@+id/edit»
android:layout_width=»match_parent»
android:layout_height=»wrap_content»
android:layout_margin=»20dp»
android:gravity=»center»
android:textColor=»#fff»
android:textSize=»25dp»
android:textColorHint=»#BBDEFB»
android:hint=»Deja tu comentario» />
<Button
android:id=»@+id/suscribirse»
android:layout_width=»match_parent»
android:layout_height=»wrap_content»
android:layout_margin=»20dp»
android:gravity=»center»
android:text=»Suscríbete»
style=»@style/Btn» />

</LinearLayout>


activity_main.xml

<LinearLayout xmlns:android=»http://schemas.android.com/apk/res/android»
android:layout_width=»match_parent»
android:layout_height=»wrap_content»
android:orientation=»horizontal»
android:gravity=»right»>

<ToggleButton
android:id=»@+id/sub»
android:layout_width=»wrap_content»
android:layout_height=»wrap_content»
android:layout_weight=»1″
android:layout_gravity=»right»
android:layout_marginLeft=»10dp»
android:checked=»false»
android:paddingRight=»10dp»
android:drawableLeft=»@drawable/yt_button»
android:textSize=»25dp»
android:textColor=»@color/tg_txtcolor_selector»
android:textOn=»Suscrito»
android:textOff=»Suscribirse»
android:background=»@drawable/radius_bdr» />

</LinearLayout>

   
