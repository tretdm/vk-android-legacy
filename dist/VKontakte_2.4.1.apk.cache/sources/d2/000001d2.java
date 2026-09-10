package com.vkontakte.android;

import android.app.AlertDialog;
import android.app.Notification;
import android.app.ProgressDialog;
import android.content.ContentValues;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.provider.MediaStore;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RemoteViews;
import android.widget.TextView;
import android.widget.Toast;
import com.vkontakte.android.APIRequest;
import com.vkontakte.android.api.Document;
import com.vkontakte.android.api.VideoFile;
import com.vkontakte.android.cache.FriendsCache;
import com.vkontakte.android.cache.UserWallCache;
import com.vkontakte.android.ui.LocationAttachView;
import com.vkontakte.android.ui.MultiAttachView;
import com.vkontakte.android.ui.XLinearLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Vector;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class NewPostActivity extends CustomTitleActivity implements MultiAttachView.AttachActionListener2, XLinearLayout.OnKeyboardStateChangeListener {
    public static final int NOTIFY_ID = 1;
    public static final int NOTIFY_ID_PROGR = 2;
    private MultiAttachView attachView;
    Intent camIntent;
    private GeoAttachment geoAttach;
    private LocationAttachView geoAttachView;
    Uri imageUri;
    private LocationListener locationListener;
    AlertDialog.Builder mentionDlg;
    Notification notification;
    AlertDialog.Builder photoDlg;
    AlertDialog.Builder photoDlg2;
    ProgressDialog progrDlg;
    ProgressDialog progrDlg2;
    ProgressDialog progrDlg3;
    TitleBarButton sendBtn;
    RemoteViews uploadView;
    private final int CAMERA_RESULT = 1;
    private final int GALLERY_RESULT = 2;
    private final int LOCATION_RESULT = 3;
    private final int AUDIO_RESULT = 4;
    private final int VIDEO_RESULT = 5;
    private final int DOCUMENT_RESULT = 6;
    int uid = 0;
    boolean mdSetup = false;
    boolean publishing = false;
    boolean fromGroup = false;
    boolean signedFromGroup = false;
    boolean needPostAfterLocation = false;
    private boolean saveDraft = true;
    private boolean locationLoading = false;
    private HashMap<String, Attachment> attachments = new HashMap<>();
    boolean friendsOnly = false;
    boolean exportToTwitter = false;
    boolean exportToFacebook = false;

    @Override // com.vkontakte.android.CustomTitleActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        String[] items2;
        boolean _hasCam;
        super.onCreate(savedInstanceState);
        this.uid = getIntent().getIntExtra("uid", Global.uid);
        setContentView(R.layout.update_status);
        if (Global.isTablet) {
            findViewById(R.id.titlebar).setBackgroundResource(R.drawable.reply_dlg_top);
            findViewById(R.id.titlebar).setPadding(Global.scale(7.0f), 0, Global.scale(7.0f), 0);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-1, Global.scale(200.0f));
            lp.weight = 0.0f;
            findViewById(R.id.status_text_edit).setLayoutParams(lp);
            ((ViewGroup) getWindow().getDecorView()).getChildAt(0).setBackgroundColor(0);
            getWindow().setSoftInputMode(32);
        }
        this.impl.initGlobal();
        this.sendBtn = new TitleBarButton(this, getResources().getString(R.string.send), 0);
        addViewAtRight(this.sendBtn);
        this.sendBtn.setActiveBG();
        this.sendBtn.setShadowLayer(1.0E-7f, 0.0f, -1.0f, -11958335);
        LinearLayout.LayoutParams lp2 = (LinearLayout.LayoutParams) this.sendBtn.getLayoutParams();
        int scale = Global.scale(3.0f);
        lp2.topMargin = scale;
        lp2.bottomMargin = scale;
        lp2.width = Global.scale(91.0f);
        this.sendBtn.setEnabled(false);
        Global.setFontOnAll(this.sendBtn);
        TitleBarButton cancelBtn = new TitleBarButton(this, getResources().getString(R.string.cancel), 0);
        addViewAtLeft(cancelBtn);
        LinearLayout.LayoutParams lp3 = (LinearLayout.LayoutParams) cancelBtn.getLayoutParams();
        int scale2 = Global.scale(3.0f);
        lp3.topMargin = scale2;
        lp3.bottomMargin = scale2;
        lp3.width = Global.scale(80.0f);
        lp3.leftMargin = Global.scale(1.0f);
        Global.setFontOnAll(cancelBtn);
        findViewById(R.id.status_text_edit).postDelayed(new Runnable() { // from class: com.vkontakte.android.NewPostActivity.1
            @Override // java.lang.Runnable
            public void run() {
                InputMethodManager imm = (InputMethodManager) NewPostActivity.this.getSystemService("input_method");
                imm.showSoftInput(NewPostActivity.this.findViewById(R.id.status_text_edit), 0);
            }
        }, 100L);
        this.sendBtn.setOnClickListener(new View.OnClickListener() { // from class: com.vkontakte.android.NewPostActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                NewPostActivity.this.publishing = true;
                NewPostActivity.this.saveDraft = false;
                NewPostActivity.this.post();
            }
        });
        cancelBtn.setOnClickListener(new View.OnClickListener() { // from class: com.vkontakte.android.NewPostActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                NewPostActivity.this.saveDraft = false;
                NewPostActivity.this.setResult(0);
                NewPostActivity.this.finish();
            }
        });
        findViewById(R.id.newpost_att_photo).setOnClickListener(new View.OnClickListener() { // from class: com.vkontakte.android.NewPostActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                PackageManager pm = NewPostActivity.this.getPackageManager();
                if (Integer.parseInt(Build.VERSION.SDK) < 5 || Global.hasSysFeature(pm, "android.hardware.camera")) {
                    NewPostActivity.this.photoDlg.show();
                } else {
                    NewPostActivity.this.startGallery();
                }
            }
        });
        findViewById(R.id.newpost_att_geo).setOnClickListener(new View.OnClickListener() { // from class: com.vkontakte.android.NewPostActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (NewPostActivity.this.geoAttach != null) {
                    NewPostActivity.this.attachView.setVisibility(8);
                    NewPostActivity.this.geoAttachView.setVisibility(0);
                    InputMethodManager inputManager = (InputMethodManager) NewPostActivity.this.getSystemService("input_method");
                    inputManager.hideSoftInputFromWindow(NewPostActivity.this.getCurrentFocus().getWindowToken(), 2);
                    return;
                }
                NewPostActivity.this.startLocationChooser();
            }
        });
        findViewById(R.id.newpost_att_add).setOnClickListener(new View.OnClickListener() { // from class: com.vkontakte.android.NewPostActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                NewPostActivity.this.showExtendedAttachMenu();
            }
        });
        this.mentionDlg = new AlertDialog.Builder(this);
        this.mentionDlg.setTitle(getResources().getString(R.string.add_mention_title));
        if (Global.friends == null) {
            Global.friends = new Vector<>();
        }
        if (Global.friends.size() > 0) {
            setupMentionDlg();
        }
        String[] items = getResources().getStringArray(R.array.photo_menu);
        this.photoDlg = new AlertDialog.Builder(this);
        this.photoDlg.setTitle(getResources().getString(R.string.add_photo_title));
        this.photoDlg.setItems(items, new DialogInterface.OnClickListener() { // from class: com.vkontakte.android.NewPostActivity.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface d, int choice) {
                if (choice == 0) {
                    NewPostActivity.this.startCamera();
                } else if (choice == 1) {
                    NewPostActivity.this.startGallery();
                }
            }
        });
        if (Integer.parseInt(Build.VERSION.SDK) < 5 || Global.hasSysFeature(getPackageManager(), "android.hardware.camera")) {
            items2 = getResources().getStringArray(R.array.photo_menu2);
            _hasCam = true;
        } else {
            items2 = getResources().getStringArray(R.array.photo_menu3);
            _hasCam = false;
        }
        final boolean hasCam = _hasCam;
        this.photoDlg2 = new AlertDialog.Builder(this);
        this.photoDlg2.setTitle(getResources().getString(R.string.replace_photo_title));
        this.photoDlg2.setItems(items2, new DialogInterface.OnClickListener() { // from class: com.vkontakte.android.NewPostActivity.8
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface d, int choice) {
                if (hasCam) {
                    if (choice == 0) {
                        NewPostActivity.this.startCamera();
                    } else if (choice == 1) {
                        NewPostActivity.this.startGallery();
                    } else if (choice == 2) {
                        NewPostActivity.this.removePhoto();
                    }
                } else if (choice == 0) {
                    NewPostActivity.this.startGallery();
                } else if (choice == 1) {
                    NewPostActivity.this.removePhoto();
                }
            }
        });
        if (getIntent().getIntExtra("qp", 0) == 1) {
            startCamera();
        }
        if (getIntent().getIntExtra("qp", 0) == 2) {
            startGallery();
        }
        ((EditText) findViewById(R.id.status_text_edit)).addTextChangedListener(new TextWatcher() { // from class: com.vkontakte.android.NewPostActivity.9
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable arg0) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence arg0, int arg1, int arg2, int arg3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence str, int arg1, int arg2, int len) {
                NewPostActivity.this.sendBtn.setEnabled((str.length() == 0 && NewPostActivity.this.attachView.getNumAttachments() == 0) ? false : true);
            }
        });
        this.attachView = (MultiAttachView) findViewById(R.id.newpost_att_view);
        this.attachView.setOnAttachActionListener(this);
        if (getIntent().hasExtra("text") && getIntent().getStringExtra("text") != null) {
            String txt = getIntent().getStringExtra("text");
            String link = null;
            Pattern ptn = Pattern.compile("((?:(?:http|https)://)[a-zA-Zа-яА-Я0-9-]+\\.[a-zA-Zа-яА-Я]{2,4}[0-9a-zA-Z/?\\.=#!%&_-]*(?<!\\.)(?<!!))");
            Matcher m = ptn.matcher(txt);
            if (m.find()) {
                link = m.group(1);
                txt = m.replaceFirst("");
            }
            if (link != null) {
                String linkPreview = (link.length() > 30 ? link.substring(0, 30) : link).replace("http://", "").replace("https://", "");
                this.attachView.addAlreadyUploaded(String.valueOf(link) + "|" + linkPreview + "|" + getResources().getString(R.string.attach_link));
                this.attachView.setVisibility(0);
            }
            ((EditText) findViewById(R.id.status_text_edit)).setText(txt);
            this.sendBtn.setEnabled(true);
        }
        if (getIntent().hasExtra("photoURI")) {
            this.attachView.add(getIntent().getParcelableExtra("photoURI").toString());
            ((TextView) findViewById(R.id.update_photo_label)).setText(String.valueOf(getResources().getString(R.string.photo)) + " (1)");
            this.sendBtn.setEnabled(true);
            this.attachView.setVisibility(0);
        }
        ((XLinearLayout) findViewById(R.id.newpost_root)).setOnKeyboardStateListener(this);
        findViewById(R.id.newpost_att_photos).setOnClickListener(new View.OnClickListener() { // from class: com.vkontakte.android.NewPostActivity.10
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (NewPostActivity.this.attachView.getNumAttachments() != 0) {
                    NewPostActivity.this.geoAttachView.setVisibility(8);
                    NewPostActivity.this.attachView.setVisibility(0);
                    InputMethodManager inputManager = (InputMethodManager) NewPostActivity.this.getSystemService("input_method");
                    inputManager.hideSoftInputFromWindow(NewPostActivity.this.getCurrentFocus().getWindowToken(), 2);
                }
            }
        });
        this.geoAttachView = (LocationAttachView) findViewById(R.id.newpost_geo_att_view);
        findViewById(R.id.attach_geo_remove).setOnClickListener(new View.OnClickListener() { // from class: com.vkontakte.android.NewPostActivity.11
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                NewPostActivity.this.geoAttachView.setVisibility(8);
                if (NewPostActivity.this.locationLoading) {
                    NewPostActivity.this.stopGettingLocation();
                }
                if (NewPostActivity.this.attachView.getNumAttachments() > 0) {
                    NewPostActivity.this.attachView.setVisibility(0);
                }
                NewPostActivity.this.geoAttach = null;
                ((ImageView) NewPostActivity.this.findViewById(R.id.newpost_att_geo)).setImageResource(R.drawable.ic_attach_geo);
            }
        });
        this.locationListener = new AnonymousClass12();
        if ((this.uid == 0 || this.uid == Global.uid) && !"android.intent.action.SEND".equals(getIntent().getAction())) {
            SharedPreferences prefs = getSharedPreferences("post_draft", 0);
            if (prefs.contains("text")) {
                ((EditText) findViewById(R.id.status_text_edit)).setText(prefs.getString("text", ""));
                int nAttachments = prefs.getInt("attach_num", 0);
                if (nAttachments > 0) {
                    this.attachView.setVisibility(0);
                }
                this.exportToTwitter = prefs.getBoolean("x_twitter", false);
                this.exportToFacebook = prefs.getBoolean("x_facebook", false);
                this.friendsOnly = prefs.getBoolean("friends_only", false);
                Vector<String> attachments = new Vector<>();
                for (int i = 0; i < nAttachments; i++) {
                    String filename = prefs.getString("attach" + i + "_file", null);
                    if (filename != null) {
                        attachments.add(filename);
                    }
                }
                if (attachments.size() > 0) {
                    addAttachment(attachments, 0);
                }
                if (prefs.getBoolean("location", false)) {
                    startLocationChooser();
                }
            }
        }
        this.exportToTwitter = getSharedPreferences(null, 0).getBoolean("export_twitter", false);
        this.exportToFacebook = getSharedPreferences(null, 0).getBoolean("export_facebook", false);
    }

    /* renamed from: com.vkontakte.android.NewPostActivity$12  reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass12 implements LocationListener {
        AnonymousClass12() {
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(final Location location) {
            NewPostActivity.this.stopGettingLocation();
            new Thread(new Runnable() { // from class: com.vkontakte.android.NewPostActivity.12.1
                @Override // java.lang.Runnable
                public void run() {
                    final GeoAttachment att = new GeoAttachment();
                    att.lat = location.getLatitude();
                    att.lon = location.getLongitude();
                    try {
                        Geocoder geocoder = new Geocoder(NewPostActivity.this.getBaseContext(), Locale.getDefault());
                        List<Address> addrs = geocoder.getFromLocation(att.lat, att.lon, 1);
                        Address addr = addrs.get(0);
                        String a = "";
                        int i = addr.getMaxAddressLineIndex();
                        while (i >= 0) {
                            String line = addr.getAddressLine(i);
                            if (!line.equals(addr.getPostalCode()) && !line.equals(addr.getCountryName())) {
                                a = String.valueOf(a) + line + (i == 0 ? "" : ", ");
                            }
                            i--;
                        }
                        att.address = a;
                    } catch (Exception e) {
                    }
                    NewPostActivity.this.geoAttach = att;
                    NewPostActivity.this.runOnUiThread(new Runnable() { // from class: com.vkontakte.android.NewPostActivity.12.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            NewPostActivity.this.geoAttachView.setData(att);
                        }
                    });
                }
            }).start();
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String provider) {
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String provider) {
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String provider, int status, Bundle extras) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showExtendedAttachMenu() {
        int rID = R.array.wall_attach_options2;
        if (this.uid == 0 || this.uid == Global.uid || getIntent().hasExtra("is_group_admin")) {
            rID = R.array.wall_attach_options;
        }
        new AlertDialog.Builder(this).setItems(rID, new DialogInterface.OnClickListener() { // from class: com.vkontakte.android.NewPostActivity.13
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                switch (which) {
                    case 0:
                        NewPostActivity.this.startAudioSelector();
                        return;
                    case 1:
                        NewPostActivity.this.startVideoSelector();
                        return;
                    case 2:
                        NewPostActivity.this.startDocumentSelector();
                        return;
                    case 3:
                        NewPostActivity.this.showMentionDialog();
                        return;
                    case 4:
                        NewPostActivity.this.showOptions();
                        return;
                    default:
                        return;
                }
            }
        }).setTitle(R.string.attach).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startAudioSelector() {
        Intent intent = new Intent(this, AudioListActivity.class);
        intent.putExtra("select", 1);
        intent.putExtra("oid", Global.uid);
        startActivityForResult(intent, 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startVideoSelector() {
        Intent intent = new Intent(this, VideoListActivity.class);
        intent.putExtra("select", 1);
        startActivityForResult(intent, 5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startDocumentSelector() {
        Intent intent = new Intent(this, DocumentsActivity.class);
        intent.putExtra("select", 1);
        startActivityForResult(intent, 6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showMentionDialog() {
        if (Global.friends.size() > 0) {
            if (!this.mdSetup) {
                setupMentionDlg();
            }
            this.mentionDlg.show();
            return;
        }
        if (FriendsCache.hasEntries(this)) {
            NetworkStateReceiver.updateInfo(this);
        }
        this.progrDlg = new ProgressDialog(this);
        this.progrDlg.setMessage(getResources().getString(R.string.loading_friends));
        this.progrDlg.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.vkontakte.android.NewPostActivity.14
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialog) {
                NewPostActivity.this.progrDlg = null;
            }
        });
        this.progrDlg.show();
        this.attachView.postDelayed(new Runnable() { // from class: com.vkontakte.android.NewPostActivity.15
            @Override // java.lang.Runnable
            public void run() {
                if (Global.friends.size() <= 0) {
                    NewPostActivity.this.attachView.postDelayed(this, 100L);
                } else {
                    NewPostActivity.this.friendListLoaded();
                }
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAttachment(final Vector<String> atts, final int idx) {
        if (this.attachView.busy) {
            this.attachView.postDelayed(new Runnable() { // from class: com.vkontakte.android.NewPostActivity.16
                @Override // java.lang.Runnable
                public void run() {
                    NewPostActivity.this.addAttachment(atts, idx);
                }
            }, 100L);
            return;
        }
        String a = atts.get(idx);
        if (a.startsWith("A")) {
            this.attachView.addAlreadyUploaded(a.substring(1));
        } else {
            this.attachView.add(atts.get(idx));
        }
        if (idx + 1 < atts.size()) {
            addAttachment(atts, idx + 1);
        }
    }

    public void removePhoto() {
        if (((EditText) findViewById(R.id.status_text_edit)).getText().toString().length() == 0) {
            this.sendBtn.setEnabled(false);
        }
        ((TextView) findViewById(R.id.update_photo_label)).setText(getResources().getString(R.string.photo));
    }

    public void startCamera() {
        try {
            ContentValues values = new ContentValues();
            values.put(ChatActivity.EXTRA_TITLE, "tmp");
            this.imageUri = getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, values);
            this.camIntent = new Intent("android.media.action.IMAGE_CAPTURE");
            this.camIntent.putExtra("output", this.imageUri);
            startActivityForResult(this.camIntent, 1);
        } catch (Exception e) {
            Toast.makeText(this, (int) R.string.error, 0).show();
        }
    }

    public void startGallery() {
        Intent i = new Intent("android.intent.action.PICK", MediaStore.Images.Media.INTERNAL_CONTENT_URI);
        startActivityForResult(i, 2);
    }

    public void startLocationChooser() {
        if (this.uid == 0 || this.uid == Global.uid) {
            ((ImageView) findViewById(R.id.newpost_att_geo)).setImageResource(R.drawable.ic_attach_geo_act);
            this.locationLoading = true;
            LocationManager locationManager = (LocationManager) getSystemService("location");
            locationManager.requestLocationUpdates("gps", 0L, 0.0f, this.locationListener);
            locationManager.requestLocationUpdates("network", 0L, 0.0f, this.locationListener);
            this.geoAttachView.setData(null);
            this.attachView.setVisibility(8);
            this.geoAttachView.setVisibility(0);
            if (getCurrentFocus() != null) {
                InputMethodManager inputManager = (InputMethodManager) getSystemService("input_method");
                inputManager.hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
                return;
            }
            return;
        }
        Intent intent = new Intent(this, SelectGeoPointActivity.class);
        startActivityForResult(intent, 3);
    }

    public void stopGettingLocation() {
        this.locationLoading = false;
        LocationManager locationManager = (LocationManager) getSystemService("location");
        locationManager.removeUpdates(this.locationListener);
    }

    public void showOptions() {
        if (this.uid > 0) {
            final boolean[] opts = {this.friendsOnly, this.exportToTwitter, this.exportToFacebook};
            new AlertDialog.Builder(this).setMultiChoiceItems(R.array.post_options, opts, new DialogInterface.OnMultiChoiceClickListener() { // from class: com.vkontakte.android.NewPostActivity.17
                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                public void onClick(DialogInterface dialog, int which, boolean isChecked) {
                    opts[which] = isChecked;
                }
            }).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.vkontakte.android.NewPostActivity.18
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialog, int which) {
                    NewPostActivity.this.friendsOnly = opts[0];
                    NewPostActivity.this.exportToTwitter = opts[1];
                    NewPostActivity.this.exportToFacebook = opts[2];
                    NewPostActivity.this.getSharedPreferences(null, 0).edit().putBoolean("export_twitter", opts[1]).putBoolean("export_facebook", opts[2]).commit();
                }
            }).setTitle(R.string.post_options).show();
            return;
        }
        final boolean[] opts2 = {this.fromGroup, this.signedFromGroup};
        new AlertDialog.Builder(this).setMultiChoiceItems(new String[]{getResources().getString(R.string.post_from_group), getResources().getString(R.string.post_from_group_signed)}, opts2, new DialogInterface.OnMultiChoiceClickListener() { // from class: com.vkontakte.android.NewPostActivity.19
            @Override // android.content.DialogInterface.OnMultiChoiceClickListener
            public void onClick(DialogInterface dialog, int which, boolean isChecked) {
                opts2[which] = isChecked;
            }
        }).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.vkontakte.android.NewPostActivity.20
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                NewPostActivity.this.fromGroup = opts2[0];
                NewPostActivity.this.signedFromGroup = opts2[1];
            }
        }).setTitle(R.string.post_options).show();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent intent) {
        if (resultCode == -1) {
            if (requestCode == 3) {
                this.geoAttach = (GeoAttachment) intent.getParcelableExtra("point");
                ((ImageView) findViewById(R.id.newpost_att_geo)).setImageResource(R.drawable.ic_attach_geo_act);
                this.geoAttachView.setVisibility(0);
                this.attachView.setVisibility(8);
                this.geoAttachView.setData(this.geoAttach);
                return;
            }
            if (requestCode == 1) {
                extractPhoto();
                this.sendBtn.setEnabled(true);
            }
            if (requestCode == 2) {
                this.imageUri = intent.getData();
                extractPhoto();
                this.sendBtn.setEnabled(true);
            }
            if (requestCode == 4) {
                AudioFile af = (AudioFile) intent.getParcelableExtra("audio");
                this.attachView.addAlreadyUploaded("audio" + af.oid + "_" + af.aid + "|" + af.title + "|" + af.artist);
                this.attachView.setVisibility(0);
                this.attachments.put("Aaudio" + af.oid + "_" + af.aid, new AudioAttachment(af));
                this.sendBtn.setEnabled(true);
            }
            if (requestCode == 5) {
                VideoFile vf = (VideoFile) intent.getParcelableExtra("video");
                this.attachView.addAlreadyUploaded("video" + vf.oid + "_" + vf.vid + "|" + vf.urlThumb);
                this.attachView.setVisibility(0);
                this.attachments.put("Avideo" + vf.oid + "_" + vf.vid, new VideoAttachment(vf));
                this.sendBtn.setEnabled(true);
            }
            if (requestCode == 6) {
                Document doc = (Document) intent.getParcelableExtra("document");
                this.attachView.addAlreadyUploaded("doc" + doc.oid + "_" + doc.did + "|" + doc.title.replace("|", "") + "|" + doc.ext);
                this.attachView.setVisibility(0);
                this.attachments.put("Adoc" + doc.oid + "_" + doc.did, new DocumentAttachment(doc));
                this.sendBtn.setEnabled(true);
            }
        }
    }

    public void extractPhoto() {
        getContentResolver();
        Log.d("vk", "URI=" + this.imageUri.toString());
        this.attachView.add(this.imageUri.toString());
        this.attachView.setVisibility(0);
        this.geoAttachView.setVisibility(8);
    }

    public void setupMentionDlg() {
        String[] friends = new String[Global.friends.size()];
        for (int i = 0; i < Global.friends.size(); i++) {
            friends[i] = Global.friends.elementAt(i).fullName;
        }
        this.mentionDlg.setItems(friends, new DialogInterface.OnClickListener() { // from class: com.vkontakte.android.NewPostActivity.21
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface d, int choice) {
                UserProfile p = Global.friends.elementAt(choice);
                EditText ed = (EditText) NewPostActivity.this.findViewById(R.id.status_text_edit);
                ed.getText().insert(ed.getSelectionEnd(), "[id" + p.uid + "|" + p.fullName + "]");
            }
        });
        this.mdSetup = true;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        if ((this.uid == 0 || this.uid == Global.uid) && !"android.intent.action.SEND".equals(getIntent().getAction())) {
            SharedPreferences prefs = getSharedPreferences("post_draft", 0);
            if (this.saveDraft) {
                SharedPreferences.Editor editor = prefs.edit().clear().putString("text", ((EditText) findViewById(R.id.status_text_edit)).getText().toString()).putBoolean("x_twitter", this.exportToTwitter).putBoolean("x_facebook", this.exportToFacebook).putBoolean("friends_only", this.friendsOnly).putBoolean("location", this.geoAttach != null).putInt("attach_num", this.attachView.getNumAttachments());
                for (int i = 0; i < this.attachView.getNumAttachments(); i++) {
                    editor.putString("attach" + i + "_file", this.attachView.getUriAt(i).toString());
                }
                editor.commit();
            } else {
                prefs.edit().clear().commit();
            }
        }
        super.onDestroy();
    }

    public void friendListLoaded() {
        if (this.progrDlg != null) {
            runOnUiThread(new Runnable() { // from class: com.vkontakte.android.NewPostActivity.22
                @Override // java.lang.Runnable
                public void run() {
                    NewPostActivity.this.progrDlg.dismiss();
                    NewPostActivity.this.setupMentionDlg();
                    NewPostActivity.this.mentionDlg.show();
                }
            });
        }
    }

    @Override // com.vkontakte.android.CustomTitleActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    public void post() {
        boolean needUpload = false;
        for (int i = 0; i < this.attachView.getNumAttachments(); i++) {
            if (!this.attachView.getUriAt(i).startsWith("A")) {
                needUpload = true;
            }
        }
        if (!needUpload) {
            String exportParam = null;
            if (this.exportToFacebook && this.exportToTwitter) {
                exportParam = "twitter,facebook";
            } else if (this.exportToTwitter) {
                exportParam = "twitter";
            } else if (this.exportToFacebook) {
                exportParam = "facebook";
            }
            final String ptext = ((EditText) findViewById(R.id.status_text_edit)).getText().toString();
            APIRequest req = new APIRequest("wall.post");
            String att = "";
            if (this.fromGroup) {
                req.param("from_group", 1);
            }
            if (this.signedFromGroup) {
                req.param("signed", 1);
            }
            if (this.geoAttach != null) {
                req.param("lat", new StringBuilder(String.valueOf(this.geoAttach.lat)).toString()).param("long", new StringBuilder(String.valueOf(this.geoAttach.lon)).toString());
            }
            if (this.attachView.getNumAttachments() > 0) {
                for (int i2 = 0; i2 < this.attachView.getNumAttachments(); i2++) {
                    att = String.valueOf(att) + "," + this.attachView.getUriAt(i2).substring(1).split("\\|")[0];
                }
                if (att.startsWith(",")) {
                    att = att.substring(1);
                }
            }
            if (att.length() > 0) {
                req.param(ChatActivity.EXTRA_ATTACHMENTS, att);
            }
            req.param(LongPollService.EXTRA_MESSAGE, ptext).param("owner_id", this.uid).param("friends_only", this.friendsOnly ? "1" : null).param("services", exportParam).handler(new APIRequest.APIHandler() { // from class: com.vkontakte.android.NewPostActivity.23
                @Override // com.vkontakte.android.APIRequest.APIHandler
                public void success(JSONObject r) {
                    Toast.makeText(NewPostActivity.this.getApplicationContext(), NewPostActivity.this.getResources().getString(R.string.wall_ok), 0).show();
                    SharedPreferences prefs = NewPostActivity.this.getSharedPreferences(null, 0);
                    NewsEntry e = new NewsEntry();
                    e.postID = r.optJSONObject("response").optInt("post_id");
                    e.text = Global.replaceMentions(ptext);
                    e.time_l = (int) (System.currentTimeMillis() / 1000);
                    e.userID = NewPostActivity.this.fromGroup ? NewPostActivity.this.uid : Global.uid;
                    e.ownerID = NewPostActivity.this.uid;
                    e.userName = NewPostActivity.this.fromGroup ? NewPostActivity.this.getIntent().getStringExtra("group_title") : prefs.getString("username", "DELETED");
                    e.userPhotoURL = NewPostActivity.this.fromGroup ? NewPostActivity.this.getIntent().getStringExtra("group_photo") : prefs.getString("userphoto", "http://vkontakte.ru/images/question_b.gif");
                    e.flags = 66;
                    for (int i3 = 0; i3 < NewPostActivity.this.attachView.getNumAttachments(); i3++) {
                        Attachment a = (Attachment) NewPostActivity.this.attachments.get(NewPostActivity.this.attachView.getUriAt(i3).split("\\|")[0]);
                        if (a != null) {
                            e.attachments.add(a);
                        }
                    }
                    e.time = Global.langDate(NewPostActivity.this.getResources(), e.time_l);
                    if (NewPostActivity.this.geoAttach != null) {
                        e.attachments.add(NewPostActivity.this.geoAttach);
                    }
                    if (NewPostActivity.this.signedFromGroup) {
                        e.attachments.add(new LinkAttachment("http://vkontakte.ru/id" + Global.uid, "- " + prefs.getString("username", "DELETED")));
                    }
                    Intent intent = new Intent(WallActivity.ACTION_NEW_POST_BROADCAST);
                    intent.putExtra("entry", (Parcelable) e);
                    NewPostActivity.this.sendBroadcast(intent);
                    if (NewPostActivity.this.uid == Global.uid) {
                        UserWallCache.add(e, NewPostActivity.this);
                    }
                    NewPostActivity.this.setResult(-1);
                    NewPostActivity.this.finish();
                }

                @Override // com.vkontakte.android.APIRequest.APIHandler
                public void fail(int ecode, String emsg) {
                    Toast.makeText(NewPostActivity.this.getApplicationContext(), NewPostActivity.this.getResources().getString(R.string.error), 0).show();
                }
            }).wrapProgress(this).exec(this);
            return;
        }
        Intent intent = new Intent(this, UploaderService.class);
        String[] files = new String[this.attachView.getNumAttachments()];
        int[] types = new int[this.attachView.getNumAttachments()];
        for (int i3 = 0; i3 < this.attachView.getNumAttachments(); i3++) {
            files[i3] = this.attachView.getUriAt(i3);
            types[i3] = 0;
        }
        intent.putExtra("multiattach", true);
        intent.putExtra("files", files);
        intent.putExtra("types", types);
        HashMap<String, String> params = new HashMap<>();
        String exportParam2 = null;
        if (this.exportToFacebook && this.exportToTwitter) {
            exportParam2 = "twitter,facebook";
        } else if (this.exportToTwitter) {
            exportParam2 = "twitter";
        } else if (this.exportToFacebook) {
            exportParam2 = "facebook";
        }
        if (exportParam2 != null) {
            params.put("services", exportParam2);
        }
        if (this.friendsOnly) {
            params.put("friends_only", "1");
        }
        if (this.geoAttach != null) {
            params.put("lat", new StringBuilder(String.valueOf(this.geoAttach.lat)).toString());
            params.put("long", new StringBuilder(String.valueOf(this.geoAttach.lon)).toString());
        }
        params.put("owner_id", new StringBuilder(String.valueOf(this.uid)).toString());
        params.put(LongPollService.EXTRA_MESSAGE, ((EditText) findViewById(R.id.status_text_edit)).getText().toString());
        if (this.fromGroup) {
            params.put("from_group", "1");
            params.put("_group_title", getIntent().getStringExtra("group_title"));
            params.put("_group_photo", getIntent().getStringExtra("group_photo"));
            if (this.signedFromGroup) {
                params.put("signed", "1");
            }
        }
        intent.putExtra("req_params", params);
        intent.putExtra(ChatActivity.EXTRA_ATTACHMENTS, this.attachments);
        startService(intent);
        setResult(1);
        finish();
    }

    @Override // com.vkontakte.android.ui.MultiAttachView.AttachActionListener
    public void onShowAddAttach() {
        this.photoDlg.show();
    }

    @Override // com.vkontakte.android.ui.MultiAttachView.AttachActionListener
    public void onAllAttachmentsRemoved() {
        this.attachView.setVisibility(8);
        this.sendBtn.setEnabled(((TextView) findViewById(R.id.status_text_edit)).getText().toString().length() > 0);
    }

    @Override // com.vkontakte.android.ui.XLinearLayout.OnKeyboardStateChangeListener
    public void onKeyboardStateChanged(boolean visible) {
        if (!Global.isTablet) {
            LocationAttachView locationAttachView = this.geoAttachView;
            MultiAttachView multiAttachView = this.attachView;
            boolean z = !visible;
            multiAttachView.show = z;
            locationAttachView.show = z;
        }
    }

    private void showAttachThumb(int num, boolean show, boolean border) {
        View v1 = null;
        View v2 = null;
        switch (num) {
            case 0:
                v1 = findViewById(R.id.newpost_att_thumb1);
                v2 = findViewById(R.id.newpost_att_thumb1_border);
                break;
            case 1:
                v1 = findViewById(R.id.newpost_att_thumb2);
                v2 = findViewById(R.id.newpost_att_thumb2_border);
                break;
            case 2:
                v1 = findViewById(R.id.newpost_att_thumb3);
                v2 = findViewById(R.id.newpost_att_thumb3_border);
                break;
        }
        if (v1 != null && v2 != null) {
            v1.setVisibility(show ? 0 : 8);
            v2.setVisibility(border ? 0 : 8);
        }
    }

    private void setThumbBitmap(int num, Bitmap bmp, boolean border) {
        ImageView v = null;
        switch (num) {
            case 0:
                v = (ImageView) findViewById(border ? R.id.newpost_att_thumb1_border : R.id.newpost_att_thumb1);
                break;
            case 1:
                v = (ImageView) findViewById(border ? R.id.newpost_att_thumb2_border : R.id.newpost_att_thumb2);
                break;
            case 2:
                v = (ImageView) findViewById(border ? R.id.newpost_att_thumb3_border : R.id.newpost_att_thumb3);
                break;
        }
        if (v != null) {
            v.setImageBitmap(bmp);
        }
    }

    @Override // com.vkontakte.android.ui.MultiAttachView.AttachActionListener2
    public void onUpdateBitmaps() {
        int na = Math.max(0, this.attachView.getNumAttachments());
        findViewById(R.id.newpost_att_photo).setEnabled(na < 10);
        int i = 0;
        while (i < 3) {
            showAttachThumb(2 - i, i < na, i < na);
            if (i < na) {
                if (this.attachView.getUriAt((this.attachView.getNumAttachments() - 1) - i).startsWith("A")) {
                    String u = this.attachView.getUriAt((this.attachView.getNumAttachments() - 1) - i);
                    if (u.startsWith("Aaudio")) {
                        setThumbBitmap(2 - i, Global.getResBitmap(getResources(), R.drawable.ic_np_attach_audio), true);
                        setThumbBitmap(2 - i, null, false);
                    }
                    if (u.startsWith("Avideo")) {
                        setThumbBitmap(2 - i, Global.getResBitmap(getResources(), R.drawable.ic_np_attach_video), true);
                        setThumbBitmap(2 - i, this.attachView.getThumbnailAt((this.attachView.getNumAttachments() - 1) - i), false);
                    }
                    if (u.startsWith("Adoc")) {
                        setThumbBitmap(2 - i, Global.getResBitmap(getResources(), R.drawable.ic_np_attach_doc), true);
                        setThumbBitmap(2 - i, null, false);
                    }
                    if (u.startsWith("Ahttp")) {
                        setThumbBitmap(2 - i, Global.getResBitmap(getResources(), R.drawable.ic_np_attach_link), true);
                        setThumbBitmap(2 - i, null, false);
                    }
                } else {
                    setThumbBitmap(2 - i, Global.getResBitmap(getResources(), R.drawable.newpost_photo_border), true);
                    setThumbBitmap(2 - i, this.attachView.getThumbnailAt((this.attachView.getNumAttachments() - 1) - i), false);
                }
            }
            i++;
        }
    }

    @Override // com.vkontakte.android.ui.MultiAttachView.AttachActionListener2
    public void onAttachmentRemoved(String uri) {
        this.attachments.remove(uri);
    }
}