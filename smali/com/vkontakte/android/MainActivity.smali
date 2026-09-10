.class public Lcom/vkontakte/android/MainActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/MainActivity$ActionBarState;,
        Lcom/vkontakte/android/MainActivity$CounterDrawable;
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
    .line 66
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 67
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 68
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected:Z

    .line 70
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/vkontakte/android/NetworkStateReceiver;->updateInfo(Landroid/content/Context;)V

    .line 72
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 76
    iput-boolean v2, p0, Lcom/vkontakte/android/MainActivity;->showNewsOnResume:Z

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/MainActivity;->lastUpdatedCounters:J

    .line 79
    iput v2, p0, Lcom/vkontakte/android/MainActivity;->prevStackSize:I

    .line 80
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MainActivity;->abStates:Ljava/util/Stack;

    .line 81
    iput-boolean v2, p0, Lcom/vkontakte/android/MainActivity;->needClearSettings:Z

    .line 83
    new-instance v0, Lcom/vkontakte/android/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MainActivity$1;-><init>(Lcom/vkontakte/android/MainActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/MainActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 63
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/MainActivity;I)V
    .locals 0

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lcom/vkontakte/android/MainActivity;->updateCounter(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/MainActivity;)Lcom/vkontakte/android/ui/MenuOverlayView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/MainActivity;Z)V
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/vkontakte/android/MainActivity;->needClearSettings:Z

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/MainActivity;)Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/vkontakte/android/MainActivity;->needClearSettings:Z

    return v0
.end method

.method public static showAbout(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 459
    :try_start_0
    new-instance v2, Lcom/vkontakte/android/MainActivity$5;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/MainActivity$5;-><init>(Landroid/content/Context;)V

    .line 468
    .local v2, "igetter":Landroid/text/Html$ImageGetter;
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 469
    .local v1, "dlg":Landroid/app/AlertDialog$Builder;
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    .line 470
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

    .line 471
    .restart local v1    # "dlg":Landroid/app/AlertDialog$Builder;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<br/><img src=\'1\'/><br/>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060029

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

    .line 473
    const-string v3, "OK"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 474
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_1

    .line 475
    const v3, 0x108009b

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 476
    :cond_1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 477
    .local v0, "d":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f020244

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 478
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, -0x602404

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 479
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, -0x7f602404

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 480
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 481
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    .end local v0    # "d":Landroid/app/AlertDialog;
    .end local v1    # "dlg":Landroid/app/AlertDialog$Builder;
    .end local v2    # "igetter":Landroid/text/Html$ImageGetter;
    :goto_0
    return-void

    .line 483
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

    .line 401
    iget-object v9, p0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-nez v9, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 402
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

    .line 403
    iget-object v8, p0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 406
    :cond_2
    const/4 v5, 0x0

    .line 407
    .local v5, "text":Ljava/lang/String;
    const/16 v9, 0x3e8

    if-ge p1, v9, :cond_7

    .line 408
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 414
    :cond_3
    :goto_1
    if-nez v5, :cond_4

    .line 415
    const-string v5, ""

    .line 416
    const/4 p1, 0x0

    .line 418
    :cond_4
    iget-object v9, p0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v9, p0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    if-lez p1, :cond_9

    :goto_2
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    if-lez p1, :cond_0

    .line 422
    const/4 v8, 0x2

    :try_start_0
    new-array v7, v8, [I

    .line 423
    .local v7, "xy":[I
    const/4 v3, 0x0

    .line 424
    .local v3, "offsetX":I
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/high16 v9, 0x41980000    # 19.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    const/16 v10, 0x33

    invoke-direct {v2, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 425
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

    .line 426
    iget-object v8, p0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    .line 427
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

    .line 428
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "action_bar_container"

    const-string v10, "id"

    const-string v11, "android"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 429
    .local v0, "btnId":I
    if-nez v0, :cond_5

    const v0, 0x7f080031

    .line 430
    :cond_5
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 431
    const/4 v8, 0x0

    aget v3, v7, v8

    .line 432
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "home"

    const-string v10, "id"

    const-string v11, "android"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 433
    if-nez v0, :cond_6

    const v0, 0x7f08000a

    .line 434
    :cond_6
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 435
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 436
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 437
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 438
    const/4 v8, 0x1

    aget v8, v7, v8

    iget v9, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 439
    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v9

    if-le v8, v9, :cond_a

    .line 440
    const/4 v8, 0x0

    aget v8, v7, v8

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 444
    :goto_3
    iget v8, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v8, v3

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 445
    iget-object v8, p0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 446
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

    .line 409
    :cond_7
    const/16 v9, 0x3e8

    if-lt p1, v9, :cond_8

    const v9, 0xf4240

    if-ge p1, v9, :cond_8

    .line 410
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

    .line 411
    goto/16 :goto_1

    :cond_8
    const v9, 0xf4240

    if-lt p1, v9, :cond_3

    .line 412
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

    .line 419
    :cond_9
    const/16 v8, 0x8

    goto/16 :goto_2

    .line 442
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

    .line 384
    sget-boolean v1, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v1, :cond_0

    .line 385
    sget v1, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    sget v2, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    add-int/2addr v1, v2

    sget v2, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    add-int v0, v1, v2

    .line 386
    .local v0, "sum":I
    invoke-direct {p0, v0}, Lcom/vkontakte/android/MainActivity;->updateCounter(I)V

    .line 387
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

    .line 388
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->setMode(I)V

    .line 389
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0200e3

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 390
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 398
    .end local v0    # "sum":I
    :cond_0
    :goto_0
    return-void

    .line 393
    .restart local v0    # "sum":I
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/ui/MenuOverlayView;->setMode(I)V

    .line 394
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const v2, 0x7f020145

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 395
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 493
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 494
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    .line 495
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 496
    const-string v1, "vk"

    const-string v2, "RESULT_OK"

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v1

    const-string v2, "vk_uid"

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 498
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 499
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/vkontakte/android/NetworkStateReceiver;->updateInfo(Landroid/content/Context;)V

    .line 500
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->updateInfo()V

    .line 501
    const-string v1, "enableC2DM"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/vkontakte/android/C2DM;->start()V

    .line 502
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/LongPollService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 503
    iput-boolean v6, p0, Lcom/vkontakte/android/MainActivity;->showNewsOnResume:Z

    .line 504
    invoke-static {v5}, Lcom/vkontakte/android/data/Friends;->reload(Z)V

    .line 505
    invoke-static {v5}, Lcom/vkontakte/android/data/Groups;->reload(Z)V

    .line 506
    sget-object v1, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    if-eqz v1, :cond_1

    .line 507
    sget-object v1, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    invoke-static {}, Lcom/vkontakte/android/LongPollService;->updateCounters()V

    .line 512
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-void

    .line 509
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->finish()V

    goto :goto_0
.end method

.method public onBackStackChanged()V
    .locals 3

    .prologue
    .line 588
    iget v1, p0, Lcom/vkontakte/android/MainActivity;->prevStackSize:I

    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 589
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity;->abStates:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/MainActivity$ActionBarState;

    .line 590
    .local v0, "st":Lcom/vkontakte/android/MainActivity$ActionBarState;
    iget-object v1, v0, Lcom/vkontakte/android/MainActivity$ActionBarState;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/MainActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 591
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    iget v2, v0, Lcom/vkontakte/android/MainActivity$ActionBarState;->displayOpts:I

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayOptions(I)V

    .line 598
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/MainActivity;->prevStackSize:I

    .line 599
    return-void

    .line 593
    .end local v0    # "st":Lcom/vkontakte/android/MainActivity$ActionBarState;
    :cond_0
    new-instance v0, Lcom/vkontakte/android/MainActivity$ActionBarState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/MainActivity$ActionBarState;-><init>(Lcom/vkontakte/android/MainActivity$ActionBarState;)V

    .line 594
    .restart local v0    # "st":Lcom/vkontakte/android/MainActivity$ActionBarState;
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/MainActivity$ActionBarState;->title:Ljava/lang/CharSequence;

    .line 595
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->getDisplayOptions()I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/MainActivity$ActionBarState;->displayOpts:I

    .line 596
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity;->abStates:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 356
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 357
    invoke-direct {p0}, Lcom/vkontakte/android/MainActivity;->updateMenuMode()V

    .line 358
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super/range {p0 .. p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-static {}, Lcom/vkontakte/android/C2DM;->checkForUpdate()V

    .line 97
    new-instance v13, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/vkontakte/android/MainActivity;->contentView:Landroid/widget/FrameLayout;

    .line 98
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/MainActivity;->contentView:Landroid/widget/FrameLayout;

    const v14, 0x7f080012

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setId(I)V

    .line 99
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/MainActivity;->contentView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/MainActivity;->setContentView(Landroid/view/View;)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    const v14, 0x7f020244

    invoke-virtual {v13, v14}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 103
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x9

    if-ge v13, v14, :cond_0

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/view/Window;->setFormat(I)V

    .line 107
    :cond_0
    
    new-instance v13, Lcom/vkontakte/android/ui/MenuOverlayView;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/vkontakte/android/ui/MenuOverlayView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/vkontakte/android/MainActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 126
    .local v3, "decorView":Landroid/widget/FrameLayout;
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 127
    .local v10, "vr":Landroid/view/View;
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 128
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/MainActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v13, v10}, Lcom/vkontakte/android/ui/MenuOverlayView;->addView(Landroid/view/View;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/MainActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v3, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 132
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/MainActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v13}, Lcom/vkontakte/android/ui/MenuOverlayView;->getListView()Lcom/vkontakte/android/MenuListView;

    move-result-object v13

    new-instance v14, Lcom/vkontakte/android/MainActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vkontakte/android/MainActivity$2;-><init>(Lcom/vkontakte/android/MainActivity;)V

    invoke-virtual {v13, v14}, Lcom/vkontakte/android/MenuListView;->setListener(Lcom/vkontakte/android/MenuListView$Listener;)V

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v13

    const v14, 0x7f020145

    invoke-virtual {v13, v14}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 242
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "action_bar_container"

    const-string v15, "id"

    const-string v16, "android"

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 243
    .local v1, "btnId":I
    if-nez v1, :cond_2

    const v1, 0x7f080031

    .line 244
    :cond_2
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    .line 245
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    const v14, 0x7f080014

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setId(I)V

    .line 246
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    const v14, 0x7f02008b

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 247
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    const v14, -0xc09869

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    sget-object v14, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    const/4 v14, 0x1

    const/high16 v15, 0x41500000    # 13.0f

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 250
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v14

    const/high16 v15, -0x40800000    # -1.0f

    invoke-static {v15}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v17

    invoke-virtual/range {v13 .. v17}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 253
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/MainActivity;->counter:Landroid/widget/TextView;

    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v16, -0x2

    const/high16 v17, 0x41980000    # 19.0f

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v17

    const/16 v18, 0x33

    invoke-direct/range {v15 .. v18}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v13, v14, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 256
    :goto_0
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 257
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v13, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-virtual {v5, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/MainActivity;->receiver:Landroid/content/BroadcastReceiver;

    const-string v14, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v5, v14, v15}, Lcom/vkontakte/android/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 259
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->updateMenuMode()V

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 262
    .local v8, "prefs":Landroid/content/SharedPreferences;
    const-string v13, "sid"

    invoke-interface {v8, v13}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    const-string v13, "uid"

    invoke-interface {v8, v13}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    const-string v13, "uid"

    const/4 v14, 0x0

    invoke-interface {v8, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    if-lez v13, :cond_6

    .line 263
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v13

    const-string v14, "vk_uid"

    new-instance v15, Ljava/lang/StringBuilder;

    sget v16, Lcom/vkontakte/android/Global;->uid:I

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "class"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "class"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 266
    .local v6, "fn":Ljava/lang/String;
    const-string v13, "_settings"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 267
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0xb

    if-lt v13, v14, :cond_3

    .line 268
    new-instance v9, Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-direct {v9}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 269
    .local v9, "sf":Lcom/actionbarsherlock/app/SherlockFragment;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v13

    const v14, 0x7f080012

    const-string v15, "content"

    invoke-virtual {v13, v14, v9, v15}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 270
    new-instance v4, Lcom/vkontakte/android/fragments/SettingsFragment;

    invoke-direct {v4}, Lcom/vkontakte/android/fragments/SettingsFragment;-><init>()V

    .line 271
    .local v4, "f":Landroid/app/Fragment;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v13

    const v14, 0x7f080012

    const-string v15, "content"

    invoke-virtual {v13, v14, v4, v15}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/FragmentTransaction;->commit()I

    .line 272
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/vkontakte/android/MainActivity;->needClearSettings:Z

    .line 346
    .end local v4    # "f":Landroid/app/Fragment;
    .end local v6    # "fn":Ljava/lang/String;
    .end local v9    # "sf":Lcom/actionbarsherlock/app/SherlockFragment;
    :goto_1
    return-void

    .line 275
    .restart local v6    # "fn":Ljava/lang/String;
    :cond_3
    new-instance v13, Landroid/content/Intent;

    const-class v14, Lcom/vkontakte/android/SettingsActivity;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 276
    new-instance v7, Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-direct {v7}, Lcom/vkontakte/android/fragments/NewsFragment;-><init>()V

    .line 277
    .local v7, "fragment":Lcom/vkontakte/android/fragments/NewsFragment;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v13

    const v14, 0x7f080012

    const-string v15, "news"

    invoke-virtual {v13, v14, v7, v15}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 295
    .end local v6    # "fn":Ljava/lang/String;
    .end local v7    # "fragment":Lcom/vkontakte/android/fragments/NewsFragment;
    :goto_2
    new-instance v13, Landroid/content/Intent;

    const-class v14, Lcom/vkontakte/android/LongPollService;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 296
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/vkontakte/android/data/Friends;->reload(Z)V

    .line 297
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/vkontakte/android/data/Groups;->reload(Z)V

    .line 303
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/MainActivity;->contentView:Landroid/widget/FrameLayout;

    new-instance v14, Lcom/vkontakte/android/MainActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vkontakte/android/MainActivity$3;-><init>(Lcom/vkontakte/android/MainActivity;)V

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 328
    new-instance v11, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 329
    .local v11, "webView":Landroid/webkit/WebView;
    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v13}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 330
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 331
    invoke-virtual {v11}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 332
    new-instance v13, Lcom/vkontakte/android/MainActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/vkontakte/android/MainActivity$4;-><init>(Lcom/vkontakte/android/MainActivity;)V

    invoke-virtual {v11, v13}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 345
    const-string v13, "http://m.vk.com/counters.php"

    invoke-virtual {v11, v13}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 281
    .end local v11    # "webView":Landroid/webkit/WebView;
    .restart local v6    # "fn":Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "com.vkontakte.android.fragments."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 282
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/actionbarsherlock/app/SherlockFragment;

    .line 283
    .local v7, "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "args"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/actionbarsherlock/app/SherlockFragment;->setArguments(Landroid/os/Bundle;)V

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v13

    const v14, 0x7f080012

    const-string v15, "news"

    invoke-virtual {v13, v14, v7, v15}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 285
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    :catch_0
    move-exception v12

    .line 286
    .local v12, "x":Ljava/lang/Exception;
    const-string v13, "vk"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Error starting fragment! "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v12}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    const v13, 0x7f06004e

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->finish()V

    goto/16 :goto_2

    .line 292
    .end local v6    # "fn":Ljava/lang/String;
    .end local v12    # "x":Ljava/lang/Exception;
    :cond_5
    new-instance v7, Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-direct {v7}, Lcom/vkontakte/android/fragments/NewsFragment;-><init>()V

    .line 293
    .local v7, "fragment":Lcom/vkontakte/android/fragments/NewsFragment;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v13

    const v14, 0x7f080012

    const-string v15, "news"

    invoke-virtual {v13, v14, v7, v15}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_2

    .line 299
    .end local v7    # "fragment":Lcom/vkontakte/android/fragments/NewsFragment;
    :cond_6
    new-instance v13, Landroid/content/Intent;

    const-class v14, Lcom/vkontakte/android/AuthActivity;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v14, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/vkontakte/android/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 254
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "prefs":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v13

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 349
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onDestroy()V

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 451
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 452
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MenuOverlayView;->openMenu()V

    .line 454
    :cond_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 379
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPause()V

    .line 380
    invoke-static {}, Lcom/vkontakte/android/AppStateTracker;->onActivityPaused()V

    .line 381
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 361
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    .line 362
    invoke-static {p0}, Lcom/vkontakte/android/AppStateTracker;->onActivityResumed(Landroid/app/Activity;)V

    .line 365
    iget-boolean v1, p0, Lcom/vkontakte/android/MainActivity;->showNewsOnResume:Z

    if-eqz v1, :cond_0

    .line 366
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkontakte/android/MainActivity;->showNewsOnResume:Z

    .line 367
    new-instance v0, Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-direct {v0}, Lcom/vkontakte/android/fragments/NewsFragment;-><init>()V

    .line 368
    .local v0, "fragment":Lcom/vkontakte/android/fragments/NewsFragment;
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080012

    const-string v3, "news"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 371
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

    .line 372
    sget-object v1, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    invoke-static {}, Lcom/vkontakte/android/LongPollService;->updateCounters()V

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/vkontakte/android/MainActivity;->lastUpdatedCounters:J

    .line 375
    :cond_1
    invoke-static {p0}, Lcom/vkontakte/android/NetworkStateReceiver;->getNotifications(Landroid/content/Context;)V

    .line 376
    return-void
.end method

.method public restartAfterLogout()V
    .locals 3

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->finish()V

    .line 488
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 489
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 490
    return-void
.end method
