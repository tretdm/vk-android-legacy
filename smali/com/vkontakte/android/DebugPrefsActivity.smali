.class public Lcom/vkontakte/android/DebugPrefsActivity;
.super Landroid/preference/PreferenceActivity;
.source "DebugPrefsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/DebugPrefsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/DebugPrefsActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vkontakte/android/DebugPrefsActivity;->copyDatabases()V

    return-void
.end method

.method static synthetic access$100(Lcom/vkontakte/android/DebugPrefsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/DebugPrefsActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vkontakte/android/DebugPrefsActivity;->downloadMessages()V

    return-void
.end method

.method private copyDatabases()V
    .locals 21

    .prologue
    .line 128
    const-string v15, ""

    .line 130
    .local v15, "report":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v17, "qwe"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/DebugPrefsActivity;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v5, "dbDir":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v17

    const-string v18, ".vkontakte/cache_debug"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 132
    .local v12, "outDir":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 133
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 134
    .local v10, "list":[Ljava/io/File;
    move-object v2, v10

    .local v2, "arr$":[Ljava/io/File;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v6, v2, v7

    .line 135
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, ".db"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 134
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 136
    :cond_1
    new-instance v13, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v12, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    .local v13, "outFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    .line 138
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 139
    .local v11, "out":Ljava/io/FileOutputStream;
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 140
    .local v8, "in":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .local v4, "count":I
    const/4 v14, 0x0

    .line 141
    .local v14, "read":I
    const/16 v17, 0x2800

    move/from16 v0, v17

    new-array v3, v0, [B

    .line 142
    .local v3, "buf":[B
    :goto_2
    invoke-virtual {v8, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v14

    if-lez v14, :cond_3

    .line 143
    add-int/2addr v4, v14

    .line 144
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v3, v0, v14}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 150
    .end local v2    # "arr$":[Ljava/io/File;
    .end local v3    # "buf":[B
    .end local v4    # "count":I
    .end local v5    # "dbDir":Ljava/io/File;
    .end local v6    # "f":Ljava/io/File;
    .end local v7    # "i$":I
    .end local v8    # "in":Ljava/io/FileInputStream;
    .end local v9    # "len$":I
    .end local v10    # "list":[Ljava/io/File;
    .end local v11    # "out":Ljava/io/FileOutputStream;
    .end local v12    # "outDir":Ljava/io/File;
    .end local v13    # "outFile":Ljava/io/File;
    .end local v14    # "read":I
    :catch_0
    move-exception v16

    .local v16, "x":Ljava/lang/Exception;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 151
    .end local v16    # "x":Ljava/lang/Exception;
    :cond_2
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const-string v18, "ok"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 152
    return-void

    .line 146
    .restart local v2    # "arr$":[Ljava/io/File;
    .restart local v3    # "buf":[B
    .restart local v4    # "count":I
    .restart local v5    # "dbDir":Ljava/io/File;
    .restart local v6    # "f":Ljava/io/File;
    .restart local v7    # "i$":I
    .restart local v8    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "len$":I
    .restart local v10    # "list":[Ljava/io/File;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "outDir":Ljava/io/File;
    .restart local v13    # "outFile":Ljava/io/File;
    .restart local v14    # "read":I
    :cond_3
    :try_start_1
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 147
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 148
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " -> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    int-to-long v0, v4

    move-wide/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/DebugPrefsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lcom/vkontakte/android/Global;->langFileSize(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v15

    goto/16 :goto_1
.end method

.method private downloadMessages()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 156
    .local v0, "dlg":Landroid/app/ProgressDialog;
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 157
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 158
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 159
    const-string v1, "\u0421\u043a\u0430\u0447\u0438\u0432\u0430\u0435\u043c \u0438\u0441\u0442\u043e\u0440\u0438\u044e \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u0439..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 160
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 161
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/DebugPrefsActivity$7;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/DebugPrefsActivity$7;-><init>(Lcom/vkontakte/android/DebugPrefsActivity;Landroid/app/ProgressDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 214
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v1, 0x7f060005

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DebugPrefsActivity;->addPreferencesFromResource(I)V

    .line 34
    const-string v1, "terminate"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 35
    .local v0, "pref":Landroid/preference/Preference;
    new-instance v1, Lcom/vkontakte/android/DebugPrefsActivity$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/DebugPrefsActivity$1;-><init>(Lcom/vkontakte/android/DebugPrefsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 42
    const-string v1, "logToFile"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 43
    sget-object v1, Lcom/vkontakte/android/Log;->logFile:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 44
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 45
    const-string v1, "\u0423\u0436\u0435 \u0432\u043a\u043b\u044e\u0447\u0435\u043d\u043e"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 59
    :goto_0
    const-string v1, "bdayTest"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 60
    new-instance v1, Lcom/vkontakte/android/DebugPrefsActivity$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/DebugPrefsActivity$3;-><init>(Lcom/vkontakte/android/DebugPrefsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 83
    const-string v1, "validationTest"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/vkontakte/android/DebugPrefsActivity$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/DebugPrefsActivity$4;-><init>(Lcom/vkontakte/android/DebugPrefsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 103
    const-string v1, "copyDatabases"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/vkontakte/android/DebugPrefsActivity$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/DebugPrefsActivity$5;-><init>(Lcom/vkontakte/android/DebugPrefsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 112
    const-string v1, "downloadMessages"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 113
    new-instance v1, Lcom/vkontakte/android/DebugPrefsActivity$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/DebugPrefsActivity$6;-><init>(Lcom/vkontakte/android/DebugPrefsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 121
    const-string v1, "invis"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 122
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/vkontakte/android/DebugPrefsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "sinv"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/vkontakte/android/DebugPrefsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 125
    :cond_0
    return-void

    .line 47
    :cond_1
    new-instance v1, Lcom/vkontakte/android/DebugPrefsActivity$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/DebugPrefsActivity$2;-><init>(Lcom/vkontakte/android/DebugPrefsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 222
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 223
    invoke-static {}, Lcom/vkontakte/android/AppStateTracker;->onActivityPaused()V

    .line 224
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 217
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 218
    invoke-static {p0}, Lcom/vkontakte/android/AppStateTracker;->onActivityResumed(Landroid/app/Activity;)V

    .line 219
    return-void
.end method
