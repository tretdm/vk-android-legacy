package com.vkontakte.android;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceCategory;
import android.preference.PreferenceManager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.google.android.c2dm.C2DMessaging;

/* loaded from: classes.dex */
public class SettingsActivity extends PreferenceActivity {
    public static final int REQUEST_SYNC_SETTINGS = 203;
    public static final int RESULT_LOGGED_OUT = 2;
    private Preference cancelDndPref;
    private Preference dnd1Pref;
    private Preference dnd8Pref;
    private CustomTitleActivityImpl impl;
    private SharedPreferences prefs;

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        this.impl = new CustomTitleActivityImpl(this, R.layout.window_title, false);
        this.impl.onCreate();
        this.prefs = PreferenceManager.getDefaultSharedPreferences(getBaseContext());
        requestWindowFeature(7);
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.preferences);
        getWindow().setFeatureInt(7, R.layout.window_title);
        Preference pref = findPreference("logOut");
        pref.setSummary(Global.myName);
        pref.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.vkontakte.android.SettingsActivity.1
            @Override // android.preference.Preference.OnPreferenceClickListener
            public boolean onPreferenceClick(Preference preference) {
                SettingsActivity.this.confirmLogout();
                return true;
            }
        });
        Preference pref2 = findPreference("sync");
        updateSyncLabel(Auth.getCurrentSyncOption(this));
        pref2.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.vkontakte.android.SettingsActivity.2
            @Override // android.preference.Preference.OnPreferenceClickListener
            public boolean onPreferenceClick(Preference preference) {
                Global.dumpViewHierarchy(SettingsActivity.this.getListView(), 0);
                Intent intent = new Intent(SettingsActivity.this, WelcomeActivity.class);
                intent.setAction("syncsettings");
                SettingsActivity.this.startActivityForResult(intent, SettingsActivity.REQUEST_SYNC_SETTINGS);
                return true;
            }
        });
        Preference pref3 = findPreference("enableC2DM");
        if (Integer.parseInt(Build.VERSION.SDK) < 8) {
            pref3.setEnabled(false);
            pref3.setSummary(R.string.push_unsupported);
            pref3.setDefaultValue(false);
            ((CheckBoxPreference) pref3).setChecked(false);
            Preference pref4 = findPreference("updateInterval");
            pref4.setDependency(null);
            pref4.setEnabled(true);
        }
        Preference pref5 = findPreference("stopc2dm");
        if (pref5 != null) {
            pref5.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.vkontakte.android.SettingsActivity.3
                @Override // android.preference.Preference.OnPreferenceClickListener
                public boolean onPreferenceClick(Preference preference) {
                    SettingsActivity.this.getSharedPreferences(null, 0).edit().remove("c2dm_regID").commit();
                    C2DMessaging.unregister(SettingsActivity.this.getApplicationContext());
                    return true;
                }
            });
        }
        Preference pref6 = findPreference("startc2dm");
        if (pref6 != null) {
            pref6.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.vkontakte.android.SettingsActivity.4
                @Override // android.preference.Preference.OnPreferenceClickListener
                public boolean onPreferenceClick(Preference preference) {
                    SettingsActivity.this.stopService(new Intent(SettingsActivity.this, LongPollService.class));
                    C2DM.start();
                    return true;
                }
            });
        }
        findPreference("network").setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.vkontakte.android.SettingsActivity.10
            @Override // android.preference.Preference.OnPreferenceClickListener
            public boolean onPreferenceClick(Preference preference) {
                Intent intent = new Intent(SettingsActivity.this, SettingsNetworkActivity.class);
                SettingsActivity.this.startActivity(intent);
                return true;
            }
        });
        findPreference("advanced").setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.vkontakte.android.SettingsActivity.5
            @Override // android.preference.Preference.OnPreferenceClickListener
            public boolean onPreferenceClick(Preference preference) {
                Intent intent = new Intent(SettingsActivity.this, SettingsAdvancedActivity.class);
                SettingsActivity.this.startActivity(intent);
                return true;
            }
        });
        ((TextView) findViewById(R.id.title_text_view)).setText(R.string.menu_settings);
        this.cancelDndPref = findPreference("dnd_cancel");
        Preference pref7 = findPreference("dnd_hour");
        this.dnd1Pref = pref7;
        pref7.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.vkontakte.android.SettingsActivity.6
            @Override // android.preference.Preference.OnPreferenceClickListener
            public boolean onPreferenceClick(Preference preference) {
                long t = System.currentTimeMillis() + 3600000;
                SettingsActivity.this.prefs.edit().putLong("dnd_end", t).commit();
                PreferenceCategory cat = (PreferenceCategory) SettingsActivity.this.findPreference("cat_notify");
                if (cat.findPreference("dnd_cancel") == null) {
                    cat.addPreference(SettingsActivity.this.cancelDndPref);
                }
                SettingsActivity.this.cancelDndPref.setSummary(SettingsActivity.this.getResources().getString(R.string.sett_dnd_desc, Global.langDateShort((int) (t / 1000))));
                cat.removePreference(SettingsActivity.this.dnd1Pref);
                cat.removePreference(SettingsActivity.this.dnd8Pref);
                return true;
            }
        });
        Preference pref8 = findPreference("dnd_8hours");
        this.dnd8Pref = pref8;
        pref8.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.vkontakte.android.SettingsActivity.7
            @Override // android.preference.Preference.OnPreferenceClickListener
            public boolean onPreferenceClick(Preference preference) {
                long t = System.currentTimeMillis() + 28800000;
                SettingsActivity.this.prefs.edit().putLong("dnd_end", t).commit();
                PreferenceCategory cat = (PreferenceCategory) SettingsActivity.this.findPreference("cat_notify");
                if (cat.findPreference("dnd_cancel") == null) {
                    cat.addPreference(SettingsActivity.this.cancelDndPref);
                }
                SettingsActivity.this.cancelDndPref.setSummary(SettingsActivity.this.getResources().getString(R.string.sett_dnd_desc, Global.langDateShort((int) (t / 1000))));
                cat.removePreference(SettingsActivity.this.dnd1Pref);
                cat.removePreference(SettingsActivity.this.dnd8Pref);
                return true;
            }
        });
        this.cancelDndPref.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.vkontakte.android.SettingsActivity.8
            @Override // android.preference.Preference.OnPreferenceClickListener
            public boolean onPreferenceClick(Preference preference) {
                SettingsActivity.this.prefs.edit().putLong("dnd_end", 0L).commit();
                PreferenceCategory cat = (PreferenceCategory) SettingsActivity.this.findPreference("cat_notify");
                cat.removePreference(SettingsActivity.this.cancelDndPref);
                cat.addPreference(SettingsActivity.this.dnd1Pref);
                cat.addPreference(SettingsActivity.this.dnd8Pref);
                return true;
            }
        });
        long t = this.prefs.getLong("dnd_end", 0L);
        if (t > System.currentTimeMillis()) {
            this.cancelDndPref.setSummary(getResources().getString(R.string.sett_dnd_desc, Global.langDateShort((int) (t / 1000))));
            ((PreferenceCategory) findPreference("cat_notify")).removePreference(this.dnd1Pref);
            ((PreferenceCategory) findPreference("cat_notify")).removePreference(this.dnd8Pref);
        } else {
            ((PreferenceCategory) findPreference("cat_notify")).removePreference(this.cancelDndPref);
        }
        getListView().setVerticalFadingEdgeEnabled(false);
        Global.setFontOnAll(findViewById(R.id.title_text_view));
    }

    private void updateSyncLabel(int syncSetting) {
        Preference pref = findPreference("sync");
        switch (syncSetting) {
            case -1:
                pref.setEnabled(false);
                pref.setSummary(R.string.sync_not_supported);
                return;
            case 0:
                pref.setSummary(R.string.sync_all);
                return;
            case 1:
                pref.setSummary(R.string.sync_existing);
                return;
            case 2:
                pref.setSummary(R.string.sync_off);
                return;
            default:
                return;
        }
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 203 && resultCode == -1) {
            updateSyncLabel(data.getIntExtra("option", 0));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void confirmLogout() {
        new AlertDialog.Builder(this).setMessage(R.string.log_out_warning).setTitle(R.string.log_out).setPositiveButton(R.string.yes, new DialogInterface.OnClickListener() { // from class: com.vkontakte.android.SettingsActivity.9
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                Global.longPoll.logOut(true);
                SettingsActivity.this.setResult(2);
                SettingsActivity.this.finish();
            }
        }).setNegativeButton(R.string.no, (DialogInterface.OnClickListener) null).setIcon(17301543).show();
    }

    /* loaded from: classes.dex */
    private class AdapterWrapper extends BaseAdapter {
        ListAdapter a;

        public AdapterWrapper(ListAdapter aa) {
            this.a = aa;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.a.getCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            return this.a.getItem(position);
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return this.a.getItemId(position);
        }

        @Override // android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            return this.a.getView(position, convertView, parent);
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int pos) {
            return this.a.isEnabled(pos);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return this.a.getViewTypeCount();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int pos) {
            return this.a.getItemViewType(pos);
        }
    }
}