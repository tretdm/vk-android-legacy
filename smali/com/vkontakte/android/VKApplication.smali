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
    .line 21
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 27
    invoke-static {p0}, Lorg/acra/ACRA;->init(Landroid/app/Application;)V

    .line 28
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ErrorReporter;->checkReportsOnApplicationStart()V

    .line 30
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    if-nez v1, :cond_2

    .line 31
    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    .line 32
    sget-object v1, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v4, "fonts/HelveticaLTStd-Roman.otf"

    invoke-static {v1, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    .line 33
    :cond_0
    sget-object v1, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v4, "fonts/MyriadPro-Bold.otf"

    invoke-static {v1, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    .line 34
    :cond_1
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v4, 0xb

    if-ge v1, v4, :cond_3

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/vkontakte/android/Global;->useBitmapHack:Z

    .line 36
    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v4, 0x4

    if-ne v1, v4, :cond_4

    :goto_1
    sput-boolean v2, Lcom/vkontakte/android/Global;->isTablet:Z

    .line 38
    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "time_diff"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/vkontakte/android/Global;->timeDiff:I

    .line 40
    invoke-virtual {p0}, Lcom/vkontakte/android/VKApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/vkontakte/android/Global;->displayDensity:F

    .line 43
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 44
    return-void

    :cond_3
    move v1, v3

    .line 34
    goto :goto_0

    :cond_4
    move v2, v3

    .line 36
    goto :goto_1
.end method
