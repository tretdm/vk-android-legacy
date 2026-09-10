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

    .line 61
    sput-boolean v1, Lcom/vkontakte/android/MainActivity;->showBack:Z

    .line 62
    const/4 v0, 0x2

    sput v0, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    const v0, 0x2bf20

    sput v0, Lcom/vkontakte/android/MainActivity;->updateInterval:I

    .line 63
    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->loadImages:Z

    .line 64
    sput-boolean v1, Lcom/vkontakte/android/MainActivity;->useHTTPS:Z

    .line 65
    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->notifySound:Z

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->notifyVibration:Z

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->notifyLED:Z

    .line 67
    sput-object v3, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    .line 68
    sput-boolean v1, Lcom/vkontakte/android/MainActivity;->inited:Z

    .line 72
    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->firstRun:Z

    .line 74
    sput-boolean v1, Lcom/vkontakte/android/MainActivity;->isActive:Z

    sput-boolean v1, Lcom/vkontakte/android/MainActivity;->_isActive:Z

    .line 85
    sput-object v3, Lcom/vkontakte/android/MainActivity;->netStateReceiver:Lcom/vkontakte/android/NetworkStateReceiver;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 55
    iput-boolean v1, p0, Lcom/vkontakte/android/MainActivity;->backp:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/MainActivity;->inSettings:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/MainActivity;->backAllowed:Z

    .line 69
    iput-boolean v1, p0, Lcom/vkontakte/android/MainActivity;->prevC2DM:Z

    .line 80
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MainActivity;->tabviews:Ljava/util/Vector;

    .line 52
    return-void
.end method

.method private checkUserInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 225
    sget-boolean v4, Lcom/vkontakte/android/MainActivity;->inited:Z

    if-nez v4, :cond_2

    .line 229
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 230
    .local v3, "prefs1":Landroid/content/SharedPreferences;
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    const-string v4, "enableC2DM"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 231
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "enableC2DM"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 232
    invoke-static {}, Lcom/vkontakte/android/C2DM;->start()V

    .line 234
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/vkontakte/android/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 235
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "username"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 236
    sput-boolean v6, Lcom/vkontakte/android/NetworkStateReceiver;->userInfoUpdated:Z

    .line 237
    new-instance v4, Lcom/vkontakte/android/api/GetWallInfo;

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    invoke-direct {v4, v5}, Lcom/vkontakte/android/api/GetWallInfo;-><init>(I)V

    .line 238
    new-instance v5, Lcom/vkontakte/android/MainActivity$2;

    invoke-direct {v5, p0, v2}, Lcom/vkontakte/android/MainActivity$2;-><init>(Lcom/vkontakte/android/MainActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/api/GetWallInfo;->setCallback(Lcom/vkontakte/android/api/GetWallInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 275
    invoke-virtual {v4, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 276
    invoke-virtual {v4, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 293
    :cond_1
    :goto_0
    sput-boolean v6, Lcom/vkontakte/android/MainActivity;->inited:Z

    .line 295
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .end local v3    # "prefs1":Landroid/content/SharedPreferences;
    :cond_2
    return-void

    .line 284
    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    .restart local v3    # "prefs1":Landroid/content/SharedPreferences;
    :cond_3
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 285
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 286
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 288
    sput-boolean v6, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected:Z

    .line 289
    invoke-static {p0}, Lcom/vkontakte/android/NetworkStateReceiver;->updateInfo(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static showAbout(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 369
    :try_start_0
    new-instance v2, Lcom/vkontakte/android/MainActivity$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/MainActivity$3;-><init>(Landroid/content/Context;)V

    .line 378
    .local v2, "igetter":Landroid/text/Html$ImageGetter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 379
    .local v1, "dlg":Landroid/app/AlertDialog$Builder;
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    .line 380
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

    .line 381
    .restart local v1    # "dlg":Landroid/app/AlertDialog$Builder;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 382
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<img src=\'1\'/><br/>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09001e

    const/4 v6, 0x1

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

    .line 383
    const-string v3, "OK"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 384
    const v3, 0x108009b

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 385
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 386
    .local v0, "d":Landroid/app/AlertDialog;
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, -0x602404

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 387
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, -0x7f602404

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 388
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 389
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .end local v0    # "d":Landroid/app/AlertDialog;
    .end local v1    # "dlg":Landroid/app/AlertDialog$Builder;
    .end local v2    # "igetter":Landroid/text/Html$ImageGetter;
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public exitApp()V
    .locals 2

    .prologue
    .line 405
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/LongPollService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MainActivity;->stopService(Landroid/content/Intent;)Z

    .line 406
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->finish()V

    .line 407
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 408
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MainActivity$4;-><init>(Lcom/vkontakte/android/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 415
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 416
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

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 313
    const/16 v2, 0x64

    if-ne p1, v2, :cond_1

    .line 314
    if-ne p2, v7, :cond_7

    .line 316
    sget-object v2, Lcom/vkontakte/android/NewsfeedActivity;->sharedInstance:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/NewsfeedActivity;->loadData()V

    .line 317
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

    .line 318
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v9, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 320
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

    if-ne v2, v3, :cond_6

    .line 321
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

    .line 322
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/vkontakte/android/SuggestFriendsActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x68

    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/vkontakte/android/NetworkStateReceiver;->updateInfo(Landroid/content/Context;)V

    .line 329
    iget-object v2, p0, Lcom/vkontakte/android/MainActivity;->menuOverlay:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->updateInfo()V

    .line 334
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    :goto_1
    const/16 v2, 0x65

    if-ne p1, v2, :cond_2

    .line 335
    if-ne p2, v7, :cond_2

    .line 336
    sput-boolean v8, Lcom/vkontakte/android/Global;->authOK:Z

    .line 339
    :cond_2
    if-ne p1, v10, :cond_3

    .line 340
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_8

    .line 341
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/WelcomeActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 342
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "syncsettings"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const/16 v2, 0x69

    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 348
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_2
    const/16 v2, 0x69

    if-ne p1, v2, :cond_4

    .line 349
    iget-object v2, p0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-virtual {v2, v8, v6}, Lcom/vkontakte/android/ExtendedTabBar;->setCurrentTab(IZ)V

    .line 351
    :cond_4
    const/16 v2, 0x67

    if-ne p1, v2, :cond_5

    const/4 v2, 0x2

    if-ne p2, v2, :cond_5

    .line 352
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->finish()V

    .line 353
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/MainActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 354
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 356
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    return-void

    .line 323
    .restart local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_6
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

    move-result v2

    if-nez v2, :cond_0

    .line 324
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/WelcomeActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 325
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 327
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 331
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_7
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->exitApp()V

    goto/16 :goto_1

    .line 345
    :cond_8
    iget-object v2, p0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-virtual {v2, v8, v6}, Lcom/vkontakte/android/ExtendedTabBar;->setCurrentTab(IZ)V

    goto :goto_2
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 90
    .local v0, "window":Landroid/view/Window;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 91
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    sput-object p0, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    .line 100
    invoke-super/range {p0 .. p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/vkontakte/android/Global;->displayDensity:F

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 105
    .local v14, "prefs":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->showBack:Z

    .line 106
    const-string v2, "loadImages"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->loadImages:Z

    .line 107
    const-string v2, "useHTTPS"

    const/4 v3, 0x0

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->useHTTPS:Z

    .line 108
    const-string v2, "notifySound"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->notifySound:Z

    .line 109
    const-string v2, "notifyVibrate"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->notifyVibration:Z

    .line 110
    const-string v2, "notifyLED"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->notifyLED:Z

    .line 112
    :try_start_0
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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    :goto_0
    const-string v2, "friendsOrder"

    const-string v3, "hints"

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 115
    .local v10, "fs":Ljava/lang/String;
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sort="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v2, "hints"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x2

    sput v2, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    .line 119
    :goto_1
    const-string v2, "updateInterval"

    const-string v3, "180000"

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/vkontakte/android/MainActivity;->updateInterval:I

    .line 120
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/MainActivity;->requestWindowFeature(I)Z

    .line 122
    new-instance v2, Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/vkontakte/android/ExtendedTabBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    .line 125
    new-instance v2, Lcom/vkontakte/android/ui/MenuOverlayView;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/vkontakte/android/ui/MenuOverlayView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/MainActivity;->menuOverlay:Lcom/vkontakte/android/ui/MenuOverlayView;

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MainActivity;->menuOverlay:Lcom/vkontakte/android/ui/MenuOverlayView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/MenuOverlayView;->addView(Landroid/view/View;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MainActivity;->menuOverlay:Lcom/vkontakte/android/ui/MenuOverlayView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/MainActivity;->setContentView(Landroid/view/View;)V

    .line 129
    new-instance v13, Landroid/util/DisplayMetrics;

    invoke-direct {v13}, Landroid/util/DisplayMetrics;-><init>()V

    .line 130
    .local v13, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    const v3, 0x7f090048

    const v4, 0x7f020238

    const-class v5, Lcom/vkontakte/android/NewsfeedActivity;

    invoke-virtual {v2, v3, v4, v5}, Lcom/vkontakte/android/ExtendedTabBar;->addTab(IILjava/lang/Class;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    const v3, 0x7f09004a

    const v4, 0x7f020235

    const-class v5, Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v2, v3, v4, v5}, Lcom/vkontakte/android/ExtendedTabBar;->addTab(IILjava/lang/Class;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    const v3, 0x7f090049

    const v4, 0x7f02023e

    const-class v5, Lcom/vkontakte/android/WallActivity;

    invoke-virtual {v2, v3, v4, v5}, Lcom/vkontakte/android/ExtendedTabBar;->addTab(IILjava/lang/Class;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    const v3, 0x7f09004b

    const v4, 0x7f02022e

    const-class v5, Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v2, v3, v4, v5}, Lcom/vkontakte/android/ExtendedTabBar;->addTab(IILjava/lang/Class;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    const v3, 0x7f09004c

    const v4, 0x7f020232

    const-class v5, Lcom/vkontakte/android/FriendsActivity;

    invoke-virtual {v2, v3, v4, v5}, Lcom/vkontakte/android/ExtendedTabBar;->addTab(IILjava/lang/Class;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ExtendedTabBar;->setDraggingEnabled(Z)V

    .line 140
    sget-object v2, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    if-eqz v2, :cond_0

    .line 141
    const/4 v2, 0x1

    sget v3, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/vkontakte/android/MainActivity;->setTabBadge(II)V

    .line 142
    const/4 v2, 0x4

    sget v3, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/vkontakte/android/MainActivity;->setTabBadge(II)V

    .line 145
    :cond_0
    sget-boolean v2, Lcom/vkontakte/android/Global;->inited:Z

    if-nez v2, :cond_a

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 147
    const-string v2, "sid"

    invoke-interface {v14, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 148
    const-string v2, "uid"

    const/4 v3, 0x0

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/vkontakte/android/Global;->uid:I

    .line 149
    const-string v2, "sid"

    const/4 v3, 0x0

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 150
    const-string v2, "secret"

    const/4 v3, 0x0

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 151
    sget-object v2, Lcom/vkontakte/android/NewsfeedActivity;->sharedInstance:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/NewsfeedActivity;->loadData()V

    .line 152
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

    .line 154
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

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v2, :cond_1

    .line 155
    new-instance v12, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/WelcomeActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v12, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/vkontakte/android/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->checkUserInfo()V

    .line 171
    :cond_2
    :goto_3
    const-string v2, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    .line 172
    .local v9, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    .line 173
    .local v11, "info":Landroid/net/NetworkInfo;
    if-eqz v11, :cond_4

    .line 174
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v16

    .line 175
    .local v16, "type":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 176
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mobile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "bigImagesMobile"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "EDGE"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "GPRS"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 177
    :cond_3
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vkontakte/android/NetworkStateReceiver;->disableBigImages:Z

    .line 178
    const-string v2, "vk"

    const-string v3, "Big images disabled!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .end local v16    # "type":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vkontakte/android/Global;->inited:Z

    .line 190
    const v2, 0x7f03003c

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/MainActivity;->slidingPlayerView:Landroid/view/View;

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MainActivity;->slidingPlayerView:Landroid/view/View;

    invoke-static {v2}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    new-instance v3, Lcom/vkontakte/android/MainActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vkontakte/android/MainActivity$1;-><init>(Lcom/vkontakte/android/MainActivity;)V

    .line 202
    const-wide/16 v4, 0xc8

    .line 193
    invoke-virtual {v2, v3, v4, v5}, Lcom/vkontakte/android/ExtendedTabBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 205
    new-instance v8, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/BirthdayBroadcastReceiver;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .local v8, "bdIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    move-object/from16 v0, p0

    invoke-static {v0, v2, v8, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 207
    .local v7, "pbIntent":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 208
    .local v1, "as":Landroid/app/AlarmManager;
    const-string v2, "notifyBDays"

    const/4 v3, 0x0

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 209
    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v17, 0x5265c00

    rem-long v5, v5, v17

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

    .line 213
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "tab"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "tab"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 215
    .local v15, "tab":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v15, v3}, Lcom/vkontakte/android/ExtendedTabBar;->setCurrentTab(IZ)V

    .line 218
    .end local v15    # "tab":I
    :cond_5
    sget-boolean v2, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v2, :cond_6

    .line 219
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/vkontakte/android/TabletMainActivity;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->finish()V

    .line 222
    :cond_6
    return-void

    .line 117
    .end local v1    # "as":Landroid/app/AlarmManager;
    .end local v7    # "pbIntent":Landroid/app/PendingIntent;
    .end local v8    # "bdIntent":Landroid/content/Intent;
    .end local v9    # "cm":Landroid/net/ConnectivityManager;
    .end local v11    # "info":Landroid/net/NetworkInfo;
    .end local v13    # "metrics":Landroid/util/DisplayMetrics;
    :cond_7
    const-string v2, "lastname"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    sput v2, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    goto/16 :goto_1

    .line 118
    :cond_8
    const/4 v2, 0x0

    sput v2, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    goto/16 :goto_1

    .line 161
    .restart local v13    # "metrics":Landroid/util/DisplayMetrics;
    :cond_9
    sget-boolean v2, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v2, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/vkontakte/android/AuthActivity;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/vkontakte/android/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 167
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-virtual {v2}, Lcom/vkontakte/android/ExtendedTabBar;->getTabsView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 168
    sget-object v2, Lcom/vkontakte/android/NewsfeedActivity;->sharedInstance:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/NewsfeedActivity;->loadData()V

    goto/16 :goto_3

    .line 211
    .restart local v1    # "as":Landroid/app/AlarmManager;
    .restart local v7    # "pbIntent":Landroid/app/PendingIntent;
    .restart local v8    # "bdIntent":Landroid/content/Intent;
    .restart local v9    # "cm":Landroid/net/ConnectivityManager;
    .restart local v11    # "info":Landroid/net/NetworkInfo;
    :cond_b
    invoke-virtual {v1, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_4

    .line 158
    .end local v1    # "as":Landroid/app/AlarmManager;
    .end local v7    # "pbIntent":Landroid/app/PendingIntent;
    .end local v8    # "bdIntent":Landroid/content/Intent;
    .end local v9    # "cm":Landroid/net/ConnectivityManager;
    .end local v11    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v2

    goto/16 :goto_2

    .line 113
    .end local v10    # "fs":Ljava/lang/String;
    .end local v13    # "metrics":Landroid/util/DisplayMetrics;
    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    .line 420
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/vkontakte/android/AudioListActivity;

    if-eqz v2, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 422
    .local v1, "r":Z
    if-eqz v1, :cond_0

    .line 426
    .end local v1    # "r":Z
    :goto_0
    return v3

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 425
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f0b0002

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 359
    const-string v0, "vk"

    const-string v1, "Main activity destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    sget-object v0, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    .line 364
    :cond_0
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 365
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "handled":Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 446
    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/vkontakte/android/AudioListActivity;

    if-eqz v2, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 448
    .local v1, "r":Z
    if-eqz v1, :cond_0

    .line 450
    .end local v1    # "r":Z
    :cond_0
    return v3

    .line 434
    :pswitch_0
    const/4 v0, 0x1

    .line 435
    invoke-static {p0}, Lcom/vkontakte/android/MainActivity;->showAbout(Landroid/content/Context;)V

    goto :goto_0

    .line 438
    :pswitch_1
    const/4 v0, 0x1

    .line 439
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->exitApp()V

    goto :goto_0

    .line 442
    :pswitch_2
    const/4 v0, 0x1

    .line 443
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->showSettings()V

    goto :goto_0

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x7f0601af
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 460
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 461
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/MainActivity;->_isActive:Z

    .line 462
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    new-instance v1, Lcom/vkontakte/android/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MainActivity$5;-><init>(Lcom/vkontakte/android/MainActivity;)V

    .line 464
    const-wide/16 v2, 0x1f4

    .line 462
    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ExtendedTabBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 465
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/AudioListActivity;

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 456
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 569
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 570
    const-string v0, "vk"

    const-string v1, "Restore instance state"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return-void
.end method

.method public onResume()V
    .locals 18

    .prologue
    .line 468
    invoke-super/range {p0 .. p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 469
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vkontakte/android/MainActivity;->backAllowed:Z

    .line 470
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->isActive:Z

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->_isActive:Z

    .line 472
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkontakte/android/MainActivity;->inSettings:Z

    if-eqz v2, :cond_3

    .line 473
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vkontakte/android/MainActivity;->inSettings:Z

    .line 474
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 475
    .local v14, "prefs":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->showBack:Z

    .line 476
    const-string v2, "loadImages"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->loadImages:Z

    .line 477
    const-string v2, "useHTTPS"

    const/4 v3, 0x0

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->useHTTPS:Z

    .line 478
    const-string v2, "notifySound"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->notifySound:Z

    .line 479
    const-string v2, "notifyVibrate"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->notifyVibration:Z

    .line 480
    const-string v2, "notifyLED"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->notifyLED:Z

    .line 482
    :try_start_0
    const-string v2, "vk"

    const-string v3, "notifyRingtone"

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
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

    .line 485
    :goto_0
    const-string v2, "friendsOrder"

    const-string v3, "hints"

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 487
    .local v11, "fs":Ljava/lang/String;
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sort="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const-string v2, "hints"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v8, 0x2

    .line 491
    .local v8, "_sort":I
    :goto_1
    sget v2, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    if-eq v8, v2, :cond_0

    .line 492
    sput v8, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    .line 493
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vkontakte/android/MainActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vkontakte/android/MainActivity$6;-><init>(Lcom/vkontakte/android/MainActivity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 495
    :cond_0
    const-string v2, "updateInterval"

    const-string v3, "180000"

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/vkontakte/android/MainActivity;->updateInterval:I

    .line 496
    const-string v2, "enableC2DM"

    const/4 v3, 0x0

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vkontakte/android/MainActivity;->prevC2DM:Z

    if-eq v2, v3, :cond_1

    .line 497
    const-string v2, "enableC2DM"

    const/4 v3, 0x0

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 498
    invoke-static {}, Lcom/vkontakte/android/C2DM;->start()V

    .line 504
    :cond_1
    :goto_2
    new-instance v9, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/BirthdayBroadcastReceiver;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 505
    .local v9, "bdIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    move-object/from16 v0, p0

    invoke-static {v0, v2, v9, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 506
    .local v7, "pbIntent":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 508
    .local v1, "as":Landroid/app/AlarmManager;
    const-string v2, "notifyBDays"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 509
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

    .line 513
    :goto_3
    const/4 v2, 0x0

    sput-boolean v2, Lcom/vkontakte/android/NetworkStateReceiver;->disableBigImages:Z

    .line 514
    const-string v2, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    .line 515
    .local v10, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    .line 516
    .local v12, "info":Landroid/net/NetworkInfo;
    if-eqz v12, :cond_3

    .line 517
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v15

    .line 518
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

    .line 519
    :cond_2
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vkontakte/android/NetworkStateReceiver;->disableBigImages:Z

    .line 520
    const-string v2, "vk"

    const-string v3, "Big images disabled!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
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

    .line 527
    const-string v2, "vk"

    const-string v3, "messages"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 529
    .local v13, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/vkontakte/android/ExtendedTabBar;->setCurrentTab(IZ)V

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "messages"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 534
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-virtual {v2}, Lcom/vkontakte/android/ExtendedTabBar;->getCurrentTab()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MainActivity;->slidingPlayerView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 538
    :cond_5
    sget-boolean v2, Lcom/vkontakte/android/MainActivity;->firstRun:Z

    if-nez v2, :cond_6

    sget-object v2, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    invoke-virtual {v2}, Lcom/vkontakte/android/LongPollService;->updateCounters()V

    .line 539
    :cond_6
    sget-boolean v2, Lcom/vkontakte/android/MainActivity;->firstRun:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->firstRun:Z

    .line 541
    :cond_7
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_8

    .line 542
    new-instance v2, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/MainActivity;->webView:Landroid/webkit/WebView;

    .line 543
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 544
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/vkontakte/android/MainActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vkontakte/android/MainActivity$7;-><init>(Lcom/vkontakte/android/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/MainActivity;->webView:Landroid/webkit/WebView;

    const-string v3, "http://m.vk.com/counters.php"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 565
    :cond_8
    sget-boolean v2, Lcom/vkontakte/android/LongPollService;->needFinishAllActivities:Z

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->exitApp()V

    .line 566
    :cond_9
    return-void

    .line 489
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

    .line 490
    .end local v8    # "_sort":I
    :cond_b
    const/4 v8, 0x0

    .restart local v8    # "_sort":I
    goto/16 :goto_1

    .line 500
    :cond_c
    invoke-static {}, Lcom/vkontakte/android/C2DM;->stop()V

    goto/16 :goto_2

    .line 511
    .restart local v1    # "as":Landroid/app/AlarmManager;
    .restart local v7    # "pbIntent":Landroid/app/PendingIntent;
    .restart local v9    # "bdIntent":Landroid/content/Intent;
    :cond_d
    invoke-virtual {v1, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_3

    .line 484
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
    .line 574
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 575
    const-string v0, "vk"

    const-string v1, "Save instance state"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 580
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/UsersSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 581
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 582
    const/4 v1, 0x0

    return v1
.end method

.method public openActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/ExtendedTabBar;->startCustomIntent(Landroid/content/Intent;)V

    .line 299
    return-void
.end method

.method public setTab(I)V
    .locals 2
    .param p1, "tab"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/vkontakte/android/ExtendedTabBar;->setCurrentTab(IZ)V

    .line 303
    return-void
.end method

.method public setTabBadge(II)V
    .locals 4
    .param p1, "tab"    # I
    .param p2, "num"    # I

    .prologue
    .line 307
    if-gtz p2, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/vkontakte/android/ExtendedTabBar;->setTabBadge(ILjava/lang/String;)V

    .line 310
    :goto_0
    return-void

    .line 308
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

    .line 309
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
    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/MainActivity;->inSettings:Z

    .line 400
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "enableC2DM"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkontakte/android/MainActivity;->prevC2DM:Z

    .line 401
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x67

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 402
    return-void
.end method

.method public startLongPoll()V
    .locals 2

    .prologue
    .line 395
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/LongPollService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 396
    return-void
.end method
