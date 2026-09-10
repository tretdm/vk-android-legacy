.class public Lcom/vkontakte/android/DebugPrefsActivity;
.super Landroid/preference/PreferenceActivity;
.source "DebugPrefsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/DebugPrefsActivity;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/vkontakte/android/DebugPrefsActivity;->copyDatabases()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/DebugPrefsActivity;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/vkontakte/android/DebugPrefsActivity;->downloadMessages()V

    return-void
.end method

.method private copyDatabases()V
    .locals 20

    .prologue
    .line 127
    const-string v12, ""

    .line 129
    .local v12, "report":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v14, "qwe"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/DebugPrefsActivity;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v4, "dbDir":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    const-string v15, ".vkontakte/cache_debug"

    invoke-direct {v9, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    .local v9, "outDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 132
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 133
    .local v7, "list":[Ljava/io/File;
    array-length v15, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v14, 0x0

    :goto_0
    if-lt v14, v15, :cond_1

    .line 150
    .end local v4    # "dbDir":Ljava/io/File;
    .end local v7    # "list":[Ljava/io/File;
    .end local v9    # "outDir":Ljava/io/File;
    :goto_1
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const-string v15, "ok"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 151
    return-void

    .line 133
    .restart local v4    # "dbDir":Ljava/io/File;
    .restart local v7    # "list":[Ljava/io/File;
    .restart local v9    # "outDir":Ljava/io/File;
    :cond_1
    :try_start_1
    aget-object v5, v7, v14

    .line 134
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    const-string v17, ".db"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 133
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 135
    :cond_2
    new-instance v10, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v10, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 136
    .local v10, "outFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    .line 137
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 138
    .local v8, "out":Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 139
    .local v6, "in":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .local v3, "count":I
    const/4 v11, 0x0

    .line 140
    .local v11, "read":I
    const/16 v16, 0x2800

    move/from16 v0, v16

    new-array v2, v0, [B

    .line 141
    .local v2, "buf":[B
    :goto_3
    invoke-virtual {v6, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v11

    if-gtz v11, :cond_3

    .line 145
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 146
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 147
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " -> "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    int-to-long v0, v3

    move-wide/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/DebugPrefsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/vkontakte/android/Global;->langFileSize(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 142
    :cond_3
    add-int/2addr v3, v11

    .line 143
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v2, v0, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 149
    .end local v2    # "buf":[B
    .end local v3    # "count":I
    .end local v4    # "dbDir":Ljava/io/File;
    .end local v5    # "f":Ljava/io/File;
    .end local v6    # "in":Ljava/io/FileInputStream;
    .end local v7    # "list":[Ljava/io/File;
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .end local v9    # "outDir":Ljava/io/File;
    .end local v10    # "outFile":Ljava/io/File;
    .end local v11    # "read":I
    :catch_0
    move-exception v13

    .local v13, "x":Ljava/lang/Exception;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1
.end method

.method private downloadMessages()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 155
    .local v0, "dlg":Landroid/app/ProgressDialog;
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 156
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 157
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 158
    const-string v1, "\u0421\u043a\u0430\u0447\u0438\u0432\u0430\u0435\u043c \u0438\u0441\u0442\u043e\u0440\u0438\u044e \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u0439..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 160
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/DebugPrefsActivity$7;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/DebugPrefsActivity$7;-><init>(Lcom/vkontakte/android/DebugPrefsActivity;Landroid/app/ProgressDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 212
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 213
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 30
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v1, 0x7f050005

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DebugPrefsActivity;->addPreferencesFromResource(I)V

    .line 33
    const-string v1, "terminate"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 34
    .local v0, "pref":Landroid/preference/Preference;
    new-instance v1, Lcom/vkontakte/android/DebugPrefsActivity$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/DebugPrefsActivity$1;-><init>(Lcom/vkontakte/android/DebugPrefsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 41
    const-string v1, "logToFile"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 42
    sget-object v1, Lcom/vkontakte/android/Log;->logFile:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 43
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 44
    const-string v1, "\u0423\u0436\u0435 \u0432\u043a\u043b\u044e\u0447\u0435\u043d\u043e"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 58
    :goto_0
    const-string v1, "bdayTest"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/vkontakte/android/DebugPrefsActivity$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/DebugPrefsActivity$3;-><init>(Lcom/vkontakte/android/DebugPrefsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 82
    const-string v1, "validationTest"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 83
    new-instance v1, Lcom/vkontakte/android/DebugPrefsActivity$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/DebugPrefsActivity$4;-><init>(Lcom/vkontakte/android/DebugPrefsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 102
    const-string v1, "copyDatabases"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 103
    new-instance v1, Lcom/vkontakte/android/DebugPrefsActivity$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/DebugPrefsActivity$5;-><init>(Lcom/vkontakte/android/DebugPrefsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 111
    const-string v1, "downloadMessages"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 112
    new-instance v1, Lcom/vkontakte/android/DebugPrefsActivity$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/DebugPrefsActivity$6;-><init>(Lcom/vkontakte/android/DebugPrefsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 120
    const-string v1, "invis"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 121
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/vkontakte/android/DebugPrefsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "sinv"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/vkontakte/android/DebugPrefsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 124
    :cond_0
    return-void

    .line 46
    :cond_1
    new-instance v1, Lcom/vkontakte/android/DebugPrefsActivity$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/DebugPrefsActivity$2;-><init>(Lcom/vkontakte/android/DebugPrefsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method
