.class public Lcom/vkontakte/android/TabletMainActivity;
.super Landroid/app/ActivityGroup;
.source "TabletMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;,
        Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;
    }
.end annotation


# static fields
.field private static final CONTENT_VIEW_ID:I = 0x4b41f0

.field private static final SETTINGS_REQUEST_CODE:I = 0x67

.field private static firstRun:Z

.field public static isActive:Z

.field public static lastInstance:Lcom/vkontakte/android/TabletMainActivity;


# instance fields
.field private backLevel:I

.field private contentView:Landroid/widget/LinearLayout;

.field private contentViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private contentWrap:Landroid/widget/FrameLayout;

.field private currentFragment:Landroid/app/Fragment;

.field private fgDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private inSettings:Z

.field private lastOrientation:I

.field private menu:Lcom/vkontakte/android/MenuListView;

.field private menuShadowView:Landroid/view/View;

.field private menuWidth:I

.field private menuWrap:Landroid/widget/FrameLayout;

.field private pendingTab:Ljava/lang/String;

.field private popupMenuDlg:Landroid/app/Dialog;

.field private prevC2DM:Z

.field private tabs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private tempActivityView:Landroid/view/View;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkontakte/android/TabletMainActivity;->firstRun:Z

    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/TabletMainActivity;->isActive:Z

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->contentViews:Ljava/util/ArrayList;

    .line 71
    iput-boolean v1, p0, Lcom/vkontakte/android/TabletMainActivity;->prevC2DM:Z

    .line 73
    iput-boolean v1, p0, Lcom/vkontakte/android/TabletMainActivity;->inSettings:Z

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->tabs:Ljava/util/HashMap;

    .line 81
    iput-object v2, p0, Lcom/vkontakte/android/TabletMainActivity;->currentFragment:Landroid/app/Fragment;

    .line 82
    iput v1, p0, Lcom/vkontakte/android/TabletMainActivity;->lastOrientation:I

    .line 86
    iput v1, p0, Lcom/vkontakte/android/TabletMainActivity;->backLevel:I

    .line 87
    iput-object v2, p0, Lcom/vkontakte/android/TabletMainActivity;->pendingTab:Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/vkontakte/android/TabletMainActivity$1;

    const v1, 0x18ffffff

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/TabletMainActivity$1;-><init>(Lcom/vkontakte/android/TabletMainActivity;I)V

    iput-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->fgDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 97
    const/16 v0, 0x12c

    iput v0, p0, Lcom/vkontakte/android/TabletMainActivity;->menuWidth:I

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/TabletMainActivity;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->tabs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/TabletMainActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->popupMenuDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/TabletMainActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/vkontakte/android/TabletMainActivity;->popupMenuDlg:Landroid/app/Dialog;

    return-void
.end method

.method private switchMenuMode(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const/4 v4, 0x0

    .line 591
    if-eqz p1, :cond_2

    .line 592
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/vkontakte/android/TabletMainActivity;->menuWidth:I

    int-to-float v2, v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MenuListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->menuWrap:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 595
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/MenuListView;->setVisibility(I)V

    .line 596
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->menuShadowView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->popupMenuDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->popupMenuDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->contentWrap:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity;->fgDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 604
    :goto_0
    return-void

    .line 600
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->menuWrap:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 601
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->menuShadowView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 602
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->contentWrap:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public exitApp()V
    .locals 2

    .prologue
    .line 404
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/LongPollService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/TabletMainActivity;->stopService(Landroid/content/Intent;)Z

    .line 405
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->finish()V

    .line 406
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/TabletMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 407
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/TabletMainActivity$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/TabletMainActivity$7;-><init>(Lcom/vkontakte/android/TabletMainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 414
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 415
    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 2
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 752
    instance-of v0, p1, Lcom/vkontakte/android/LinkRedirActivity;

    if-eqz v0, :cond_1

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 755
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 418
    const/16 v3, 0x64

    if-ne p1, v3, :cond_1

    .line 419
    if-ne p2, v4, :cond_4

    .line 421
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/vkontakte/android/NewsfeedActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 422
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "news"

    invoke-virtual {p0, v3, v0}, Lcom/vkontakte/android/TabletMainActivity;->showActivity(Ljava/lang/String;Landroid/content/Intent;)V

    .line 423
    sget-object v3, Lcom/vkontakte/android/NewsfeedActivity;->sharedInstance:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/NewsfeedActivity;->loadData()V

    .line 424
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v3

    const-string v4, "vk_uid"

    new-instance v5, Ljava/lang/StringBuilder;

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 425
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v8, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 427
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v3, v4}, Lcom/vkontakte/android/TabletMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "new_user"

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v4, :cond_3

    .line 428
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/vkontakte/android/TabletMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "new_user"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 429
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/vkontakte/android/SuggestFriendsActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0x68

    invoke-virtual {p0, v3, v4}, Lcom/vkontakte/android/TabletMainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/vkontakte/android/NetworkStateReceiver;->updateInfo(Landroid/content/Context;)V

    .line 436
    iget-object v3, p0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/MenuListView;->updateUserInfo()V

    .line 442
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    :goto_1
    const/16 v3, 0x67

    if-ne p1, v3, :cond_2

    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 443
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->finish()V

    .line 444
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/vkontakte/android/MainActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 445
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/TabletMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 447
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    return-void

    .line 430
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "welcome_screen_shown"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 431
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/vkontakte/android/WelcomeActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 432
    .end local v0    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/TabletMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    .line 434
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 438
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_4
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->exitApp()V

    goto :goto_1

    .line 434
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 583
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 584
    iget v0, p0, Lcom/vkontakte/android/TabletMainActivity;->lastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 585
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/vkontakte/android/TabletMainActivity;->switchMenuMode(Z)V

    .line 586
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/vkontakte/android/TabletMainActivity;->lastOrientation:I

    .line 588
    :cond_0
    return-void

    .line 585
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super/range {p0 .. p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/TabletMainActivity;->requestWindowFeature(I)Z

    .line 103
    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/TabletMainActivity;->contentView:Landroid/widget/LinearLayout;

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/TabletMainActivity;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 106
    new-instance v18, Lcom/vkontakte/android/MenuListView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/MenuListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vkontakte/android/MenuListView;->itemPadding:I

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/TabletMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/TabletMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 109
    .local v9, "lw":I
    int-to-float v0, v9

    move/from16 v18, v0

    const/high16 v19, 0x43960000    # 300.0f

    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x3e800000    # 0.25f

    cmpl-float v18, v18, v19

    if-lez v18, :cond_0

    .line 110
    const/16 v18, 0xfa

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/TabletMainActivity;->menuWidth:I

    .line 112
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/TabletMainActivity;->menuWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    const/16 v21, -0x1

    invoke-direct/range {v19 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/MenuListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/MenuListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/ui/RefreshableListView;->setHighlightAfterClick(Z)V

    .line 114
    new-instance v18, Landroid/widget/FrameLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/TabletMainActivity;->menuWrap:Landroid/widget/FrameLayout;

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/TabletMainActivity;->menuWrap:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 116
    new-instance v13, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 117
    .local v13, "shadowView":Landroid/view/View;
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/vkontakte/android/TabletMainActivity;->menuShadowView:Landroid/view/View;

    .line 118
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v18, 0x41800000    # 16.0f

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v14, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 119
    .local v14, "slp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v18, 0x5

    move/from16 v0, v18

    iput v0, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 120
    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    const v18, 0x7f0201d5

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/TabletMainActivity;->menuWrap:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/TabletMainActivity;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/TabletMainActivity;->menuWrap:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    new-instance v18, Landroid/widget/FrameLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/TabletMainActivity;->contentWrap:Landroid/widget/FrameLayout;

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/TabletMainActivity;->contentWrap:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x1

    invoke-direct/range {v19 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/TabletMainActivity;->contentWrap:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    const v19, 0x4b41f0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->setId(I)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/TabletMainActivity;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/TabletMainActivity;->contentWrap:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/TabletMainActivity;->contentWrap:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x33

    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/TabletMainActivity;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/TabletMainActivity;->setContentView(Landroid/view/View;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    move-object/from16 v18, v0

    new-instance v19, Lcom/vkontakte/android/TabletMainActivity$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/TabletMainActivity$2;-><init>(Lcom/vkontakte/android/TabletMainActivity;)V

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/MenuListView;->setListener(Lcom/vkontakte/android/MenuListView$Listener;)V

    .line 220
    sput-object p0, Lcom/vkontakte/android/TabletMainActivity;->lastInstance:Lcom/vkontakte/android/TabletMainActivity;

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/TabletMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 223
    .local v11, "prefs":Landroid/content/SharedPreferences;
    const-string v18, "sid"

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    const-string v18, "uid"

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    const-string v18, "uid"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    if-gtz v18, :cond_3

    .line 224
    :cond_1
    new-instance v18, Landroid/content/Intent;

    const-class v19, Lcom/vkontakte/android/AuthActivity;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v19, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/TabletMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 298
    :cond_2
    :goto_0
    return-void

    .line 228
    :cond_3
    new-instance v7, Landroid/content/Intent;

    const-class v18, Lcom/vkontakte/android/NewsfeedActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    .local v7, "intent":Landroid/content/Intent;
    const-string v18, "news"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Lcom/vkontakte/android/TabletMainActivity;->showActivity(Ljava/lang/String;Landroid/content/Intent;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/TabletMainActivity;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    new-instance v19, Lcom/vkontakte/android/TabletMainActivity$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/TabletMainActivity$3;-><init>(Lcom/vkontakte/android/TabletMainActivity;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/TabletMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "tab"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/TabletMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "tab"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 236
    .local v16, "tab":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/TabletMainActivity;->setTab(Ljava/lang/String;)V

    .line 239
    .end local v16    # "tab":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/TabletMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/TabletMainActivity;->lastOrientation:I

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/TabletMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 241
    .local v5, "cfg":Landroid/content/res/Configuration;
    iget v0, v5, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    const/16 v18, 0x1

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/vkontakte/android/TabletMainActivity;->switchMenuMode(Z)V

    .line 242
    iget v0, v5, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/TabletMainActivity;->lastOrientation:I

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/TabletMainActivity;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/TabletMainActivity;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 254
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0xe

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/TabletMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 256
    const-string v18, "dont_show_destroy_acts"

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 258
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/TabletMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "always_finish_activities"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v12

    .line 259
    .local v12, "s":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_2

    .line 260
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 261
    .local v8, "ll":Landroid/widget/LinearLayout;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 262
    new-instance v17, Landroid/widget/TextView;

    const/16 v18, 0x0

    const v19, 0x1030048

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 263
    .local v17, "tv":Landroid/widget/TextView;
    const v18, 0x7f0901dc

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(I)V

    .line 264
    const/high16 v18, 0x41200000    # 10.0f

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    .line 265
    .local v10, "padding":I
    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 266
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 267
    new-instance v4, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 268
    .local v4, "cb":Landroid/widget/CheckBox;
    const v18, 0x7f0901df

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setText(I)V

    .line 269
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 270
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v10, v0, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 271
    new-instance v15, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 272
    .local v15, "sv":Landroid/widget/ScrollView;
    invoke-virtual {v15, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 273
    new-instance v18, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 274
    const v19, 0x7f0901de

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 275
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 276
    const v19, 0x1080027

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 277
    const v19, 0x7f0901dd

    new-instance v20, Lcom/vkontakte/android/TabletMainActivity$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/TabletMainActivity$4;-><init>(Lcom/vkontakte/android/TabletMainActivity;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 283
    const v19, 0x7f090111

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 284
    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    .line 285
    .local v6, "dlg":Landroid/app/AlertDialog;
    new-instance v18, Lcom/vkontakte/android/TabletMainActivity$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/vkontakte/android/TabletMainActivity$5;-><init>(Lcom/vkontakte/android/TabletMainActivity;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 295
    .end local v4    # "cb":Landroid/widget/CheckBox;
    .end local v6    # "dlg":Landroid/app/AlertDialog;
    .end local v8    # "ll":Landroid/widget/LinearLayout;
    .end local v10    # "padding":I
    .end local v12    # "s":I
    .end local v15    # "sv":Landroid/widget/ScrollView;
    .end local v17    # "tv":Landroid/widget/TextView;
    :catch_0
    move-exception v18

    goto/16 :goto_0

    .line 241
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 562
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 563
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/TabletMainActivity;->lastInstance:Lcom/vkontakte/android/TabletMainActivity;

    .line 564
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 557
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 558
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/TabletMainActivity;->isActive:Z

    .line 559
    return-void
.end method

.method public onResume()V
    .locals 18

    .prologue
    .line 450
    invoke-super/range {p0 .. p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 452
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vkontakte/android/TabletMainActivity;->isActive:Z

    .line 453
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkontakte/android/TabletMainActivity;->inSettings:Z

    if-eqz v2, :cond_3

    .line 454
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vkontakte/android/TabletMainActivity;->inSettings:Z

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/TabletMainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 456
    .local v14, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "loadImages"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->loadImages:Z

    .line 457
    const-string v2, "useHTTPS"

    const/4 v3, 0x0

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->useHTTPS:Z

    .line 458
    const-string v2, "notifySound"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->notifySound:Z

    .line 459
    const-string v2, "notifyVibrate"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->notifyVibration:Z

    .line 460
    const-string v2, "notifyLED"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->notifyLED:Z

    .line 462
    :try_start_0
    const-string v2, "vk"

    const-string v3, "notifyRingtone"

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
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

    .line 465
    :goto_0
    const-string v2, "friendsOrder"

    const-string v3, "hints"

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 467
    .local v12, "fs":Ljava/lang/String;
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sort="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v2, "hints"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v8, 0x2

    .line 471
    .local v8, "_sort":I
    :goto_1
    sget v2, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    if-eq v8, v2, :cond_0

    .line 472
    sput v8, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    .line 473
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vkontakte/android/TabletMainActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vkontakte/android/TabletMainActivity$8;-><init>(Lcom/vkontakte/android/TabletMainActivity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 475
    :cond_0
    const-string v2, "updateInterval"

    const-string v3, "180000"

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/vkontakte/android/MainActivity;->updateInterval:I

    .line 476
    const-string v2, "enableC2DM"

    const/4 v3, 0x0

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vkontakte/android/TabletMainActivity;->prevC2DM:Z

    if-eq v2, v3, :cond_1

    .line 477
    const-string v2, "enableC2DM"

    const/4 v3, 0x0

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 478
    invoke-static {}, Lcom/vkontakte/android/C2DM;->start()V

    .line 484
    :cond_1
    :goto_2
    new-instance v9, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/BirthdayBroadcastReceiver;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 485
    .local v9, "bdIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    move-object/from16 v0, p0

    invoke-static {v0, v2, v9, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 486
    .local v7, "pbIntent":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/TabletMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 488
    .local v1, "as":Landroid/app/AlarmManager;
    const-string v2, "notifyBDays"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 489
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

    .line 493
    :goto_3
    const/4 v2, 0x0

    sput-boolean v2, Lcom/vkontakte/android/NetworkStateReceiver;->disableBigImages:Z

    .line 494
    const-string v2, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/TabletMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    .line 495
    .local v11, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v11}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    .line 496
    .local v13, "info":Landroid/net/NetworkInfo;
    if-eqz v13, :cond_3

    .line 497
    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v15

    .line 498
    .local v15, "type":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

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

    .line 499
    :cond_2
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vkontakte/android/NetworkStateReceiver;->disableBigImages:Z

    .line 500
    const-string v2, "vk"

    const-string v3, "Big images disabled!!"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    .end local v1    # "as":Landroid/app/AlarmManager;
    .end local v7    # "pbIntent":Landroid/app/PendingIntent;
    .end local v8    # "_sort":I
    .end local v9    # "bdIntent":Landroid/content/Intent;
    .end local v11    # "cm":Landroid/net/ConnectivityManager;
    .end local v12    # "fs":Ljava/lang/String;
    .end local v13    # "info":Landroid/net/NetworkInfo;
    .end local v14    # "prefs":Landroid/content/SharedPreferences;
    .end local v15    # "type":Ljava/lang/String;
    :cond_3
    sget-boolean v2, Lcom/vkontakte/android/TabletMainActivity;->firstRun:Z

    if-nez v2, :cond_4

    sget-object v2, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    invoke-virtual {v2}, Lcom/vkontakte/android/LongPollService;->updateCounters()V

    .line 516
    :cond_4
    sget-boolean v2, Lcom/vkontakte/android/TabletMainActivity;->firstRun:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    sput-boolean v2, Lcom/vkontakte/android/TabletMainActivity;->firstRun:Z

    .line 518
    :cond_5
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_6

    .line 519
    new-instance v2, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/TabletMainActivity;->webView:Landroid/webkit/WebView;

    .line 520
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 521
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/TabletMainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/TabletMainActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/vkontakte/android/TabletMainActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vkontakte/android/TabletMainActivity$9;-><init>(Lcom/vkontakte/android/TabletMainActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/TabletMainActivity;->webView:Landroid/webkit/WebView;

    const-string v3, "http://m.vk.com/counters.php"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 542
    :cond_6
    sget-boolean v2, Lcom/vkontakte/android/LongPollService;->needFinishAllActivities:Z

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/TabletMainActivity;->exitApp()V

    .line 544
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/TabletMainActivity;->pendingTab:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/TabletMainActivity;->pendingTab:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/TabletMainActivity;->setTab(Ljava/lang/String;)V

    .line 548
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/TabletMainActivity;->pendingTab:Ljava/lang/String;

    .line 551
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/TabletMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    .line 552
    .local v10, "cfg":Landroid/content/res/Configuration;
    iget v2, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vkontakte/android/TabletMainActivity;->switchMenuMode(Z)V

    .line 553
    iget v2, v10, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/TabletMainActivity;->lastOrientation:I

    .line 554
    return-void

    .line 469
    .end local v10    # "cfg":Landroid/content/res/Configuration;
    .restart local v12    # "fs":Ljava/lang/String;
    .restart local v14    # "prefs":Landroid/content/SharedPreferences;
    :cond_9
    const-string v2, "lastname"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v8, 0x1

    .restart local v8    # "_sort":I
    goto/16 :goto_1

    .line 470
    .end local v8    # "_sort":I
    :cond_a
    const/4 v8, 0x0

    .restart local v8    # "_sort":I
    goto/16 :goto_1

    .line 480
    :cond_b
    invoke-static {}, Lcom/vkontakte/android/C2DM;->stop()V

    goto/16 :goto_2

    .line 491
    .restart local v1    # "as":Landroid/app/AlarmManager;
    .restart local v7    # "pbIntent":Landroid/app/PendingIntent;
    .restart local v9    # "bdIntent":Landroid/content/Intent;
    :cond_c
    invoke-virtual {v1, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_3

    .line 552
    .end local v1    # "as":Landroid/app/AlarmManager;
    .end local v7    # "pbIntent":Landroid/app/PendingIntent;
    .end local v8    # "_sort":I
    .end local v9    # "bdIntent":Landroid/content/Intent;
    .end local v12    # "fs":Ljava/lang/String;
    .end local v14    # "prefs":Landroid/content/SharedPreferences;
    .restart local v10    # "cfg":Landroid/content/res/Configuration;
    :cond_d
    const/4 v2, 0x0

    goto :goto_4

    .line 464
    .end local v10    # "cfg":Landroid/content/res/Configuration;
    .restart local v14    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method public setTab(Ljava/lang/String;)V
    .locals 3
    .param p1, "tab"    # Ljava/lang/String;

    .prologue
    .line 569
    :try_start_0
    const-string v2, "messages"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 570
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/DialogsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 571
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "messages"

    invoke-virtual {p0, v2, v0}, Lcom/vkontakte/android/TabletMainActivity;->showActivity(Ljava/lang/String;Landroid/content/Intent;)V

    .line 573
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v2, "friends"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 574
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/FriendsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 575
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "friends"

    invoke-virtual {p0, v2, v0}, Lcom/vkontakte/android/TabletMainActivity;->showActivity(Ljava/lang/String;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 577
    :catch_0
    move-exception v1

    .line 578
    .local v1, "x":Ljava/lang/Exception;
    iput-object p1, p0, Lcom/vkontakte/android/TabletMainActivity;->pendingTab:Ljava/lang/String;

    goto :goto_0
.end method

.method public showActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 13
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x1

    .line 301
    const-string v9, "_tab_root"

    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 302
    const-string v9, "tmp"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    .line 303
    new-instance v9, Ljava/lang/StringBuilder;

    new-instance v10, Ljava/util/Random;

    invoke-direct {v10}, Ljava/util/Random;-><init>()V

    invoke-virtual {v10}, Ljava/util/Random;->nextLong()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/vkontakte/android/APIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    :cond_0
    sget-object v9, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0xb

    if-ge v9, v10, :cond_6

    .line 306
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v4

    .line 307
    .local v4, "mgr":Landroid/app/LocalActivityManager;
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->tempActivityView:Landroid/view/View;

    if-eqz v9, :cond_1

    .line 308
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->contentViews:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/vkontakte/android/TabletMainActivity;->tempActivityView:Landroid/view/View;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 309
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->contentWrap:Landroid/widget/FrameLayout;

    iget-object v10, p0, Lcom/vkontakte/android/TabletMainActivity;->tempActivityView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 310
    const-string v9, "tmp"

    invoke-virtual {v4, v9, v12}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 311
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->tempActivityView:Landroid/view/View;

    .line 313
    :cond_1
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->contentViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_4

    .line 314
    invoke-virtual {v4, p1, p2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v8

    .line 315
    .local v8, "wnd":Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 316
    .local v7, "view":Landroid/view/View;
    const-string v9, "tmp"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 317
    iput-object v7, p0, Lcom/vkontakte/android/TabletMainActivity;->tempActivityView:Landroid/view/View;

    .line 319
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-nez v9, :cond_5

    .line 320
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->contentViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->contentWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 358
    .end local v4    # "mgr":Landroid/app/LocalActivityManager;
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "wnd":Landroid/view/Window;
    :cond_3
    :goto_1
    return-void

    .line 313
    .restart local v4    # "mgr":Landroid/app/LocalActivityManager;
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .local v6, "v":Landroid/view/View;
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 323
    .end local v6    # "v":Landroid/view/View;
    .restart local v7    # "view":Landroid/view/View;
    .restart local v8    # "wnd":Landroid/view/Window;
    :cond_5
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 328
    .end local v4    # "mgr":Landroid/app/LocalActivityManager;
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "wnd":Landroid/view/Window;
    :cond_6
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->tabs:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 329
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->tabs:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 337
    .local v2, "fragment":Landroid/app/Fragment;
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 338
    .local v1, "fm":Landroid/app/FragmentManager;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v9

    if-lt v3, v9, :cond_9

    .line 342
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->currentFragment:Landroid/app/Fragment;

    if-eq v2, v9, :cond_3

    .line 344
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    .line 347
    .local v5, "transaction":Landroid/app/FragmentTransaction;
    const v9, 0x4b41f0

    invoke-virtual {v5, v9, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 354
    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    .line 355
    iput-object v2, p0, Lcom/vkontakte/android/TabletMainActivity;->currentFragment:Landroid/app/Fragment;

    .line 356
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->requestFocus()Z

    goto :goto_1

    .line 331
    .end local v1    # "fm":Landroid/app/FragmentManager;
    .end local v2    # "fragment":Landroid/app/Fragment;
    .end local v3    # "i":I
    .end local v5    # "transaction":Landroid/app/FragmentTransaction;
    :cond_8
    new-instance v2, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;

    invoke-direct {v2}, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;-><init>()V

    .line 332
    .restart local v2    # "fragment":Landroid/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 333
    .local v0, "args":Landroid/os/Bundle;
    const-string v9, "intent"

    invoke-virtual {v0, v9, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 334
    invoke-virtual {v2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 335
    const-string v9, "tmp"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->tabs:Ljava/util/HashMap;

    invoke-virtual {v9, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 339
    .end local v0    # "args":Landroid/os/Bundle;
    .restart local v1    # "fm":Landroid/app/FragmentManager;
    .restart local v3    # "i":I
    :cond_9
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 338
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public showPopupMenu(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x43960000    # 300.0f

    .line 607
    iget-object v4, p0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v4}, Lcom/vkontakte/android/MenuListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v4}, Lcom/vkontakte/android/MenuListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 609
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    const v4, 0x7f070008

    invoke-direct {v0, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 610
    .local v0, "dlg":Landroid/app/Dialog;
    new-instance v2, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;-><init>(Landroid/content/Context;)V

    .line 611
    .local v2, "mv":Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;
    iget-object v4, p0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    const v4, 0x7f02020a

    invoke-virtual {v2, v4}, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->setBackgroundResource(I)V

    .line 613
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->setTriangleOffset(I)V

    .line 614
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 615
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 616
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 617
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v6, 0x1000000

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 618
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v9, v5}, Landroid/view/Window;->setFlags(II)V

    .line 619
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    .line 620
    .local v3, "wcb":Landroid/view/Window$Callback;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/TabletMainActivity$10;

    invoke-direct {v5, p0, v3}, Lcom/vkontakte/android/TabletMainActivity$10;-><init>(Lcom/vkontakte/android/TabletMainActivity;Landroid/view/Window$Callback;)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 735
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x33

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    .line 736
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 737
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 738
    iput v9, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 739
    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v2}, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2}, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 740
    const/high16 v4, 0x44160000    # 600.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 741
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 742
    new-instance v4, Lcom/vkontakte/android/TabletMainActivity$11;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/TabletMainActivity$11;-><init>(Lcom/vkontakte/android/TabletMainActivity;)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 748
    iput-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->popupMenuDlg:Landroid/app/Dialog;

    .line 749
    return-void
.end method

.method public showSettings()V
    .locals 3

    .prologue
    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/TabletMainActivity;->inSettings:Z

    .line 399
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "enableC2DM"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkontakte/android/TabletMainActivity;->prevC2DM:Z

    .line 400
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x67

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/TabletMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 401
    return-void
.end method

.method public startActivityInFragment(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 361
    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xb

    if-ge v5, v6, :cond_0

    .line 362
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/TabletMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 395
    :goto_0
    return-void

    .line 364
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LinkRedirActivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v5

    const-string v6, "qwe"

    invoke-virtual {v5, v6, p1}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    goto :goto_0

    .line 367
    :cond_1
    iget v5, p0, Lcom/vkontakte/android/TabletMainActivity;->backLevel:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/vkontakte/android/TabletMainActivity;->backLevel:I

    .line 368
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 372
    .local v3, "transaction":Landroid/app/FragmentTransaction;
    new-instance v2, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;

    invoke-direct {v2}, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;-><init>()V

    .line 373
    .local v2, "fragment":Landroid/app/Fragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 374
    .local v1, "args":Landroid/os/Bundle;
    const-string v5, "intent"

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 375
    invoke-virtual {v2, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 376
    const v5, 0x4b41f0

    invoke-virtual {v3, v5, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 377
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "b"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/vkontakte/android/TabletMainActivity;->backLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 378
    const/16 v5, 0x1001

    invoke-virtual {v3, v5}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 383
    :try_start_0
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 384
    :catch_0
    move-exception v4

    .line 385
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 386
    iget v5, p0, Lcom/vkontakte/android/TabletMainActivity;->backLevel:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/vkontakte/android/TabletMainActivity;->backLevel:I

    .line 387
    move-object v0, p1

    .line 388
    .local v0, "_intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/vkontakte/android/TabletMainActivity;->contentView:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/vkontakte/android/TabletMainActivity$6;

    invoke-direct {v6, p0, v0}, Lcom/vkontakte/android/TabletMainActivity$6;-><init>(Lcom/vkontakte/android/TabletMainActivity;Landroid/content/Intent;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
