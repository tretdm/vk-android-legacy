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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private detectFrontCamera()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 90
    const/4 v2, 0x0

    :cond_0
    return v2

    .line 86
    :cond_1
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 87
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 88
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eq v3, v2, :cond_0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private detectOpenGLES20()Z
    .locals 4

    .prologue
    .line 79
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/VKApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 80
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 81
    .local v1, "info":Landroid/content/pm/ConfigurationInfo;
    iget v2, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v3, 0x20000

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 13

    .prologue
    const/16 v12, 0xb

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 35
    :try_start_0
    invoke-static {p0}, Lorg/acra/ACRA;->init(Landroid/app/Application;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v7

    invoke-virtual {v7}, Lorg/acra/ErrorReporter;->checkReportsOnApplicationStart()V

    .line 41
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    const-string v10, "thumbs"

    invoke-direct {v5, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    .local v5, "thumbsDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 43
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 44
    .local v4, "thumbs":[Ljava/io/File;
    array-length v10, v4

    move v7, v9

    :goto_1
    if-lt v7, v10, :cond_7

    .line 46
    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    if-nez v7, :cond_6

    .line 47
    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    sput-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    .line 48
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xe

    if-ge v7, v10, :cond_8

    .line 49
    sget-object v7, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    if-nez v7, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v10, "fonts/Roboto-Regular.ttf"

    invoke-static {v7, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    sput-object v7, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    .line 50
    :cond_1
    sget-object v7, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    if-nez v7, :cond_2

    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v10, "fonts/Roboto-Bold.ttf"

    invoke-static {v7, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    sput-object v7, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    .line 55
    :cond_2
    :goto_2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v12, :cond_a

    move v7, v8

    :goto_3
    sput-boolean v7, Lcom/vkontakte/android/Global;->useBitmapHack:Z

    .line 57
    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 58
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0xf

    const/4 v10, 0x4

    if-ne v7, v10, :cond_b

    move v7, v8

    :goto_4
    sput-boolean v7, Lcom/vkontakte/android/Global;->isTablet:Z

    .line 59
    sget-boolean v7, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v7, :cond_4

    .line 60
    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 61
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0xf

    const/4 v10, 0x3

    if-eq v7, v10, :cond_c

    iget v7, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x3fa00000    # 1.25f

    cmpg-float v7, v7, v10

    if-gez v7, :cond_3

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v10, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/16 v10, 0x280

    if-gt v7, v10, :cond_c

    :cond_3
    move v7, v9

    :goto_5
    sput-boolean v7, Lcom/vkontakte/android/Global;->maybeTablet:Z

    .line 62
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 63
    .local v3, "prefs2":Landroid/content/SharedPreferences;
    const-string v7, "vk"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MT "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v11, Lcom/vkontakte/android/Global;->maybeTablet:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " pref "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "forceTabletUI"

    invoke-interface {v3, v11, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-boolean v7, Lcom/vkontakte/android/Global;->maybeTablet:Z

    if-eqz v7, :cond_4

    const-string v7, "forceTabletUI"

    invoke-interface {v3, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    sput-boolean v8, Lcom/vkontakte/android/Global;->isTablet:Z

    .line 66
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v3    # "prefs2":Landroid/content/SharedPreferences;
    :cond_4
    sget-boolean v7, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v7, :cond_5

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v12, :cond_5

    .line 67
    sput-boolean v9, Lcom/vkontakte/android/Global;->isTablet:Z

    .line 69
    :cond_5
    const-string v7, "time_diff"

    invoke-interface {v2, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/vkontakte/android/Global;->timeDiff:I

    .line 70
    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    sput v7, Lcom/vkontakte/android/Global;->displayDensity:F

    .line 71
    sget-object v7, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v10, 0x8

    if-lt v7, v10, :cond_d

    move v7, v8

    :goto_6
    sput-boolean v7, Lcom/vkontakte/android/Global;->supportsVoip:Z

    .line 72
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x9

    if-lt v7, v10, :cond_e

    invoke-direct {p0}, Lcom/vkontakte/android/VKApplication;->detectOpenGLES20()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-direct {p0}, Lcom/vkontakte/android/VKApplication;->detectFrontCamera()Z

    move-result v7

    if-eqz v7, :cond_e

    :goto_7
    sput-boolean v8, Lcom/vkontakte/android/Global;->supportsVoipVideo:Z

    .line 75
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_6
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 76
    return-void

    .line 36
    .end local v4    # "thumbs":[Ljava/io/File;
    .end local v5    # "thumbsDir":Ljava/io/File;
    :catch_0
    move-exception v6

    .line 37
    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    const-string v10, "OH SHIT, unable to init error reporting"

    invoke-static {v7, v10}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 44
    .end local v6    # "x":Ljava/lang/Exception;
    .restart local v4    # "thumbs":[Ljava/io/File;
    .restart local v5    # "thumbsDir":Ljava/io/File;
    :cond_7
    aget-object v1, v4, v7

    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 52
    .end local v1    # "file":Ljava/io/File;
    :cond_8
    sget-object v7, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    if-nez v7, :cond_9

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v7, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    .line 53
    :cond_9
    sget-object v7, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    if-nez v7, :cond_2

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sput-object v7, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    goto/16 :goto_2

    :cond_a
    move v7, v9

    .line 55
    goto/16 :goto_3

    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_b
    move v7, v9

    .line 58
    goto/16 :goto_4

    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    :cond_c
    move v7, v8

    .line 61
    goto/16 :goto_5

    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    :cond_d
    move v7, v9

    .line 71
    goto :goto_6

    :cond_e
    move v8, v9

    .line 72
    goto :goto_7
.end method
