.class public Lcom/vkontakte/android/VKApplication;
.super Landroid/app/Application;
.source "VKApplication.java"


# annotations
.annotation runtime Lorg/acra/annotation/ReportsCrashes;
    customReportContent = {
        .enum Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->STACK_TRACE:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->APP_VERSION_CODE:Lorg/acra/ReportField;
    }
    formKey = ""
    formUri = "http://188.93.18.154/android/report.php"
.end annotation


# static fields
.field public static context:Landroid/content/Context;

.field public static deviceID:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vkontakte/android/VKApplication;->deviceID:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 19

    .prologue
    .line 39
    :try_start_0
    invoke-static/range {p0 .. p0}, Lorg/acra/ACRA;->init(Landroid/app/Application;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v15

    invoke-virtual {v15}, Lorg/acra/ErrorReporter;->checkReportsOnApplicationStart()V

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/VKApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 46
    .local v10, "prefs":Landroid/content/SharedPreferences;
    const-string v15, "notifyTypes"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v10, v15, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 47
    .local v5, "enabled":Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v15, "_games_notify_updated"

    invoke-interface {v10, v15}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 48
    const-string v15, ";"

    invoke-virtual {v5, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const-string v16, "games"

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 49
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v9, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v15, ";"

    invoke-virtual {v5, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    const-string v15, "games"

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    const-string v16, "notifyTypes"

    const-string v17, ";"

    move-object/from16 v0, v17

    invoke-static {v0, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    const-string v16, "_games_notify_updated"

    const/16 v17, 0x1

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 57
    .end local v9    # "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/VKApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "android_id"

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "aid":Ljava/lang/String;
    const/16 v15, 0x10

    invoke-static {v2, v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v15

    sput-wide v15, Lcom/vkontakte/android/VKApplication;->deviceID:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 61
    .end local v2    # "aid":Ljava/lang/String;
    :goto_1
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x13

    move/from16 v0, v16

    if-lt v15, v0, :cond_1

    .line 63
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/VKApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v16, v0

    and-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v16, :cond_1

    .line 64
    const/4 v15, 0x1

    invoke-static {v15}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 69
    :cond_1
    :goto_2
    new-instance v13, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/VKApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v15

    const-string v16, "thumbs"

    move-object/from16 v0, v16

    invoke-direct {v13, v15, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    .local v13, "thumbsDir":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_2

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 71
    :cond_2
    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .line 72
    .local v12, "thumbs":[Ljava/io/File;
    move-object v3, v12

    .local v3, "arr$":[Ljava/io/File;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_3
    if-ge v7, v8, :cond_3

    aget-object v6, v3, v7

    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 40
    .end local v3    # "arr$":[Ljava/io/File;
    .end local v5    # "enabled":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "prefs":Landroid/content/SharedPreferences;
    .end local v12    # "thumbs":[Ljava/io/File;
    .end local v13    # "thumbsDir":Ljava/io/File;
    :catch_0
    move-exception v14

    .line 41
    .local v14, "x":Ljava/lang/Exception;
    const-string v15, "vk"

    const-string v16, "OH SHIT, unable to init error reporting"

    invoke-static/range {v15 .. v16}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 74
    .end local v14    # "x":Ljava/lang/Exception;
    .restart local v3    # "arr$":[Ljava/io/File;
    .restart local v5    # "enabled":Ljava/lang/String;
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    .restart local v10    # "prefs":Landroid/content/SharedPreferences;
    .restart local v12    # "thumbs":[Ljava/io/File;
    .restart local v13    # "thumbsDir":Ljava/io/File;
    :cond_3
    sget-object v15, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    if-nez v15, :cond_9

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/VKApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    sput-object v15, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    .line 76
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0xe

    move/from16 v0, v16

    if-ge v15, v0, :cond_a

    .line 77
    sget-object v15, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    if-nez v15, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/VKApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v15

    const-string v16, "fonts/Roboto-Regular.ttf"

    invoke-static/range {v15 .. v16}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v15

    sput-object v15, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    .line 78
    :cond_4
    sget-object v15, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    if-nez v15, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/VKApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v15

    const-string v16, "fonts/Roboto-Bold.ttf"

    invoke-static/range {v15 .. v16}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v15

    sput-object v15, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    .line 83
    :cond_5
    :goto_4
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0xb

    move/from16 v0, v16

    if-ge v15, v0, :cond_c

    const/4 v15, 0x1

    :goto_5
    sput-boolean v15, Lcom/vkontakte/android/Global;->useBitmapHack:Z

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/VKApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/VKApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v15, v15, 0xf

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    const/4 v15, 0x1

    :goto_6
    sput-boolean v15, Lcom/vkontakte/android/Global;->isTablet:Z

    .line 87
    sget-boolean v15, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v15, :cond_7

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/VKApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 89
    .local v4, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/VKApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v15, v15, 0xf

    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    iget v15, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v16, 0x3fa00000    # 1.25f

    cmpg-float v15, v15, v16

    if-gez v15, :cond_e

    iget v15, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    const/16 v16, 0x280

    move/from16 v0, v16

    if-le v15, v0, :cond_e

    :cond_6
    const/4 v15, 0x1

    :goto_7
    sput-boolean v15, Lcom/vkontakte/android/Global;->maybeTablet:Z

    .line 90
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 91
    .local v11, "prefs2":Landroid/content/SharedPreferences;
    const-string v15, "vk"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "MT "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-boolean v17, Lcom/vkontakte/android/Global;->maybeTablet:Z

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " pref "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "forceTabletUI"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-boolean v15, Lcom/vkontakte/android/Global;->maybeTablet:Z

    if-eqz v15, :cond_7

    const-string v15, "forceTabletUI"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v11, v15, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v15, 0x1

    sput-boolean v15, Lcom/vkontakte/android/Global;->isTablet:Z

    .line 94
    .end local v4    # "dm":Landroid/util/DisplayMetrics;
    .end local v11    # "prefs2":Landroid/content/SharedPreferences;
    :cond_7
    sget-boolean v15, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v15, :cond_8

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0xb

    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    .line 95
    const/4 v15, 0x0

    sput-boolean v15, Lcom/vkontakte/android/Global;->isTablet:Z

    .line 97
    :cond_8
    const-string v15, "time_diff"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v10, v15, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    sput v15, Lcom/vkontakte/android/Global;->timeDiff:I

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/VKApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v15, v15, Landroid/util/DisplayMetrics;->density:F

    sput v15, Lcom/vkontakte/android/Global;->displayDensity:F

    .line 101
    :cond_9
    invoke-super/range {p0 .. p0}, Landroid/app/Application;->onCreate()V

    .line 102
    return-void

    .line 80
    :cond_a
    sget-object v15, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    if-nez v15, :cond_b

    sget-object v15, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v15, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    .line 81
    :cond_b
    sget-object v15, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    if-nez v15, :cond_5

    sget-object v15, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sput-object v15, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    goto/16 :goto_4

    .line 83
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 86
    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 89
    .restart local v4    # "dm":Landroid/util/DisplayMetrics;
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 66
    .end local v3    # "arr$":[Ljava/io/File;
    .end local v4    # "dm":Landroid/util/DisplayMetrics;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v12    # "thumbs":[Ljava/io/File;
    .end local v13    # "thumbsDir":Ljava/io/File;
    :catch_1
    move-exception v15

    goto/16 :goto_2

    .line 59
    :catch_2
    move-exception v15

    goto/16 :goto_1
.end method
