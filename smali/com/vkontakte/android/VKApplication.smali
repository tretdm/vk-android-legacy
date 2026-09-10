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
    .locals 14

    .prologue
    const/16 v13, 0xb

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 39
    :try_start_0
    invoke-static {p0}, Lorg/acra/ACRA;->init(Landroid/app/Application;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v8

    invoke-virtual {v8}, Lorg/acra/ErrorReporter;->checkReportsOnApplicationStart()V

    .line 46
    :try_start_1
    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "android_id"

    invoke-static {v8, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "aid":Ljava/lang/String;
    const/16 v8, 0x10

    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v11

    sput-wide v11, Lcom/vkontakte/android/VKApplication;->deviceID:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 50
    .end local v0    # "aid":Ljava/lang/String;
    :goto_1
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x13

    if-lt v8, v11, :cond_0

    .line 52
    :try_start_2
    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v11, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x2

    iput v11, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v11, :cond_0

    .line 53
    const/4 v8, 0x1

    invoke-static {v8}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 58
    :cond_0
    :goto_2
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    const-string v11, "thumbs"

    invoke-direct {v6, v8, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    .local v6, "thumbsDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 60
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 61
    .local v5, "thumbs":[Ljava/io/File;
    array-length v11, v5

    move v8, v10

    :goto_3
    if-lt v8, v11, :cond_8

    .line 63
    sget-object v8, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    if-nez v8, :cond_7

    .line 64
    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    sput-object v8, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    .line 65
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xe

    if-ge v8, v11, :cond_9

    .line 66
    sget-object v8, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v11, "fonts/Roboto-Regular.ttf"

    invoke-static {v8, v11}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    sput-object v8, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    .line 67
    :cond_2
    sget-object v8, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    if-nez v8, :cond_3

    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v11, "fonts/Roboto-Bold.ttf"

    invoke-static {v8, v11}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    sput-object v8, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    .line 72
    :cond_3
    :goto_4
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v13, :cond_b

    move v8, v9

    :goto_5
    sput-boolean v8, Lcom/vkontakte/android/Global;->useBitmapHack:Z

    .line 74
    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual {v8, v11, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 75
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v8, v8, 0xf

    const/4 v11, 0x4

    if-ne v8, v11, :cond_c

    move v8, v9

    :goto_6
    sput-boolean v8, Lcom/vkontakte/android/Global;->isTablet:Z

    .line 76
    sget-boolean v8, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v8, :cond_5

    .line 77
    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 78
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v8, v8, 0xf

    const/4 v11, 0x3

    if-eq v8, v11, :cond_d

    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v11, 0x3fa00000    # 1.25f

    cmpg-float v8, v8, v11

    if-gez v8, :cond_4

    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v11, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/16 v11, 0x280

    if-gt v8, v11, :cond_d

    :cond_4
    move v8, v10

    :goto_7
    sput-boolean v8, Lcom/vkontakte/android/Global;->maybeTablet:Z

    .line 79
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 80
    .local v4, "prefs2":Landroid/content/SharedPreferences;
    const-string v8, "vk"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "MT "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v12, Lcom/vkontakte/android/Global;->maybeTablet:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " pref "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "forceTabletUI"

    invoke-interface {v4, v12, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-boolean v8, Lcom/vkontakte/android/Global;->maybeTablet:Z

    if-eqz v8, :cond_5

    const-string v8, "forceTabletUI"

    invoke-interface {v4, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    sput-boolean v9, Lcom/vkontakte/android/Global;->isTablet:Z

    .line 83
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v4    # "prefs2":Landroid/content/SharedPreferences;
    :cond_5
    sget-boolean v8, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v8, :cond_6

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v13, :cond_6

    .line 84
    sput-boolean v10, Lcom/vkontakte/android/Global;->isTablet:Z

    .line 86
    :cond_6
    const-string v8, "time_diff"

    invoke-interface {v3, v8, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/vkontakte/android/Global;->timeDiff:I

    .line 87
    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    sput v8, Lcom/vkontakte/android/Global;->displayDensity:F

    .line 90
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_7
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 91
    return-void

    .line 40
    .end local v5    # "thumbs":[Ljava/io/File;
    .end local v6    # "thumbsDir":Ljava/io/File;
    :catch_0
    move-exception v7

    .line 41
    .local v7, "x":Ljava/lang/Exception;
    const-string v8, "vk"

    const-string v11, "OH SHIT, unable to init error reporting"

    invoke-static {v8, v11}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 61
    .end local v7    # "x":Ljava/lang/Exception;
    .restart local v5    # "thumbs":[Ljava/io/File;
    .restart local v6    # "thumbsDir":Ljava/io/File;
    :cond_8
    aget-object v2, v5, v8

    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 69
    .end local v2    # "file":Ljava/io/File;
    :cond_9
    sget-object v8, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    if-nez v8, :cond_a

    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v8, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    .line 70
    :cond_a
    sget-object v8, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    if-nez v8, :cond_3

    sget-object v8, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sput-object v8, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    goto/16 :goto_4

    :cond_b
    move v8, v10

    .line 72
    goto/16 :goto_5

    .restart local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_c
    move v8, v10

    .line 75
    goto/16 :goto_6

    .restart local v1    # "dm":Landroid/util/DisplayMetrics;
    :cond_d
    move v8, v9

    .line 78
    goto/16 :goto_7

    .line 55
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    .end local v5    # "thumbs":[Ljava/io/File;
    .end local v6    # "thumbsDir":Ljava/io/File;
    :catch_1
    move-exception v8

    goto/16 :goto_2

    .line 48
    :catch_2
    move-exception v8

    goto/16 :goto_1
.end method
