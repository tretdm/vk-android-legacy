.class public Lcom/vkontakte/android/MainActivity;
.super Landroid/app/ActivityGroup;
.source "MainActivity.java"


# static fields
.field public static final FS_FIRSTNAME:I = 0x0

.field public static final FS_HINTS:I = 0x2

.field public static final FS_LASTNAME:I = 0x1

.field private static final SETTINGS_REQUEST_CODE:I = 0x67

.field public static _isActive:Z

.field private static firstRun:Z

.field public static friendListSort:I

.field private static inited:Z

.field public static isActive:Z

.field public static lastInstance:Lcom/vkontakte/android/MainActivity;

.field public static loadImages:Z

.field private static netStateReceiver:Lcom/vkontakte/android/NetworkStateReceiver;

.field public static notifyLED:Z

.field public static notifySound:Z

.field public static notifyVibration:Z

.field public static showBack:Z

.field public static updateInterval:I

.field public static useHTTPS:Z


# instance fields
.field backAllowed:Z

.field backp:Z

.field cl:Lcom/vkontakte/android/CallStateListener;

.field inSettings:Z

.field private menuOverlay:Lcom/vkontakte/android/ui/MenuOverlayView;

.field private prevC2DM:Z

.field progrDlg:Landroid/app/ProgressDialog;

.field slidingPlayerView:Landroid/view/View;

.field tabbar:Lcom/vkontakte/android/ExtendedTabBar;

.field tabviews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 64
    sput-boolean v1, Lcom/vkontakte/android/MainActivity;->showBack:Z

    .line 65
    const/4 v0, 0x2

    sput v0, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    const v0, 0x2bf20

    sput v0, Lcom/vkontakte/android/MainActivity;->updateInterval:I

    .line 66
    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->loadImages:Z

    .line 67
    sput-boolean v1, Lcom/vkontakte/android/MainActivity;->useHTTPS:Z

    .line 68
    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->notifySound:Z

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->notifyVibration:Z

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->notifyLED:Z

    .line 70
    sput-object v3, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    .line 71
    sput-boolean v1, Lcom/vkontakte/android/MainActivity;->inited:Z

    .line 75
    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->firstRun:Z

    .line 77
    sput-boolean v1, Lcom/vkontakte/android/MainActivity;->isActive:Z

    sput-boolean v1, Lcom/vkontakte/android/MainActivity;->_isActive:Z

    .line 88
    sput-object v3, Lcom/vkontakte/android/MainActivity;->netStateReceiver:Lcom/vkontakte/android/NetworkStateReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 58
    iput-boolean v1, p0, Lcom/vkontakte/android/MainActivity;->backp:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/MainActivity;->inSettings:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/MainActivity;->backAllowed:Z

    .line 72
    iput-boolean v1, p0, Lcom/vkontakte/android/MainActivity;->prevC2DM:Z

    .line 83
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MainActivity;->tabviews:Ljava/util/Vector;

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/MainActivity;)Lcom/vkontakte/android/ui/MenuOverlayView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->menuOverlay:Lcom/vkontakte/android/ui/MenuOverlayView;

    return-object v0
.end method

.method private checkUserInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 288
    sget-boolean v4, Lcom/vkontakte/android/MainActivity;->inited:Z

    if-nez v4, :cond_2

    .line 292
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 293
    .local v3, "prefs1":Landroid/content/SharedPreferences;
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x8

    if-lt v4, v5, :cond_0

    const-string v4, "enableC2DM"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 294
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "enableC2DM"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 295
    invoke-static {}, Lcom/vkontakte/android/C2DM;->start()V

    .line 297
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/vkontakte/android/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 298
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "username"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 299
    sput-boolean v6, Lcom/vkontakte/android/NetworkStateReceiver;->userInfoUpdated:Z

    .line 300
    new-instance v4, Lcom/vkontakte/android/api/GetWallInfo;

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    invoke-direct {v4, v5}, Lcom/vkontakte/android/api/GetWallInfo;-><init>(I)V

    .line 301
    new-instance v5, Lcom/vkontakte/android/MainActivity$4;

    invoke-direct {v5, p0, v2}, Lcom/vkontakte/android/MainActivity$4;-><init>(Lcom/vkontakte/android/MainActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/api/GetWallInfo;->setCallback(Lcom/vkontakte/android/api/GetWallInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 340
    invoke-virtual {v4, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 341
    invoke-virtual {v4, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 358
    :cond_1
    :goto_0
    sput-boolean v6, Lcom/vkontakte/android/MainActivity;->inited:Z

    .line 360
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .end local v3    # "prefs1":Landroid/content/SharedPreferences;
    :cond_2
    return-void

    .line 349
    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    .restart local v3    # "prefs1":Landroid/content/SharedPreferences;
    :cond_3
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 350
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 351
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 353
    sput-boolean v6, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected:Z

    .line 354
    invoke-static {p0}, Lcom/vkontakte/android/NetworkStateReceiver;->updateInfo(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static showAbout(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 439
    :try_start_0
    new-instance v2, Lcom/vkontakte/android/MainActivity$5;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/MainActivity$5;-><init>(Landroid/content/Context;)V

    .line 448
    .local v2, "igetter":Landroid/text/Html$ImageGetter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 449
    .local v1, "dlg":Landroid/app/AlertDialog$Builder;
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    .line 450
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "dlg":Landroid/app/AlertDialog$Builder;
    check-cast v1, Landroid/app/AlertDialog$Builder;

    .line 451
    .restart local v1    # "dlg":Landroid/app/AlertDialog$Builder;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 452
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<img src=\'1\'/><br/>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09001e

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 453
    const-string v3, "OK"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 454
    const v3, 0x108009b

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 455
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 456
    .local v0, "d":Landroid/app/AlertDialog;
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, -0x602404

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 457
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, -0x7f602404

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 458
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 459
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .end local v0    # "d":Landroid/app/AlertDialog;
    .end local v1    # "dlg":Landroid/app/AlertDialog$Builder;
    .end local v2    # "igetter":Landroid/text/Html$ImageGetter;
    :goto_0
    return-void

    .line 461
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public exitApp()V
    .locals 2

    .prologue
    .line 475
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/LongPollService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MainActivity;->stopService(Landroid/content/Intent;)Z

    .line 476
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->finish()V

    .line 477
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 478
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/MainActivity$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MainActivity$6;-><init>(Lcom/vkontakte/android/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 485
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 486
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0x68

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 382
    const/16 v2, 0x64

    if-ne p1, v2, :cond_0

    .line 383
    if-ne p2, v8, :cond_6

    .line 385
    sget-object v2, Lcom/vkontakte/android/NewsfeedActivity;->sharedInstance:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/NewsfeedActivity;->loadData()V

    .line 386
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v2

    const-string v3, "vk_uid"

    new-instance v4, Ljava/lang/StringBuilder;

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 387
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v9, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 389
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "new_user"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-ne v2, v3, :cond_5

    .line 390
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "new_user"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 391
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/vkontakte/android/SuggestFriendsActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x68

    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :goto_0
    invoke-static {p0}, Lcom/vkontakte/android/NetworkStateReceiver;->updateInfo(Landroid/content/Context;)V

    .line 398
    iget-object v2, p0, Lcom/vkontakte/android/MainActivity;->menuOverlay:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->updateInfo()V

    .line 399
    const-string v2, "enableC2DM"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/vkontakte/android/C2DM;->start()V

    .line 404
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    :goto_1
    const/16 v2, 0x65

    if-ne p1, v2, :cond_1

    .line 405
    if-ne p2, v8, :cond_1

    .line 406
    sput-boolean v7, Lcom/vkontakte/android/Global;->authOK:Z

    .line 409
    :cond_1
    if-ne p1, v10, :cond_2

    .line 410
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_7

    .line 411
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/WelcomeActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 412
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "syncsettings"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const/16 v2, 0x69

    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 418
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_2
    const/16 v2, 0x69

    if-ne p1, v2, :cond_3

    .line 419
    iget-object v2, p0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-virtual {v2, v7, v6}, Lcom/vkontakte/android/ExtendedTabBar;->setCurrentTab(IZ)V

    .line 421
    :cond_3
    const/16 v2, 0x67

    if-ne p1, v2, :cond_4

    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    .line 422
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->finish()V

    .line 423
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/MainActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 424
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 426
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    return-void

    .line 392
    .restart local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_5
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "welcome_screen_shown"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 396
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 401
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_6
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->exitApp()V

    goto :goto_1

    .line 415
    :cond_7
    iget-object v2, p0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-virtual {v2, v7, v6}, Lcom/vkontakte/android/ExtendedTabBar;->setCurrentTab(IZ)V

    goto :goto_2
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 93
    .local v0, "window":Landroid/view/Window;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 94
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 30
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    sput-object p0, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    .line 103
    invoke-super/range {p0 .. p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sput-object v6, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    sput v6, Lcom/vkontakte/android/Global;->displayDensity:F

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 108
    .local v22, "prefs":Landroid/content/SharedPreferences;
    const/4 v6, 0x0

    sput-boolean v6, Lcom/vkontakte/android/MainActivity;->showBack:Z

    .line 109
    const-string v6, "loadImages"

    const/4 v7, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/vkontakte/android/MainActivity;->loadImages:Z

    .line 110
    const-string v6, "useHTTPS"

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/vkontakte/android/MainActivity;->useHTTPS:Z

    .line 111
    const-string v6, "notifySound"

    const/4 v7, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/vkontakte/android/MainActivity;->notifySound:Z

    .line 112
    const-string v6, "notifyVibrate"

    const/4 v7, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/vkontakte/android/MainActivity;->notifyVibration:Z

    .line 113
    const-string v6, "notifyLED"

    const/4 v7, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/vkontakte/android/MainActivity;->notifyLED:Z

    .line 114
    const-string v6, "login"

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "sig"

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 115
    :cond_0
    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "login"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "sig"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 118
    :cond_1
    :try_start_0
    const-string v6, "notifyRingtone"

    sget-object v7, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sput-object v6, Lcom/vkontakte/android/Global;->prefNotifyRingtone:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 120
    :goto_0
    const-string v6, "friendsOrder"

    const-string v7, "hints"

    move-object/from16 v0, v22

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 121
    .local v16, "fs":Ljava/lang/String;
    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sort="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v6, "hints"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x2

    sput v6, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    .line 125
    :goto_1
    const-string v6, "updateInterval"

    const-string v7, "180000"

    move-object/from16 v0, v22

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/vkontakte/android/MainActivity;->updateInterval:I

    .line 126
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/vkontakte/android/MainActivity;->requestWindowFeature(I)Z

    .line 128
    new-instance v6, Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/vkontakte/android/ExtendedTabBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    .line 131
    new-instance v6, Lcom/vkontakte/android/ui/MenuOverlayView;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/vkontakte/android/ui/MenuOverlayView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/vkontakte/android/MainActivity;->menuOverlay:Lcom/vkontakte/android/ui/MenuOverlayView;

    .line 132
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/MainActivity;->menuOverlay:Lcom/vkontakte/android/ui/MenuOverlayView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/MenuOverlayView;->addView(Landroid/view/View;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/MainActivity;->menuOverlay:Lcom/vkontakte/android/ui/MenuOverlayView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/vkontakte/android/MainActivity;->setContentView(Landroid/view/View;)V

    .line 135
    new-instance v20, Landroid/util/DisplayMetrics;

    invoke-direct/range {v20 .. v20}, Landroid/util/DisplayMetrics;-><init>()V

    .line 136
    .local v20, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    const v7, 0x7f090048

    const v8, 0x7f020256

    const-class v9, Lcom/vkontakte/android/NewsfeedActivity;

    invoke-virtual {v6, v7, v8, v9}, Lcom/vkontakte/android/ExtendedTabBar;->addTab(IILjava/lang/Class;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    const v7, 0x7f09004a

    const v8, 0x7f020253

    const-class v9, Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v6, v7, v8, v9}, Lcom/vkontakte/android/ExtendedTabBar;->addTab(IILjava/lang/Class;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    const v7, 0x7f090049

    const v8, 0x7f02025c

    const-class v9, Lcom/vkontakte/android/WallActivity;

    invoke-virtual {v6, v7, v8, v9}, Lcom/vkontakte/android/ExtendedTabBar;->addTab(IILjava/lang/Class;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    const v7, 0x7f09004b

    const v8, 0x7f02024d

    const-class v9, Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v6, v7, v8, v9}, Lcom/vkontakte/android/ExtendedTabBar;->addTab(IILjava/lang/Class;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    const v7, 0x7f09004c

    const v8, 0x7f020250

    const-class v9, Lcom/vkontakte/android/FriendsActivity;

    invoke-virtual {v6, v7, v8, v9}, Lcom/vkontakte/android/ExtendedTabBar;->addTab(IILjava/lang/Class;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ExtendedTabBar;->setDraggingEnabled(Z)V

    .line 146
    sget-object v6, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    if-eqz v6, :cond_2

    .line 147
    const/4 v6, 0x1

    sget v7, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/vkontakte/android/MainActivity;->setTabBadge(II)V

    .line 148
    const/4 v6, 0x4

    sget v7, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/vkontakte/android/MainActivity;->setTabBadge(II)V

    .line 151
    :cond_2
    sget-boolean v6, Lcom/vkontakte/android/Global;->inited:Z

    if-nez v6, :cond_c

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 153
    const-string v6, "sid"

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "uid"

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "uid"

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_b

    .line 154
    const-string v6, "uid"

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/vkontakte/android/Global;->uid:I

    .line 155
    const-string v6, "sid"

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 156
    const-string v6, "secret"

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 157
    sget-object v6, Lcom/vkontakte/android/NewsfeedActivity;->sharedInstance:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-virtual {v6}, Lcom/vkontakte/android/NewsfeedActivity;->loadData()V

    .line 158
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v6

    const-string v7, "vk_uid"

    new-instance v8, Ljava/lang/StringBuilder;

    sget v9, Lcom/vkontakte/android/Global;->uid:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "welcome_screen_shown"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-boolean v6, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v6, :cond_3

    .line 161
    new-instance v18, Landroid/content/Intent;

    const-class v6, Lcom/vkontakte/android/WelcomeActivity;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .local v18, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 165
    .end local v18    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->checkUserInfo()V

    .line 177
    :cond_4
    :goto_3
    const-string v6, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/vkontakte/android/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/ConnectivityManager;

    .line 178
    .local v14, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v14}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v17

    .line 179
    .local v17, "info":Landroid/net/NetworkInfo;
    if-eqz v17, :cond_6

    .line 180
    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v27

    .line 181
    .local v27, "type":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 182
    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mobile"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "bigImagesMobile"

    const/4 v7, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "EDGE"

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "GPRS"

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 183
    :cond_5
    const/4 v6, 0x1

    sput-boolean v6, Lcom/vkontakte/android/NetworkStateReceiver;->disableBigImages:Z

    .line 184
    const-string v6, "vk"

    const-string v7, "Big images disabled!!"

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .end local v27    # "type":Ljava/lang/String;
    :cond_6
    const/4 v6, 0x1

    sput-boolean v6, Lcom/vkontakte/android/Global;->inited:Z

    .line 196
    const v6, 0x7f030044

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/vkontakte/android/MainActivity;->slidingPlayerView:Landroid/view/View;

    .line 197
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/MainActivity;->slidingPlayerView:Landroid/view/View;

    invoke-static {v6}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    new-instance v7, Lcom/vkontakte/android/MainActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/vkontakte/android/MainActivity$1;-><init>(Lcom/vkontakte/android/MainActivity;)V

    .line 208
    const-wide/16 v8, 0xc8

    .line 199
    invoke-virtual {v6, v7, v8, v9}, Lcom/vkontakte/android/ExtendedTabBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 211
    new-instance v12, Landroid/content/Intent;

    const-class v6, Lcom/vkontakte/android/BirthdayBroadcastReceiver;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    .local v12, "bdIntent":Landroid/content/Intent;
    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    move-object/from16 v0, p0

    invoke-static {v0, v6, v12, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 213
    .local v11, "pbIntent":Landroid/app/PendingIntent;
    const-string v6, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/vkontakte/android/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    .line 214
    .local v5, "as":Landroid/app/AlarmManager;
    const-string v6, "notifyBDays"

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 215
    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/32 v28, 0x5265c00

    rem-long v9, v9, v28

    sub-long/2addr v7, v9

    const-wide/32 v9, 0x5265c00

    add-long/2addr v7, v9

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v9

    int-to-long v9, v9

    sub-long/2addr v7, v9

    const-wide/32 v9, 0x5265c00

    invoke-virtual/range {v5 .. v11}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 219
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "tab"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "tab"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 221
    .local v25, "tab":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    const/4 v7, 0x0

    move/from16 v0, v25

    invoke-virtual {v6, v0, v7}, Lcom/vkontakte/android/ExtendedTabBar;->setCurrentTab(IZ)V

    .line 224
    .end local v25    # "tab":I
    :cond_7
    sget-boolean v6, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v6, :cond_e

    .line 225
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/vkontakte/android/TabletMainActivity;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/vkontakte/android/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->finish()V

    .line 285
    :cond_8
    :goto_5
    return-void

    .line 123
    .end local v5    # "as":Landroid/app/AlarmManager;
    .end local v11    # "pbIntent":Landroid/app/PendingIntent;
    .end local v12    # "bdIntent":Landroid/content/Intent;
    .end local v14    # "cm":Landroid/net/ConnectivityManager;
    .end local v17    # "info":Landroid/net/NetworkInfo;
    .end local v20    # "metrics":Landroid/util/DisplayMetrics;
    :cond_9
    const-string v6, "lastname"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    sput v6, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    goto/16 :goto_1

    .line 124
    :cond_a
    const/4 v6, 0x0

    sput v6, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    goto/16 :goto_1

    .line 167
    .restart local v20    # "metrics":Landroid/util/DisplayMetrics;
    :cond_b
    sget-boolean v6, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v6, :cond_4

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/vkontakte/android/AuthActivity;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v7, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/vkontakte/android/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 173
    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-virtual {v6}, Lcom/vkontakte/android/ExtendedTabBar;->getTabsView()Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 174
    sget-object v6, Lcom/vkontakte/android/NewsfeedActivity;->sharedInstance:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-virtual {v6}, Lcom/vkontakte/android/NewsfeedActivity;->loadData()V

    goto/16 :goto_3

    .line 217
    .restart local v5    # "as":Landroid/app/AlarmManager;
    .restart local v11    # "pbIntent":Landroid/app/PendingIntent;
    .restart local v12    # "bdIntent":Landroid/content/Intent;
    .restart local v14    # "cm":Landroid/net/ConnectivityManager;
    .restart local v17    # "info":Landroid/net/NetworkInfo;
    :cond_d
    invoke-virtual {v5, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_4

    .line 230
    :cond_e
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-lt v6, v7, :cond_8

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 232
    const-string v6, "dont_show_destroy_acts"

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 234
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "always_finish_activities"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v23

    .line 235
    .local v23, "s":I
    const/4 v6, 0x1

    move/from16 v0, v23

    if-ne v0, v6, :cond_8

    .line 236
    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 237
    .local v19, "ll":Landroid/widget/LinearLayout;
    const/4 v6, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 238
    new-instance v26, Landroid/widget/TextView;

    const/4 v6, 0x0

    const v7, 0x1030048

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 239
    .local v26, "tv":Landroid/widget/TextView;
    const v6, 0x7f0901dc

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 240
    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    .line 241
    .local v21, "padding":I
    move-object/from16 v0, v26

    move/from16 v1, v21

    move/from16 v2, v21

    move/from16 v3, v21

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 242
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 243
    new-instance v13, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 244
    .local v13, "cb":Landroid/widget/CheckBox;
    const v6, 0x7f0901df

    invoke-virtual {v13, v6}, Landroid/widget/CheckBox;->setText(I)V

    .line 245
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 246
    const/4 v6, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v21

    move/from16 v3, v21

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 247
    new-instance v24, Landroid/widget/ScrollView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 248
    .local v24, "sv":Landroid/widget/ScrollView;
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 249
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 250
    const v7, 0x7f0901de

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 251
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 252
    const v7, 0x1080027

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 253
    const v7, 0x7f0901dd

    new-instance v8, Lcom/vkontakte/android/MainActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/vkontakte/android/MainActivity$2;-><init>(Lcom/vkontakte/android/MainActivity;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 259
    const v7, 0x7f090111

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 260
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v15

    .line 261
    .local v15, "dlg":Landroid/app/AlertDialog;
    new-instance v6, Lcom/vkontakte/android/MainActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v13}, Lcom/vkontakte/android/MainActivity$3;-><init>(Lcom/vkontakte/android/MainActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v15, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    .line 271
    .end local v13    # "cb":Landroid/widget/CheckBox;
    .end local v15    # "dlg":Landroid/app/AlertDialog;
    .end local v19    # "ll":Landroid/widget/LinearLayout;
    .end local v21    # "padding":I
    .end local v23    # "s":I
    .end local v24    # "sv":Landroid/widget/ScrollView;
    .end local v26    # "tv":Landroid/widget/TextView;
    :catch_0
    move-exception v6

    goto/16 :goto_5

    .line 164
    .end local v5    # "as":Landroid/app/AlarmManager;
    .end local v11    # "pbIntent":Landroid/app/PendingIntent;
    .end local v12    # "bdIntent":Landroid/content/Intent;
    .end local v14    # "cm":Landroid/net/ConnectivityManager;
    .end local v17    # "info":Landroid/net/NetworkInfo;
    :catch_1
    move-exception v6

    goto/16 :goto_2

    .line 119
    .end local v16    # "fs":Ljava/lang/String;
    .end local v20    # "metrics":Landroid/util/DisplayMetrics;
    :catch_2
    move-exception v6

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    .line 490
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/vkontakte/android/AudioListActivity;

    if-eqz v2, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 492
    .local v1, "r":Z
    if-eqz v1, :cond_0

    .line 496
    .end local v1    # "r":Z
    :goto_0
    return v3

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 495
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f0b0002

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 429
    const-string v0, "vk"

    const-string v1, "Main activity destroy"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    sget-object v0, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    .line 434
    :cond_0
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 435
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 501
    const/4 v0, 0x0

    .line 502
    .local v0, "handled":Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 516
    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/vkontakte/android/AudioListActivity;

    if-eqz v2, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 518
    .local v1, "r":Z
    if-eqz v1, :cond_0

    .line 520
    .end local v1    # "r":Z
    :cond_0
    return v3

    .line 504
    :pswitch_0
    const/4 v0, 0x1

    .line 505
    invoke-static {p0}, Lcom/vkontakte/android/MainActivity;->showAbout(Landroid/content/Context;)V

    goto :goto_0

    .line 508
    :pswitch_1
    const/4 v0, 0x1

    .line 509
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->exitApp()V

    goto :goto_0

    .line 512
    :pswitch_2
    const/4 v0, 0x1

    .line 513
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->showSettings()V

    goto :goto_0

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x7f06019b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 530
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 531
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/MainActivity;->_isActive:Z

    .line 532
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    new-instance v1, Lcom/vkontakte/android/MainActivity$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MainActivity$7;-><init>(Lcom/vkontakte/android/MainActivity;)V

    .line 534
    const-wide/16 v2, 0x1f4

    .line 532
    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ExtendedTabBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 535
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/AudioListActivity;

    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 526
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 18

    .prologue
    .line 538
    invoke-super/range {p0 .. p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 539
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vkontakte/android/MainActivity;->backAllowed:Z

    .line 540
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->isActive:Z

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->_isActive:Z

    .line 542
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkontakte/android/MainActivity;->inSettings:Z

    if-eqz v2, :cond_3

    .line 543
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vkontakte/android/MainActivity;->inSettings:Z

    .line 544
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 545
    .local v14, "prefs":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->showBack:Z

    .line 546
    const-string v2, "loadImages"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->loadImages:Z

    .line 547
    const-string v2, "useHTTPS"

    const/4 v3, 0x0

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->useHTTPS:Z

    .line 548
    const-string v2, "notifySound"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->notifySound:Z

    .line 549
    const-string v2, "notifyVibrate"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->notifyVibration:Z

    .line 550
    const-string v2, "notifyLED"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->notifyLED:Z

    .line 552
    :try_start_0
    const-string v2, "vk"

    const-string v3, "notifyRingtone"

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v2, "notifyRingtone"

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/Global;->prefNotifyRingtone:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :goto_0
    const-string v2, "friendsOrder"

    const-string v3, "hints"

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 557
    .local v11, "fs":Ljava/lang/String;
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sort="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v2, "hints"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v8, 0x2

    .line 561
    .local v8, "_sort":I
    :goto_1
    sget v2, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    if-eq v8, v2, :cond_0

    .line 562
    sput v8, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    .line 563
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vkontakte/android/MainActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vkontakte/android/MainActivity$8;-><init>(Lcom/vkontakte/android/MainActivity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 565
    :cond_0
    const-string v2, "updateInterval"

    const-string v3, "180000"

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/vkontakte/android/MainActivity;->updateInterval:I

    .line 566
    const-string v2, "enableC2DM"

    const/4 v3, 0x0

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vkontakte/android/MainActivity;->prevC2DM:Z

    if-eq v2, v3, :cond_1

    .line 567
    const-string v2, "enableC2DM"

    const/4 v3, 0x0

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 568
    invoke-static {}, Lcom/vkontakte/android/C2DM;->start()V

    .line 574
    :cond_1
    :goto_2
    new-instance v9, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/BirthdayBroadcastReceiver;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 575
    .local v9, "bdIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    move-object/from16 v0, p0

    invoke-static {v0, v2, v9, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 576
    .local v7, "pbIntent":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 578
    .local v1, "as":Landroid/app/AlarmManager;
    const-string v2, "notifyBDays"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 579
    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v16, 0x5265c00

    rem-long v5, v5, v16

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x5265c00

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 583
    :goto_3
    const/4 v2, 0x0

    sput-boolean v2, Lcom/vkontakte/android/NetworkStateReceiver;->disableBigImages:Z

    .line 584
    const-string v2, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    .line 585
    .local v10, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    .line 586
    .local v12, "info":Landroid/net/NetworkInfo;
    if-eqz v12, :cond_3

    .line 587
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v15

    .line 588
    .local v15, "type":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mobile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "bigImagesMobile"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "EDGE"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "GPRS"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 589
    :cond_2
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vkontakte/android/NetworkStateReceiver;->disableBigImages:Z

    .line 590
    const-string v2, "vk"

    const-string v3, "Big images disabled!!"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    .end local v1    # "as":Landroid/app/AlarmManager;
    .end local v7    # "pbIntent":Landroid/app/PendingIntent;
    .end local v8    # "_sort":I
    .end local v9    # "bdIntent":Landroid/content/Intent;
    .end local v10    # "cm":Landroid/net/ConnectivityManager;
    .end local v11    # "fs":Ljava/lang/String;
    .end local v12    # "info":Landroid/net/NetworkInfo;
    .end local v14    # "prefs":Landroid/content/SharedPreferences;
    .end local v15    # "type":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "messages"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 597
    const-string v2, "vk"

    const-string v3, "messages"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 599
    .local v13, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/vkontakte/android/ExtendedTabBar;->setCurrentTab(IZ)V

    .line 602
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "messages"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 604
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-virtual {v2}, Lcom/vkontakte/android/ExtendedTabBar;->getCurrentTab()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MainActivity;->slidingPlayerView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 608
    :cond_5
    sget-boolean v2, Lcom/vkontakte/android/MainActivity;->firstRun:Z

    if-nez v2, :cond_6

    sget-object v2, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    invoke-virtual {v2}, Lcom/vkontakte/android/LongPollService;->updateCounters()V

    .line 609
    :cond_6
    sget-boolean v2, Lcom/vkontakte/android/MainActivity;->firstRun:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->firstRun:Z

    .line 611
    :cond_7
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_8

    .line 612
    new-instance v2, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/MainActivity;->webView:Landroid/webkit/WebView;

    .line 613
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 614
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/vkontakte/android/MainActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vkontakte/android/MainActivity$9;-><init>(Lcom/vkontakte/android/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MainActivity;->webView:Landroid/webkit/WebView;

    const-string v3, "http://m.vk.com/counters.php"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 635
    :cond_8
    sget-boolean v2, Lcom/vkontakte/android/LongPollService;->needFinishAllActivities:Z

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->exitApp()V

    .line 636
    :cond_9
    return-void

    .line 559
    .restart local v11    # "fs":Ljava/lang/String;
    .restart local v14    # "prefs":Landroid/content/SharedPreferences;
    :cond_a
    const-string v2, "lastname"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v8, 0x1

    .restart local v8    # "_sort":I
    goto/16 :goto_1

    .line 560
    .end local v8    # "_sort":I
    :cond_b
    const/4 v8, 0x0

    .restart local v8    # "_sort":I
    goto/16 :goto_1

    .line 570
    :cond_c
    invoke-static {}, Lcom/vkontakte/android/C2DM;->stop()V

    goto/16 :goto_2

    .line 581
    .restart local v1    # "as":Landroid/app/AlarmManager;
    .restart local v7    # "pbIntent":Landroid/app/PendingIntent;
    .restart local v9    # "bdIntent":Landroid/content/Intent;
    :cond_d
    invoke-virtual {v1, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_3

    .line 554
    .end local v1    # "as":Landroid/app/AlarmManager;
    .end local v7    # "pbIntent":Landroid/app/PendingIntent;
    .end local v8    # "_sort":I
    .end local v9    # "bdIntent":Landroid/content/Intent;
    .end local v11    # "fs":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 639
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 640
    const-string v0, "vk"

    const-string v1, "Save instance state"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v0, "currentTab"

    iget-object v1, p0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-virtual {v1}, Lcom/vkontakte/android/ExtendedTabBar;->getCurrentTab()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 642
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 646
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/UsersSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 647
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 648
    const/4 v1, 0x0

    return v1
.end method

.method public openActivity(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 363
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserListActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/APIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    :cond_1
    const-string v0, "_tab_root"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 367
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/ExtendedTabBar;->startCustomIntent(Landroid/content/Intent;)V

    .line 368
    return-void
.end method

.method public setTab(I)V
    .locals 2
    .param p1, "tab"    # I

    .prologue
    .line 371
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/vkontakte/android/ExtendedTabBar;->setCurrentTab(IZ)V

    .line 372
    return-void
.end method

.method public setTabBadge(II)V
    .locals 4
    .param p1, "tab"    # I
    .param p2, "num"    # I

    .prologue
    .line 376
    if-gtz p2, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/vkontakte/android/ExtendedTabBar;->setTabBadge(ILjava/lang/String;)V

    .line 379
    :goto_0
    return-void

    .line 377
    :cond_0
    const/16 v0, 0x2710

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/vkontakte/android/ExtendedTabBar;->setTabBadge(ILjava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    new-instance v1, Ljava/lang/StringBuilder;

    int-to-float v2, p2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "K"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/vkontakte/android/ExtendedTabBar;->setTabBadge(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public showSettings()V
    .locals 3

    .prologue
    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/MainActivity;->inSettings:Z

    .line 470
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "enableC2DM"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkontakte/android/MainActivity;->prevC2DM:Z

    .line 471
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x67

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 472
    return-void
.end method

.method public startLongPoll()V
    .locals 2

    .prologue
    .line 465
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/LongPollService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 466
    return-void
.end method
