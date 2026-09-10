.class public Lcom/vkontakte/android/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


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

.field private drawerOpen:Z

.field private drawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

.field private lastUpdatedCounters:J

.field private menu:Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;

.field private menuList:Lcom/vkontakte/android/MenuListView;

.field private needClearSettings:Z

.field private prevStackSize:I

.field private showNewsOnResume:Z

.field private title:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 57
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 58
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 59
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected:Z

    .line 61
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/vkontakte/android/NetworkStateReceiver;->updateInfo(Landroid/content/Context;)V

    .line 63
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    iput-boolean v2, p0, Lcom/vkontakte/android/MainActivity;->showNewsOnResume:Z

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/MainActivity;->lastUpdatedCounters:J

    .line 69
    iput v2, p0, Lcom/vkontakte/android/MainActivity;->prevStackSize:I

    .line 70
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MainActivity;->abStates:Ljava/util/Stack;

    .line 71
    iput-boolean v2, p0, Lcom/vkontakte/android/MainActivity;->needClearSettings:Z

    .line 75
    iput-boolean v2, p0, Lcom/vkontakte/android/MainActivity;->drawerOpen:Z

    .line 463
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/MainActivity;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/vkontakte/android/MainActivity;->drawerOpen:Z

    return v0
.end method

.method static synthetic access$002(Lcom/vkontakte/android/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/vkontakte/android/MainActivity;->drawerOpen:Z

    return p1
.end method

.method static synthetic access$100(Lcom/vkontakte/android/MainActivity;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/MainActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/MainActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/vkontakte/android/MainActivity;->updateMenuMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/vkontakte/android/MainActivity;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/MainActivity;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/vkontakte/android/MainActivity;->setTextViewMarquee(Landroid/widget/TextView;)V

    return-void
.end method

.method private checkForIntro()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 291
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/vkontakte/android/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "intro"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 293
    .local v1, "intro":I
    and-int/lit8 v2, v1, 0x1

    if-gtz v2, :cond_0

    and-int/lit8 v2, v1, 0x2

    if-lez v2, :cond_2

    .line 294
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/SuggestionsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    .local v0, "intent":Landroid/content/Intent;
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_1

    .line 296
    const-string v2, "groups"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 298
    :cond_1
    const/16 v2, 0x65

    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 300
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method private setTextViewMarquee(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "t"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x1

    .line 455
    if-nez p1, :cond_0

    .line 461
    :goto_0
    return-void

    .line 456
    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 457
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 458
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 459
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    .line 460
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    goto :goto_0
.end method

.method private setTitleMarquee()V
    .locals 4

    .prologue
    .line 428
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->contentView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 452
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->contentView:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/vkontakte/android/MainActivity$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MainActivity$6;-><init>(Lcom/vkontakte/android/MainActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static showAbout(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 342
    :try_start_0
    new-instance v2, Lcom/vkontakte/android/MainActivity$4;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/MainActivity$4;-><init>(Landroid/content/Context;)V

    .line 351
    .local v2, "igetter":Landroid/text/Html$ImageGetter;
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 352
    .local v1, "dlg":Landroid/app/AlertDialog$Builder;
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    .line 353
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

    .line 354
    .restart local v1    # "dlg":Landroid/app/AlertDialog$Builder;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0162

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<br/><img src=\'1\'/><br/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0d0000

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

    .line 356
    const-string v3, "OK"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 357
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_1

    .line 358
    const v3, 0x108009b

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 359
    :cond_1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 360
    .local v0, "d":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f0201ea

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 361
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, -0x602404

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 362
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, -0x7f602404

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 363
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 364
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 365
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/MainActivity$5;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/MainActivity$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .end local v0    # "d":Landroid/app/AlertDialog;
    .end local v1    # "dlg":Landroid/app/AlertDialog$Builder;
    .end local v2    # "igetter":Landroid/text/Html$ImageGetter;
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private updateMenuMode()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 308
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->menuList:Lcom/vkontakte/android/MenuListView;

    new-instance v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-static {p0}, Lcom/vkontakte/android/MenuListView;->getRecommendedWidth(Landroid/content/Context;)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x3

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/MenuListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->menu:Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->isShownFixed()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 310
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->menu:Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->isShownFixed()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 311
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->drawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    iget-object v3, p0, Lcom/vkontakte/android/MainActivity;->menu:Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->isShownFixed()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 326
    return-void

    :cond_0
    move v0, v2

    .line 309
    goto :goto_0

    :cond_1
    move v0, v2

    .line 310
    goto :goto_1

    :cond_2
    move v1, v2

    .line 311
    goto :goto_2
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

    .line 387
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 388
    const/16 v1, 0x64

    if-ne p1, v1, :cond_2

    .line 389
    if-ne p2, v4, :cond_4

    .line 392
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 393
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/vkontakte/android/NetworkStateReceiver;->updateInfo(Landroid/content/Context;)V

    .line 394
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity;->menuList:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/MenuListView;->updateUserInfo()V

    .line 395
    const-string v1, "enableC2DM"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/vkontakte/android/C2DM;->start()V

    .line 396
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/LongPollService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 397
    iput-boolean v5, p0, Lcom/vkontakte/android/MainActivity;->showNewsOnResume:Z

    .line 398
    invoke-static {v3}, Lcom/vkontakte/android/data/Friends;->reload(Z)V

    .line 399
    invoke-static {v3}, Lcom/vkontakte/android/data/Groups;->reload(Z)V

    .line 400
    invoke-static {}, Lcom/vkontakte/android/data/Stickers;->updateInfo()V

    .line 401
    sget-object v1, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    if-eqz v1, :cond_1

    .line 402
    sget-object v1, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    invoke-static {}, Lcom/vkontakte/android/LongPollService;->updateCounters()V

    .line 403
    :cond_1
    invoke-direct {p0}, Lcom/vkontakte/android/MainActivity;->checkForIntro()V

    .line 408
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    :goto_0
    const/16 v1, 0x65

    if-ne p1, v1, :cond_3

    if-eq p2, v4, :cond_3

    .line 409
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->finish()V

    .line 411
    :cond_3
    return-void

    .line 405
    :cond_4
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f080014

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 470
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/vkontakte/android/fragments/BackListener;

    if-eqz v1, :cond_0

    .line 471
    check-cast v0, Lcom/vkontakte/android/fragments/BackListener;

    .end local v0    # "f":Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/vkontakte/android/fragments/BackListener;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    :goto_0
    return-void

    .line 475
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onBackStackChanged()V
    .locals 3

    .prologue
    .line 480
    iget v1, p0, Lcom/vkontakte/android/MainActivity;->prevStackSize:I

    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 481
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity;->abStates:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/MainActivity$ActionBarState;

    .line 482
    .local v0, "st":Lcom/vkontakte/android/MainActivity$ActionBarState;
    iget-object v1, v0, Lcom/vkontakte/android/MainActivity$ActionBarState;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/MainActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 483
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget v2, v0, Lcom/vkontakte/android/MainActivity$ActionBarState;->displayOpts:I

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 490
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/MainActivity;->prevStackSize:I

    .line 491
    return-void

    .line 485
    .end local v0    # "st":Lcom/vkontakte/android/MainActivity$ActionBarState;
    :cond_0
    new-instance v0, Lcom/vkontakte/android/MainActivity$ActionBarState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/MainActivity$ActionBarState;-><init>(Lcom/vkontakte/android/MainActivity$1;)V

    .line 486
    .restart local v0    # "st":Lcom/vkontakte/android/MainActivity$ActionBarState;
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/MainActivity$ActionBarState;->title:Ljava/lang/CharSequence;

    .line 487
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/MainActivity$ActionBarState;->displayOpts:I

    .line 488
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity;->abStates:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 266
    invoke-direct {p0}, Lcom/vkontakte/android/MainActivity;->updateMenuMode()V

    .line 267
    invoke-direct {p0}, Lcom/vkontakte/android/MainActivity;->setTitleMarquee()V

    .line 268
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->drawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->syncState()V

    .line 269
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->drawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    iget-object v1, p0, Lcom/vkontakte/android/MainActivity;->menuList:Lcom/vkontakte/android/MenuListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ActionBarDrawerToggle;->onDrawerSlide(Landroid/view/View;F)V

    .line 270
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-static {}, Lcom/vkontakte/android/C2DM;->checkForUpdate()V

    .line 81
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/MainActivity;->contentView:Landroid/widget/FrameLayout;

    .line 82
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->contentView:Landroid/widget/FrameLayout;

    const v1, 0x7f080014

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 85
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0201ea

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 87
    new-instance v0, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/MainActivity;->menu:Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;

    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->menu:Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;

    iget-object v1, p0, Lcom/vkontakte/android/MainActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->addView(Landroid/view/View;)V

    .line 89
    new-instance v0, Lcom/vkontakte/android/MenuListView;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/MenuListView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/vkontakte/android/MainActivity;->menuList:Lcom/vkontakte/android/MenuListView;

    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->menu:Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;

    iget-object v1, p0, Lcom/vkontakte/android/MainActivity;->menuList:Lcom/vkontakte/android/MenuListView;

    new-instance v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-static {p0}, Lcom/vkontakte/android/MenuListView;->getRecommendedWidth(Landroid/content/Context;)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->menu:Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MainActivity;->setContentView(Landroid/view/View;)V

    .line 94
    new-instance v0, Lcom/vkontakte/android/MainActivity$1;

    iget-object v3, p0, Lcom/vkontakte/android/MainActivity;->menu:Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;

    const v4, 0x7f0200c4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/MainActivity$1;-><init>(Lcom/vkontakte/android/MainActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    iput-object v0, p0, Lcom/vkontakte/android/MainActivity;->drawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    .line 153
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->menu:Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;

    new-instance v1, Lcom/vkontakte/android/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MainActivity$2;-><init>(Lcom/vkontakte/android/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->setOnFixedStateChangedListener(Lcom/vkontakte/android/ui/TabletAwareDrawerLayout$OnFixedStateChangedListener;)V

    .line 160
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->menu:Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;

    iget-object v1, p0, Lcom/vkontakte/android/MainActivity;->drawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 161
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 162
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 170
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 171
    .local v11, "prefs":Landroid/content/SharedPreferences;
    const-string v0, "sid"

    invoke-interface {v11, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "uid"

    invoke-interface {v11, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "uid"

    const/4 v1, 0x0

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_4

    .line 172
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v0

    const-string v1, "vk_uid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "class"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "class"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 175
    .local v9, "fn":Ljava/lang/String;
    const-string v0, "_settings"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 177
    new-instance v12, Landroid/app/Fragment;

    invoke-direct {v12}, Landroid/app/Fragment;-><init>()V

    .line 178
    .local v12, "sf":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f080014

    const-string v2, "content"

    invoke-virtual {v0, v1, v12, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 179
    new-instance v8, Lcom/vkontakte/android/fragments/SettingsFragment;

    invoke-direct {v8}, Lcom/vkontakte/android/fragments/SettingsFragment;-><init>()V

    .line 180
    .local v8, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f080014

    const-string v2, "settings"

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/MainActivity;->needClearSettings:Z

    .line 248
    .end local v8    # "f":Landroid/app/Fragment;
    .end local v9    # "fn":Ljava/lang/String;
    .end local v12    # "sf":Landroid/app/Fragment;
    :goto_0
    return-void

    .line 184
    .restart local v9    # "fn":Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 208
    .end local v9    # "fn":Ljava/lang/String;
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/LongPollService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 209
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vkontakte/android/data/Friends;->reload(Z)V

    .line 210
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vkontakte/android/data/Groups;->reload(Z)V

    .line 216
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 219
    :try_start_0
    new-instance v13, Landroid/webkit/WebView;

    invoke-direct {v13, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 220
    .local v13, "webView":Landroid/webkit/WebView;
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 221
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 222
    invoke-virtual {v13}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 223
    new-instance v0, Lcom/vkontakte/android/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MainActivity$3;-><init>(Lcom/vkontakte/android/MainActivity;)V

    invoke-virtual {v13, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 236
    const-string v0, "http://m.vk.com/counters.php"

    invoke-virtual {v13, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 238
    .end local v13    # "webView":Landroid/webkit/WebView;
    :goto_2
    invoke-direct {p0}, Lcom/vkontakte/android/MainActivity;->setTitleMarquee()V

    .line 239
    invoke-direct {p0}, Lcom/vkontakte/android/MainActivity;->checkForIntro()V

    goto :goto_0

    .line 188
    .restart local v9    # "fn":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.vkontakte.android.fragments."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 189
    .local v7, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/Fragment;

    .line 190
    .local v10, "fragment":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "args"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f080014

    const-string v2, "news"

    invoke-virtual {v0, v1, v10, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 194
    .end local v7    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "fragment":Landroid/app/Fragment;
    :catch_0
    move-exception v14

    .line 195
    .local v14, "x":Ljava/lang/Exception;
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error starting fragment! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v14}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    const v0, 0x7f0d00d0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 197
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->finish()V

    goto/16 :goto_1

    .line 201
    .end local v9    # "fn":Ljava/lang/String;
    .end local v14    # "x":Ljava/lang/Exception;
    :cond_2
    if-nez p1, :cond_3

    .line 203
    new-instance v10, Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-direct {v10}, Lcom/vkontakte/android/fragments/NewsFragment;-><init>()V

    .line 204
    .local v10, "fragment":Lcom/vkontakte/android/fragments/NewsFragment;
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f080014

    const-string v2, "news"

    invoke-virtual {v0, v1, v10, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 206
    .end local v10    # "fragment":Lcom/vkontakte/android/fragments/NewsFragment;
    :cond_3
    invoke-direct {p0}, Lcom/vkontakte/android/MainActivity;->setTitleMarquee()V

    goto/16 :goto_1

    .line 212
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/AuthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 237
    :catch_1
    move-exception v0

    goto/16 :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->drawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    const/4 v0, 0x1

    .line 337
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 303
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 304
    invoke-static {}, Lcom/vkontakte/android/AppStateTracker;->onActivityPaused()V

    .line 305
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 252
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 254
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->drawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->syncState()V

    .line 255
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "m"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 259
    iget-boolean v0, p0, Lcom/vkontakte/android/MainActivity;->drawerOpen:Z

    if-eqz v0, :cond_0

    .line 260
    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 261
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 273
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 274
    invoke-static {p0}, Lcom/vkontakte/android/AppStateTracker;->onActivityResumed(Landroid/app/Activity;)V

    .line 277
    iget-boolean v1, p0, Lcom/vkontakte/android/MainActivity;->showNewsOnResume:Z

    if-eqz v1, :cond_0

    .line 278
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkontakte/android/MainActivity;->showNewsOnResume:Z

    .line 279
    new-instance v0, Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-direct {v0}, Lcom/vkontakte/android/fragments/NewsFragment;-><init>()V

    .line 280
    .local v0, "fragment":Lcom/vkontakte/android/fragments/NewsFragment;
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080014

    const-string v3, "news"

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 283
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

    .line 284
    sget-object v1, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    invoke-static {}, Lcom/vkontakte/android/LongPollService;->updateCounters()V

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/vkontakte/android/MainActivity;->lastUpdatedCounters:J

    .line 287
    :cond_1
    invoke-static {p0}, Lcom/vkontakte/android/NetworkStateReceiver;->getNotifications(Landroid/content/Context;)V

    .line 288
    return-void
.end method

.method public restartAfterLogout()V
    .locals 3

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->finish()V

    .line 382
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 383
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 384
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/vkontakte/android/MainActivity;->drawerOpen:Z

    if-nez v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 423
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/MainActivity;->title:Ljava/lang/CharSequence;

    .line 424
    invoke-direct {p0}, Lcom/vkontakte/android/MainActivity;->setTitleMarquee()V

    .line 425
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/vkontakte/android/MainActivity;->drawerOpen:Z

    if-nez v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 416
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/MainActivity;->title:Ljava/lang/CharSequence;

    .line 417
    invoke-direct {p0}, Lcom/vkontakte/android/MainActivity;->setTitleMarquee()V

    .line 418
    return-void
.end method
