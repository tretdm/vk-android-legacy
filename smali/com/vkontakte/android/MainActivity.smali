.class public Lcom/vkontakte/android/MainActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/MainActivity$ActionBarState;
    }
.end annotation


# instance fields
.field private abStates:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/vkontakte/android/MainActivity$ActionBarState;",
            ">;"
        }
    .end annotation
.end field

.field private contentView:Landroid/widget/FrameLayout;

.field private counter:Landroid/widget/TextView;

.field private lastUpdatedCounters:J

.field private menu:Lcom/vkontakte/android/ui/MenuOverlayView;

.field private needClearSettings:Z

.field private prevStackSize:I

.field private receiver:Landroid/content/BroadcastReceiver;

.field private showNewsOnResume:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 60
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 61
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 62
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected:Z

    .line 64
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/vkontakte/android/NetworkStateReceiver;->updateInfo(Landroid/content/Context;)V

    .line 66
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 70
    iput-boolean v2, p0, Lcom/vkontakte/android/MainActivity;->showNewsOnResume:Z

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/MainActivity;->lastUpdatedCounters:J

    .line 73
    iput v2, p0, Lcom/vkontakte/android/MainActivity;->prevStackSize:I

    .line 74
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MainActivity;->abStates:Ljava/util/Stack;

    .line 75
    iput-boolean v2, p0, Lcom/vkontakte/android/MainActivity;->needClearSettings:Z

    .line 77
    new-instance v0, Lcom/vkontakte/android/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MainActivity$1;-><init>(Lcom/vkontakte/android/MainActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/MainActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/MainActivity;I)V
    .locals 0

    .prologue
    .line 439
    invoke-direct {p0, p1}, Lcom/vkontakte/android/MainActivity;->updateCounter(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/MainActivity;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/MainActivity;->openFromMenu(Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/MainActivity;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 606
    invoke-direct {p0, p1}, Lcom/vkontakte/android/MainActivity;->setTextViewMarquee(Landroid/widget/TextView;)V

    return-void
.end method

.method private checkForIntro()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 406
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/vkontakte/android/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "intro"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 408
    .local v1, "intro":I
    and-int/lit8 v2, v1, 0x1

    if-gtz v2, :cond_0

    and-int/lit8 v2, v1, 0x2

    if-lez v2, :cond_2

    .line 409
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/SuggestionsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 410
    .local v0, "intent":Landroid/content/Intent;
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_1

    .line 411
    const-string v2, "groups"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 413
    :cond_1
    const/16 v2, 0x65

    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 415
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method private openFromMenu(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 11
    .param p1, "fclass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "back"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const v8, 0x7f09001b

    .line 330
    iget-object v6, p0, Lcom/vkontakte/android/MainActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu()V

    .line 331
    if-eqz p3, :cond_0

    .line 332
    invoke-static {p1, p2, p0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 372
    :goto_0
    return-void

    .line 335
    :cond_0
    const-string v6, "_settings"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 336
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    .line 337
    new-instance v4, Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-direct {v4}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 338
    .local v4, "sf":Lcom/actionbarsherlock/app/SherlockFragment;
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    const-string v7, "content"

    invoke-virtual {v6, v8, v4, v7}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 339
    new-instance v1, Lcom/vkontakte/android/fragments/SettingsFragment;

    invoke-direct {v1}, Lcom/vkontakte/android/fragments/SettingsFragment;-><init>()V

    .line 340
    .local v1, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    const-string v7, "settings"

    invoke-virtual {v6, v8, v1, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commit()I

    .line 341
    iput-boolean v10, p0, Lcom/vkontakte/android/MainActivity;->needClearSettings:Z

    goto :goto_0

    .line 344
    .end local v1    # "f":Landroid/app/Fragment;
    .end local v4    # "sf":Lcom/actionbarsherlock/app/SherlockFragment;
    :cond_1
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/vkontakte/android/SettingsActivity;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 347
    :cond_2
    if-eqz p2, :cond_3

    .line 348
    const-string v6, "_from_menu"

    invoke-virtual {p2, v6, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 353
    :cond_3
    :try_start_0
    iget-boolean v6, p0, Lcom/vkontakte/android/MainActivity;->needClearSettings:Z

    if-eqz v6, :cond_5

    .line 354
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "settings"

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 356
    .local v3, "settings":Landroid/app/Fragment;
    if-eqz v3, :cond_4

    .line 357
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commit()I

    .line 358
    :cond_4
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/vkontakte/android/MainActivity;->needClearSettings:Z

    .line 360
    .end local v3    # "settings":Landroid/app/Fragment;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "com.vkontakte.android.fragments."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 361
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/app/SherlockFragment;

    .line 362
    .local v2, "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    invoke-virtual {v2, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->setArguments(Landroid/os/Bundle;)V

    .line 363
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    const v7, 0x7f09001b

    const-string v8, "news"

    invoke-virtual {v6, v7, v2, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 364
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    :catch_0
    move-exception v5

    .line 365
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error starting fragment! "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 366
    const v6, 0x7f080068

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 367
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->finish()V

    goto/16 :goto_0
.end method

.method private setTextViewMarquee(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "t"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x1

    .line 607
    if-nez p1, :cond_0

    .line 613
    :goto_0
    return-void

    .line 608
    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 609
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 610
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 611
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    .line 612
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    goto :goto_0
.end method

.method private setTitleMarquee()V
    .locals 4

    .prologue
    .line 580
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->contentView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 604
    :goto_0
    return-void

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->contentView:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/vkontakte/android/MainActivity$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MainActivity$7;-><init>(Lcom/vkontakte/android/MainActivity;)V

    .line 603
    const-wide/16 v2, 0xc8

    .line 581
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static showAbout(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 498
    :try_start_0
    new-instance v2, Lcom/vkontakte/android/MainActivity$5;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/MainActivity$5;-><init>(Landroid/content/Context;)V

    .line 507
    .local v2, "igetter":Landroid/text/Html$ImageGetter;
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 508
    .local v1, "dlg":Landroid/app/AlertDialog$Builder;
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    .line 509
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

    .line 510
    .restart local v1    # "dlg":Landroid/app/AlertDialog$Builder;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<br/><img src=\'1\'/><br/>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080043

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

    .line 512
    const-string v3, "OK"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 513
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_1

    .line 514
    const v3, 0x108009b

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 515
    :cond_1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 516
    .local v0, "d":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f02027a

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 517
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, -0x602404

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 518
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, -0x7f602404

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 519
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 520
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 521
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/MainActivity$6;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/MainActivity$6;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    .end local v0    # "d":Landroid/app/AlertDialog;
    .end local v1    # "dlg":Landroid/app/AlertDialog$Builder;
    .end local v2    # "igetter":Landroid/text/Html$ImageGetter;
    :goto_0
    return-void

    .line 533
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private updateCounter(I)V
    .locals 13
    .param p1, "cnt"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 440
    iget-object v9, p0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-nez v9, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    sget-boolean v9, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v9, v10, :cond_2

    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v9, v9, 0xf

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    .line 442
    iget-object v8, p0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 445
    :cond_2
    const/4 v5, 0x0

    .line 446
    .local v5, "text":Ljava/lang/String;
    const/16 v9, 0x3e8

    if-ge p1, v9, :cond_7

    .line 447
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 453
    :cond_3
    :goto_1
    if-nez v5, :cond_4

    .line 454
    const-string v5, ""

    .line 455
    const/4 p1, 0x0

    .line 457
    :cond_4
    iget-object v9, p0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v9, p0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    if-lez p1, :cond_9

    :goto_2
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    if-lez p1, :cond_0

    .line 461
    const/4 v8, 0x2

    :try_start_0
    new-array v7, v8, [I

    .line 462
    .local v7, "xy":[I
    const/4 v3, 0x0

    .line 463
    .local v3, "offsetX":I
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/high16 v9, 0x41980000    # 19.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    const/16 v10, 0x33

    invoke-direct {v2, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 464
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v8, p0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    const/high16 v9, 0x42c80000    # 100.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    const/high16 v10, -0x80000000

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/high16 v10, 0x42c80000    # 100.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    const/high16 v11, -0x80000000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->measure(II)V

    .line 465
    iget-object v8, p0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    .line 466
    .local v1, "cw":I
    const-string v8, "vk"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "m width="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "action_bar_container"

    const-string v10, "id"

    const-string v11, "android"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 468
    .local v0, "btnId":I
    if-nez v0, :cond_5

    const v0, 0x7f09003b

    .line 469
    :cond_5
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 470
    const/4 v8, 0x0

    aget v3, v7, v8

    .line 471
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "home"

    const-string v10, "id"

    const-string v11, "android"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 472
    if-nez v0, :cond_6

    const v0, 0x7f090013

    .line 473
    :cond_6
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 474
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 475
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 476
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 477
    const/4 v8, 0x1

    aget v8, v7, v8

    iget v9, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 478
    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v9

    if-le v8, v9, :cond_a

    .line 479
    const/4 v8, 0x0

    aget v8, v7, v8

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 483
    :goto_3
    iget v8, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v8, v3

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 484
    iget-object v8, p0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 485
    .end local v0    # "btnId":I
    .end local v1    # "cw":I
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "offsetX":I
    .end local v4    # "rect":Landroid/graphics/Rect;
    .end local v6    # "v":Landroid/view/View;
    .end local v7    # "xy":[I
    :catch_0
    move-exception v8

    goto/16 :goto_0

    .line 448
    :cond_7
    const/16 v9, 0x3e8

    if-lt p1, v9, :cond_8

    const v9, 0xf4240

    if-ge p1, v9, :cond_8

    .line 449
    new-instance v9, Ljava/lang/StringBuilder;

    div-int/lit16 v10, p1, 0x3e8

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "K"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 450
    goto/16 :goto_1

    :cond_8
    const v9, 0xf4240

    if-lt p1, v9, :cond_3

    .line 451
    const-string v9, "%.1fM"

    new-array v10, v11, [Ljava/lang/Object;

    int-to-float v11, p1

    const v12, 0x49742400    # 1000000.0f

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 458
    :cond_9
    const/16 v8, 0x8

    goto/16 :goto_2

    .line 481
    .restart local v0    # "btnId":I
    .restart local v1    # "cw":I
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "offsetX":I
    .restart local v4    # "rect":Landroid/graphics/Rect;
    .restart local v6    # "v":Landroid/view/View;
    .restart local v7    # "xy":[I
    :cond_a
    const/4 v8, 0x0

    :try_start_1
    aget v8, v7, v8

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private updateMenuMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 423
    sget-boolean v1, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v1, :cond_0

    .line 424
    sget v1, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    sget v2, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    add-int/2addr v1, v2

    sget v2, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    add-int v0, v1, v2

    .line 425
    .local v0, "sum":I
    invoke-direct {p0, v0}, Lcom/vkontakte/android/MainActivity;->updateCounter(I)V

    .line 426
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 427
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->setMode(I)V

    .line 428
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0200ef

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 429
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 437
    .end local v0    # "sum":I
    :cond_0
    :goto_0
    return-void

    .line 432
    .restart local v0    # "sum":I
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/ui/MenuOverlayView;->setMode(I)V

    .line 433
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const v2, 0x7f02015e

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 434
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 543
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 544
    const/16 v1, 0x64

    if-ne p1, v1, :cond_2

    .line 545
    if-ne p2, v4, :cond_4

    .line 548
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 549
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/vkontakte/android/NetworkStateReceiver;->updateInfo(Landroid/content/Context;)V

    .line 550
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->updateInfo()V

    .line 551
    const-string v1, "enableC2DM"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/vkontakte/android/C2DM;->start()V

    .line 552
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/LongPollService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 553
    iput-boolean v5, p0, Lcom/vkontakte/android/MainActivity;->showNewsOnResume:Z

    .line 554
    invoke-static {v3}, Lcom/vkontakte/android/data/Friends;->reload(Z)V

    .line 555
    invoke-static {v3}, Lcom/vkontakte/android/data/Groups;->reload(Z)V

    .line 556
    invoke-static {}, Lcom/vkontakte/android/data/Stickers;->updateInfo()V

    .line 557
    sget-object v1, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    if-eqz v1, :cond_1

    .line 558
    sget-object v1, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    invoke-static {}, Lcom/vkontakte/android/LongPollService;->updateCounters()V

    .line 559
    :cond_1
    invoke-direct {p0}, Lcom/vkontakte/android/MainActivity;->checkForIntro()V

    .line 564
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    :goto_0
    const/16 v1, 0x65

    if-ne p1, v1, :cond_3

    if-eq p2, v4, :cond_3

    .line 565
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->finish()V

    .line 567
    :cond_3
    return-void

    .line 561
    :cond_4
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 622
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/vkontakte/android/fragments/BackListener;

    if-eqz v1, :cond_0

    .line 623
    check-cast v0, Lcom/vkontakte/android/fragments/BackListener;

    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    invoke-interface {v0}, Lcom/vkontakte/android/fragments/BackListener;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    :goto_0
    return-void

    .line 627
    :cond_0
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onBackStackChanged()V
    .locals 3

    .prologue
    .line 632
    iget v1, p0, Lcom/vkontakte/android/MainActivity;->prevStackSize:I

    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 633
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity;->abStates:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/MainActivity$ActionBarState;

    .line 634
    .local v0, "st":Lcom/vkontakte/android/MainActivity$ActionBarState;
    iget-object v1, v0, Lcom/vkontakte/android/MainActivity$ActionBarState;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/MainActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 635
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    iget v2, v0, Lcom/vkontakte/android/MainActivity$ActionBarState;->displayOpts:I

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayOptions(I)V

    .line 642
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/MainActivity;->prevStackSize:I

    .line 643
    return-void

    .line 637
    .end local v0    # "st":Lcom/vkontakte/android/MainActivity$ActionBarState;
    :cond_0
    new-instance v0, Lcom/vkontakte/android/MainActivity$ActionBarState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/MainActivity$ActionBarState;-><init>(Lcom/vkontakte/android/MainActivity$ActionBarState;)V

    .line 638
    .restart local v0    # "st":Lcom/vkontakte/android/MainActivity$ActionBarState;
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/MainActivity$ActionBarState;->title:Ljava/lang/CharSequence;

    .line 639
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->getDisplayOptions()I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/MainActivity$ActionBarState;->displayOpts:I

    .line 640
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity;->abStates:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 382
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 383
    invoke-direct {p0}, Lcom/vkontakte/android/MainActivity;->updateMenuMode()V

    .line 384
    invoke-direct {p0}, Lcom/vkontakte/android/MainActivity;->setTitleMarquee()V

    .line 385
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 23
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super/range {p0 .. p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-static {}, Lcom/vkontakte/android/C2DM;->checkForUpdate()V

    .line 91
    new-instance v17, Landroid/widget/FrameLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/MainActivity;->contentView:Landroid/widget/FrameLayout;

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MainActivity;->contentView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    const v18, 0x7f09001b

    invoke-virtual/range {v17 .. v18}, Landroid/widget/FrameLayout;->setId(I)V

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MainActivity;->contentView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MainActivity;->setContentView(Landroid/view/View;)V

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    const v18, 0x7f02027a

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 97
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setFormat(I)V

    .line 101
    :cond_0
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 102
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 103
    const-string v18, "\u041f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u043d\u0435 \u0440\u0430\u0431\u043e\u0442\u0430\u0435\u0442 \u043d\u0430 \u0442\u0430\u043a\u043e\u0439 \u0441\u0442\u0430\u0440\u043e\u0439 \u0432\u0435\u0440\u0441\u0438\u0438 Android."

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    .line 104
    const v18, 0x7f080068

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    .line 105
    const v18, 0x7f080042

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    .line 112
    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 118
    :cond_1
    new-instance v17, Lcom/vkontakte/android/ui/MenuOverlayView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/MainActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 120
    .local v6, "decorView":Landroid/widget/FrameLayout;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 121
    .local v14, "vr":Landroid/view/View;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MainActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/ui/MenuOverlayView;->addView(Landroid/view/View;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MainActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MainActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkontakte/android/ui/MenuOverlayView;->getListView()Lcom/vkontakte/android/MenuListView;

    move-result-object v17

    new-instance v18, Lcom/vkontakte/android/MainActivity$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/MainActivity$2;-><init>(Lcom/vkontakte/android/MainActivity;)V

    invoke-virtual/range {v17 .. v18}, Lcom/vkontakte/android/MenuListView;->setListener(Lcom/vkontakte/android/MenuListView$Listener;)V

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v17

    const v18, 0x7f02015e

    invoke-virtual/range {v17 .. v18}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 218
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "action_bar_container"

    const-string v19, "id"

    const-string v20, "android"

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 219
    .local v4, "btnId":I
    if-nez v4, :cond_2

    const v4, 0x7f09003b

    .line 220
    :cond_2
    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const v18, 0x7f09001e

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setId(I)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const v18, 0x7f02008b

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const v18, -0xc09869

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/high16 v19, 0x41500000    # 13.0f

    invoke-virtual/range {v17 .. v19}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v18

    const/high16 v19, -0x40800000    # -1.0f

    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v21

    invoke-virtual/range {v17 .. v21}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 229
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v20, -0x2

    const/high16 v21, 0x41980000    # 19.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    const/16 v22, 0x33

    invoke-direct/range {v19 .. v22}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual/range {v17 .. v19}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 232
    :goto_0
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 233
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string v17, "com.vkontakte.android.COUNTERS_UPDATED"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MainActivity;->receiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v17, v0

    const-string v18, "com.vkontakte.android.permission.ACCESS_DATA"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/vkontakte/android/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 235
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->updateMenuMode()V

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 238
    .local v11, "prefs":Landroid/content/SharedPreferences;
    const-string v17, "sid"

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    const-string v17, "uid"

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    const-string v17, "uid"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    if-lez v17, :cond_9

    .line 239
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v17

    const-string v18, "vk_uid"

    new-instance v19, Ljava/lang/StringBuilder;

    sget v20, Lcom/vkontakte/android/Global;->uid:I

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "class"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "class"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 242
    .local v9, "fn":Ljava/lang/String;
    const-string v17, "_settings"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 243
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 244
    new-instance v13, Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-direct {v13}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 245
    .local v13, "sf":Lcom/actionbarsherlock/app/SherlockFragment;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v17

    const v18, 0x7f09001b

    const-string v19, "content"

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v13, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 246
    new-instance v7, Lcom/vkontakte/android/fragments/SettingsFragment;

    invoke-direct {v7}, Lcom/vkontakte/android/fragments/SettingsFragment;-><init>()V

    .line 247
    .local v7, "f":Landroid/app/Fragment;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v17

    const v18, 0x7f09001b

    const-string v19, "settings"

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v7, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/FragmentTransaction;->commit()I

    .line 248
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/MainActivity;->needClearSettings:Z

    .line 327
    .end local v7    # "f":Landroid/app/Fragment;
    .end local v9    # "fn":Ljava/lang/String;
    .end local v13    # "sf":Lcom/actionbarsherlock/app/SherlockFragment;
    :goto_1
    return-void

    .line 251
    .restart local v9    # "fn":Ljava/lang/String;
    :cond_3
    new-instance v17, Landroid/content/Intent;

    const-class v18, Lcom/vkontakte/android/SettingsActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 281
    .end local v9    # "fn":Ljava/lang/String;
    :goto_2
    new-instance v17, Landroid/content/Intent;

    const-class v18, Lcom/vkontakte/android/LongPollService;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 282
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/data/Friends;->reload(Z)V

    .line 283
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/data/Groups;->reload(Z)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MainActivity;->contentView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    new-instance v18, Lcom/vkontakte/android/MainActivity$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/MainActivity$3;-><init>(Lcom/vkontakte/android/MainActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 298
    :try_start_1
    new-instance v15, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 299
    .local v15, "webView":Landroid/webkit/WebView;
    sget-object v17, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 300
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 301
    invoke-virtual {v15}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 302
    new-instance v17, Lcom/vkontakte/android/MainActivity$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/MainActivity$4;-><init>(Lcom/vkontakte/android/MainActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 315
    const-string v17, "http://m.vk.com/counters.php"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 317
    .end local v15    # "webView":Landroid/webkit/WebView;
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->setTitleMarquee()V

    .line 318
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->checkForIntro()V

    goto/16 :goto_1

    .line 255
    .restart local v9    # "fn":Ljava/lang/String;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/MainActivity;->needClearSettings:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v17

    const-string v18, "settings"

    invoke-virtual/range {v17 .. v18}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v12

    .line 258
    .local v12, "settings":Landroid/app/Fragment;
    if-eqz v12, :cond_5

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/FragmentTransaction;->commit()I

    .line 260
    :cond_5
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/MainActivity;->needClearSettings:Z

    .line 262
    .end local v12    # "settings":Landroid/app/Fragment;
    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "com.vkontakte.android.fragments."

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 263
    .local v5, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/actionbarsherlock/app/SherlockFragment;

    .line 264
    .local v10, "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "args"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/actionbarsherlock/app/SherlockFragment;->setArguments(Landroid/os/Bundle;)V

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v17

    const v18, 0x7f09001b

    const-string v19, "news"

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v10, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 268
    .end local v5    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    :catch_0
    move-exception v16

    .line 269
    .local v16, "x":Ljava/lang/Exception;
    const-string v17, "vk"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Error starting fragment! "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    const v17, 0x7f080068

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->finish()V

    goto/16 :goto_2

    .line 275
    .end local v9    # "fn":Ljava/lang/String;
    .end local v16    # "x":Ljava/lang/Exception;
    :cond_7
    if-nez p1, :cond_8

    .line 276
    new-instance v10, Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-direct {v10}, Lcom/vkontakte/android/fragments/NewsFragment;-><init>()V

    .line 277
    .local v10, "fragment":Lcom/vkontakte/android/fragments/NewsFragment;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v17

    const v18, 0x7f09001b

    const-string v19, "news"

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v10, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 279
    .end local v10    # "fragment":Lcom/vkontakte/android/fragments/NewsFragment;
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->setTitleMarquee()V

    goto/16 :goto_2

    .line 285
    :cond_9
    new-instance v17, Landroid/content/Intent;

    const-class v18, Lcom/vkontakte/android/AuthActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v18, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 316
    :catch_1
    move-exception v17

    goto/16 :goto_3

    .line 230
    .end local v8    # "filter":Landroid/content/IntentFilter;
    .end local v11    # "prefs":Landroid/content/SharedPreferences;
    :catch_2
    move-exception v17

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 375
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onDestroy()V

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 490
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 491
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MenuOverlayView;->openMenu()V

    .line 493
    :cond_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 418
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPause()V

    .line 419
    invoke-static {}, Lcom/vkontakte/android/AppStateTracker;->onActivityPaused()V

    .line 420
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 388
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    .line 389
    invoke-static {p0}, Lcom/vkontakte/android/AppStateTracker;->onActivityResumed(Landroid/app/Activity;)V

    .line 392
    iget-boolean v1, p0, Lcom/vkontakte/android/MainActivity;->showNewsOnResume:Z

    if-eqz v1, :cond_0

    .line 393
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkontakte/android/MainActivity;->showNewsOnResume:Z

    .line 394
    new-instance v0, Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-direct {v0}, Lcom/vkontakte/android/fragments/NewsFragment;-><init>()V

    .line 395
    .local v0, "fragment":Lcom/vkontakte/android/fragments/NewsFragment;
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f09001b

    const-string v3, "news"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 398
    .end local v0    # "fragment":Lcom/vkontakte/android/fragments/NewsFragment;
    :cond_0
    sget-object v1, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/vkontakte/android/MainActivity;->lastUpdatedCounters:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2710

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 399
    sget-object v1, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    invoke-static {}, Lcom/vkontakte/android/LongPollService;->updateCounters()V

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/vkontakte/android/MainActivity;->lastUpdatedCounters:J

    .line 402
    :cond_1
    invoke-static {p0}, Lcom/vkontakte/android/NetworkStateReceiver;->getNotifications(Landroid/content/Context;)V

    .line 403
    return-void
.end method

.method public restartAfterLogout()V
    .locals 3

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->finish()V

    .line 538
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 539
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 540
    return-void
.end method

.method public setTitle(I)V
    .locals 0
    .param p1, "res"    # I

    .prologue
    .line 575
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setTitle(I)V

    .line 576
    invoke-direct {p0}, Lcom/vkontakte/android/MainActivity;->setTitleMarquee()V

    .line 577
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 570
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 571
    invoke-direct {p0}, Lcom/vkontakte/android/MainActivity;->setTitleMarquee()V

    .line 572
    return-void
.end method
