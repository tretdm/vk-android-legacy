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
        .enum Lorg/acra/ReportField;->CRASH_CONFIGURATION:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->DISPLAY:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->BUILD:Lorg/acra/ReportField;
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
    .line 27
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private detectFrontCamera()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 82
    const/4 v2, 0x0

    :cond_0
    return v2

    .line 78
    :cond_1
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 79
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 80
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eq v3, v2, :cond_0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private detectOpenGLES20()Z
    .locals 4

    .prologue
    .line 71
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/VKApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 72
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 73
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
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 34
    :try_start_0
    invoke-static {p0}, Lorg/acra/ACRA;->init(Landroid/app/Application;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/acra/ErrorReporter;->checkReportsOnApplicationStart()V

    .line 40
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    if-nez v4, :cond_4

    .line 41
    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    .line 42
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-ge v4, v7, :cond_5

    .line 43
    sget-object v4, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v7, "fonts/Roboto-Regular.ttf"

    invoke-static {v4, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    .line 44
    :cond_0
    sget-object v4, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v7, "fonts/Roboto-Bold.ttf"

    invoke-static {v4, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    .line 49
    :cond_1
    :goto_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-ge v4, v7, :cond_7

    move v4, v5

    :goto_2
    sput-boolean v4, Lcom/vkontakte/android/Global;->useBitmapHack:Z

    .line 51
    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 52
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v7, 0x4

    if-ne v4, v7, :cond_8

    move v4, v5

    :goto_3
    sput-boolean v4, Lcom/vkontakte/android/Global;->isTablet:Z

    .line 53
    sget-boolean v4, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v4, :cond_3

    .line 54
    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 55
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v7, 0x3

    if-eq v4, v7, :cond_9

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x3fa00000    # 1.25f

    cmpg-float v4, v4, v7

    if-gez v4, :cond_2

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/16 v7, 0x280

    if-gt v4, v7, :cond_9

    :cond_2
    move v4, v6

    :goto_4
    sput-boolean v4, Lcom/vkontakte/android/Global;->maybeTablet:Z

    .line 56
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 57
    .local v2, "prefs2":Landroid/content/SharedPreferences;
    const-string v4, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "MT "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v8, Lcom/vkontakte/android/Global;->maybeTablet:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pref "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "forceTabletUI"

    invoke-interface {v2, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-boolean v4, Lcom/vkontakte/android/Global;->maybeTablet:Z

    if-eqz v4, :cond_3

    const-string v4, "forceTabletUI"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    sput-boolean v5, Lcom/vkontakte/android/Global;->isTablet:Z

    .line 61
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "prefs2":Landroid/content/SharedPreferences;
    :cond_3
    const-string v4, "time_diff"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/vkontakte/android/Global;->timeDiff:I

    .line 62
    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    sput v4, Lcom/vkontakte/android/Global;->displayDensity:F

    .line 63
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v7, 0x8

    if-lt v4, v7, :cond_a

    move v4, v5

    :goto_5
    sput-boolean v4, Lcom/vkontakte/android/Global;->supportsVoip:Z

    .line 64
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-lt v4, v7, :cond_b

    invoke-direct {p0}, Lcom/vkontakte/android/VKApplication;->detectOpenGLES20()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-direct {p0}, Lcom/vkontakte/android/VKApplication;->detectFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_6
    sput-boolean v5, Lcom/vkontakte/android/Global;->supportsVoipVideo:Z

    .line 67
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_4
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 68
    return-void

    .line 35
    :catch_0
    move-exception v3

    .line 36
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    const-string v7, "OH SHIT, unable to init error reporting"

    invoke-static {v4, v7}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 46
    .end local v3    # "x":Ljava/lang/Exception;
    :cond_5
    sget-object v4, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    if-nez v4, :cond_6

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v4, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    .line 47
    :cond_6
    sget-object v4, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    if-nez v4, :cond_1

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sput-object v4, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    goto/16 :goto_1

    :cond_7
    move v4, v6

    .line 49
    goto/16 :goto_2

    .restart local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_8
    move v4, v6

    .line 52
    goto/16 :goto_3

    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    :cond_9
    move v4, v5

    .line 55
    goto/16 :goto_4

    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    :cond_a
    move v4, v6

    .line 63
    goto :goto_5

    :cond_b
    move v5, v6

    .line 64
    goto :goto_6
.end method
