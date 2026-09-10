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

.field private inSettings:Z

.field private lastOrientation:I

.field private menu:Lcom/vkontakte/android/MenuListView;

.field private menuShadowView:Landroid/view/View;

.field private menuWrap:Landroid/widget/FrameLayout;

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
    .line 63
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkontakte/android/TabletMainActivity;->firstRun:Z

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/TabletMainActivity;->isActive:Z

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->contentViews:Ljava/util/ArrayList;

    .line 59
    iput-boolean v1, p0, Lcom/vkontakte/android/TabletMainActivity;->prevC2DM:Z

    .line 61
    iput-boolean v1, p0, Lcom/vkontakte/android/TabletMainActivity;->inSettings:Z

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->tabs:Ljava/util/HashMap;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->currentFragment:Landroid/app/Fragment;

    .line 70
    iput v1, p0, Lcom/vkontakte/android/TabletMainActivity;->lastOrientation:I

    .line 74
    iput v1, p0, Lcom/vkontakte/android/TabletMainActivity;->backLevel:I

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/TabletMainActivity;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->tabs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/TabletMainActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->popupMenuDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/TabletMainActivity;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/TabletMainActivity;->showActivity(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/TabletMainActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/vkontakte/android/TabletMainActivity;->popupMenuDlg:Landroid/app/Dialog;

    return-void
.end method

.method private showActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x1

    .line 211
    const-string v9, "_tab_root"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 212
    sget-object v9, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0xb

    if-ge v9, v10, :cond_5

    .line 213
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v4

    .line 214
    .local v4, "mgr":Landroid/app/LocalActivityManager;
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->tempActivityView:Landroid/view/View;

    if-eqz v9, :cond_0

    .line 215
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->contentViews:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/vkontakte/android/TabletMainActivity;->tempActivityView:Landroid/view/View;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 216
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->contentWrap:Landroid/widget/FrameLayout;

    iget-object v10, p0, Lcom/vkontakte/android/TabletMainActivity;->tempActivityView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 217
    const-string v9, "tmp"

    invoke-virtual {v4, v9, v11}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 218
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->tempActivityView:Landroid/view/View;

    .line 220
    :cond_0
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->contentViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 221
    invoke-virtual {v4, p1, p2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v8

    .line 222
    .local v8, "wnd":Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 223
    .local v7, "view":Landroid/view/View;
    const-string v9, "tmp"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 224
    iput-object v7, p0, Lcom/vkontakte/android/TabletMainActivity;->tempActivityView:Landroid/view/View;

    .line 226
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-nez v9, :cond_4

    .line 227
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->contentViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->contentWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 264
    .end local v4    # "mgr":Landroid/app/LocalActivityManager;
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "wnd":Landroid/view/Window;
    :cond_2
    :goto_1
    return-void

    .line 220
    .restart local v4    # "mgr":Landroid/app/LocalActivityManager;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .local v6, "v":Landroid/view/View;
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 230
    .end local v6    # "v":Landroid/view/View;
    .restart local v7    # "view":Landroid/view/View;
    .restart local v8    # "wnd":Landroid/view/Window;
    :cond_4
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 235
    .end local v4    # "mgr":Landroid/app/LocalActivityManager;
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "wnd":Landroid/view/Window;
    :cond_5
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->tabs:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 236
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->tabs:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 244
    .local v2, "fragment":Landroid/app/Fragment;
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 245
    .local v1, "fm":Landroid/app/FragmentManager;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v9

    if-lt v3, v9, :cond_8

    .line 249
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->currentFragment:Landroid/app/Fragment;

    if-eq v2, v9, :cond_2

    .line 251
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    .line 254
    .local v5, "transaction":Landroid/app/FragmentTransaction;
    const v9, 0x4b41f0

    invoke-virtual {v5, v9, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 261
    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    .line 262
    iput-object v2, p0, Lcom/vkontakte/android/TabletMainActivity;->currentFragment:Landroid/app/Fragment;

    goto :goto_1

    .line 238
    .end local v1    # "fm":Landroid/app/FragmentManager;
    .end local v2    # "fragment":Landroid/app/Fragment;
    .end local v3    # "i":I
    .end local v5    # "transaction":Landroid/app/FragmentTransaction;
    :cond_7
    new-instance v2, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;

    invoke-direct {v2}, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;-><init>()V

    .line 239
    .restart local v2    # "fragment":Landroid/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 240
    .local v0, "args":Landroid/os/Bundle;
    const-string v9, "intent"

    invoke-virtual {v0, v9, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 241
    invoke-virtual {v2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 242
    const-string v9, "tmp"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->tabs:Ljava/util/HashMap;

    invoke-virtual {v9, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 246
    .end local v0    # "args":Landroid/os/Bundle;
    .restart local v1    # "fm":Landroid/app/FragmentManager;
    .restart local v3    # "i":I
    :cond_8
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 245
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method private switchMenuMode(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const/4 v4, 0x0

    .line 469
    if-eqz p1, :cond_2

    .line 470
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

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x43960000    # 300.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MenuListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->menuWrap:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 473
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/MenuListView;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->menuShadowView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->popupMenuDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->popupMenuDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 480
    :cond_1
    :goto_0
    return-void

    .line 477
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->menuWrap:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 478
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->menuShadowView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public exitApp()V
    .locals 2

    .prologue
    .line 297
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/LongPollService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/TabletMainActivity;->stopService(Landroid/content/Intent;)Z

    .line 298
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->finish()V

    .line 299
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/TabletMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 300
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/TabletMainActivity$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/TabletMainActivity$3;-><init>(Lcom/vkontakte/android/TabletMainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 307
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 308
    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 2
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 512
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 513
    :cond_0
    return-void
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

    .line 311
    const/16 v3, 0x64

    if-ne p1, v3, :cond_1

    .line 312
    if-ne p2, v4, :cond_4

    .line 314
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/vkontakte/android/NewsfeedActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 315
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "news"

    invoke-direct {p0, v3, v0}, Lcom/vkontakte/android/TabletMainActivity;->showActivity(Ljava/lang/String;Landroid/content/Intent;)V

    .line 316
    sget-object v3, Lcom/vkontakte/android/NewsfeedActivity;->sharedInstance:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/NewsfeedActivity;->loadData()V

    .line 317
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

    .line 318
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v8, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 320
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

    .line 321
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

    .line 322
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/vkontakte/android/SuggestFriendsActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0x68

    invoke-virtual {p0, v3, v4}, Lcom/vkontakte/android/TabletMainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/vkontakte/android/NetworkStateReceiver;->updateInfo(Landroid/content/Context;)V

    .line 329
    iget-object v3, p0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/MenuListView;->updateUserInfo()V

    .line 335
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    :goto_1
    const/16 v3, 0x67

    if-ne p1, v3, :cond_2

    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 336
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->finish()V

    .line 337
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/vkontakte/android/MainActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 338
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/TabletMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 340
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    return-void

    .line 323
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

    .line 324
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/vkontakte/android/WelcomeActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 325
    .end local v0    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/TabletMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 331
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_4
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->exitApp()V

    goto :goto_1

    .line 327
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
    .line 461
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 462
    iget v0, p0, Lcom/vkontakte/android/TabletMainActivity;->lastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 463
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/vkontakte/android/TabletMainActivity;->switchMenuMode(Z)V

    .line 464
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/vkontakte/android/TabletMainActivity;->lastOrientation:I

    .line 466
    :cond_0
    return-void

    .line 463
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v12, -0x1

    const/4 v8, 0x0

    .line 77
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/TabletMainActivity;->requestWindowFeature(I)Z

    .line 80
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->contentView:Landroid/widget/LinearLayout;

    .line 81
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 83
    new-instance v9, Lcom/vkontakte/android/MenuListView;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/MenuListView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    .line 84
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    const/4 v10, 0x4

    iput v10, v9, Lcom/vkontakte/android/MenuListView;->itemPadding:I

    .line 85
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x43960000    # 300.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/MenuListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v9, v8}, Lcom/vkontakte/android/MenuListView;->setHighlightAfterClick(Z)V

    .line 87
    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->menuWrap:Landroid/widget/FrameLayout;

    .line 88
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->menuWrap:Landroid/widget/FrameLayout;

    iget-object v10, p0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 89
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 90
    .local v4, "shadowView":Landroid/view/View;
    iput-object v4, p0, Lcom/vkontakte/android/TabletMainActivity;->menuShadowView:Landroid/view/View;

    .line 91
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v9, 0x41800000    # 16.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    invoke-direct {v5, v9, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 92
    .local v5, "slp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v9, 0x5

    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 93
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    const v9, 0x7f0201b8

    invoke-virtual {v4, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 95
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->menuWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 96
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->contentView:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/vkontakte/android/TabletMainActivity;->menuWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->contentWrap:Landroid/widget/FrameLayout;

    .line 99
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->contentWrap:Landroid/widget/FrameLayout;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->contentWrap:Landroid/widget/FrameLayout;

    const v10, 0x4b41f0

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setId(I)V

    .line 101
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->contentView:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/vkontakte/android/TabletMainActivity;->contentWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v9}, Lcom/vkontakte/android/TabletMainActivity;->setContentView(Landroid/view/View;)V

    .line 105
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    new-instance v10, Lcom/vkontakte/android/TabletMainActivity$1;

    invoke-direct {v10, p0}, Lcom/vkontakte/android/TabletMainActivity$1;-><init>(Lcom/vkontakte/android/TabletMainActivity;)V

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/MenuListView;->setListener(Lcom/vkontakte/android/MenuListView$Listener;)V

    .line 178
    sput-object p0, Lcom/vkontakte/android/TabletMainActivity;->lastInstance:Lcom/vkontakte/android/TabletMainActivity;

    .line 180
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 181
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v9, "sid"

    invoke-interface {v3, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 182
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/vkontakte/android/AuthActivity;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v8, 0x64

    invoke-virtual {p0, v7, v8}, Lcom/vkontakte/android/TabletMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v9, Lcom/vkontakte/android/NewsfeedActivity;

    invoke-direct {v1, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    .local v1, "intent":Landroid/content/Intent;
    const-string v9, "news"

    invoke-direct {p0, v9, v1}, Lcom/vkontakte/android/TabletMainActivity;->showActivity(Ljava/lang/String;Landroid/content/Intent;)V

    .line 188
    iget-object v9, p0, Lcom/vkontakte/android/TabletMainActivity;->contentView:Landroid/widget/LinearLayout;

    new-instance v10, Lcom/vkontakte/android/TabletMainActivity$2;

    invoke-direct {v10, p0}, Lcom/vkontakte/android/TabletMainActivity$2;-><init>(Lcom/vkontakte/android/TabletMainActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 192
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "tab"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 193
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "tab"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 194
    .local v6, "tab":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/TabletMainActivity;->setTab(Ljava/lang/String;)V

    .line 197
    .end local v6    # "tab":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    iput v9, p0, Lcom/vkontakte/android/TabletMainActivity;->lastOrientation:I

    .line 198
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 199
    .local v0, "cfg":Landroid/content/res/Configuration;
    iget v9, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    :goto_1
    invoke-direct {p0, v7}, Lcom/vkontakte/android/TabletMainActivity;->switchMenuMode(Z)V

    .line 200
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    iput v7, p0, Lcom/vkontakte/android/TabletMainActivity;->lastOrientation:I

    .line 203
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "welcome_screen_shown"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 204
    new-instance v2, Landroid/content/Intent;

    const-class v7, Lcom/vkontakte/android/WelcomeActivity;

    invoke-direct {v2, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .local v2, "intent1":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/TabletMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 207
    .end local v2    # "intent1":Landroid/content/Intent;
    :catch_0
    move-exception v7

    goto/16 :goto_0

    :cond_3
    move v7, v8

    .line 199
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 444
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 445
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/TabletMainActivity;->lastInstance:Lcom/vkontakte/android/TabletMainActivity;

    .line 446
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 439
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 440
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/TabletMainActivity;->isActive:Z

    .line 441
    return-void
.end method

.method public onResume()V
    .locals 17

    .prologue
    .line 343
    invoke-super/range {p0 .. p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 345
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vkontakte/android/TabletMainActivity;->isActive:Z

    .line 346
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkontakte/android/TabletMainActivity;->inSettings:Z

    if-eqz v2, :cond_3

    .line 347
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vkontakte/android/TabletMainActivity;->inSettings:Z

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/TabletMainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 349
    .local v13, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "loadImages"

    const/4 v3, 0x1

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->loadImages:Z

    .line 350
    const-string v2, "useHTTPS"

    const/4 v3, 0x0

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->useHTTPS:Z

    .line 351
    const-string v2, "notifySound"

    const/4 v3, 0x1

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->notifySound:Z

    .line 352
    const-string v2, "notifyVibrate"

    const/4 v3, 0x1

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->notifyVibration:Z

    .line 353
    const-string v2, "notifyLED"

    const/4 v3, 0x1

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/vkontakte/android/MainActivity;->notifyLED:Z

    .line 355
    :try_start_0
    const-string v2, "vk"

    const-string v3, "notifyRingtone"

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v13, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string v2, "notifyRingtone"

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/Global;->prefNotifyRingtone:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    const-string v2, "friendsOrder"

    const-string v3, "hints"

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 360
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

    .line 361
    const-string v2, "hints"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v8, 0x2

    .line 364
    .local v8, "_sort":I
    :goto_1
    sget v2, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    if-eq v8, v2, :cond_0

    .line 365
    sput v8, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    .line 366
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vkontakte/android/TabletMainActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vkontakte/android/TabletMainActivity$4;-><init>(Lcom/vkontakte/android/TabletMainActivity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 368
    :cond_0
    const-string v2, "updateInterval"

    const-string v3, "180000"

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/vkontakte/android/MainActivity;->updateInterval:I

    .line 369
    const-string v2, "enableC2DM"

    const/4 v3, 0x0

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vkontakte/android/TabletMainActivity;->prevC2DM:Z

    if-eq v2, v3, :cond_1

    .line 370
    const-string v2, "enableC2DM"

    const/4 v3, 0x0

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 371
    invoke-static {}, Lcom/vkontakte/android/C2DM;->start()V

    .line 377
    :cond_1
    :goto_2
    new-instance v9, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/BirthdayBroadcastReceiver;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 378
    .local v9, "bdIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    move-object/from16 v0, p0

    invoke-static {v0, v2, v9, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 379
    .local v7, "pbIntent":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/TabletMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 381
    .local v1, "as":Landroid/app/AlarmManager;
    const-string v2, "notifyBDays"

    const/4 v3, 0x1

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 382
    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v15, 0x5265c00

    rem-long/2addr v5, v15

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

    .line 386
    :goto_3
    const/4 v2, 0x0

    sput-boolean v2, Lcom/vkontakte/android/NetworkStateReceiver;->disableBigImages:Z

    .line 387
    const-string v2, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/TabletMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    .line 388
    .local v10, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    .line 389
    .local v12, "info":Landroid/net/NetworkInfo;
    if-eqz v12, :cond_3

    .line 390
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v14

    .line 391
    .local v14, "type":Ljava/lang/String;
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

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "EDGE"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "GPRS"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 392
    :cond_2
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vkontakte/android/NetworkStateReceiver;->disableBigImages:Z

    .line 393
    const-string v2, "vk"

    const-string v3, "Big images disabled!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .end local v1    # "as":Landroid/app/AlarmManager;
    .end local v7    # "pbIntent":Landroid/app/PendingIntent;
    .end local v8    # "_sort":I
    .end local v9    # "bdIntent":Landroid/content/Intent;
    .end local v10    # "cm":Landroid/net/ConnectivityManager;
    .end local v11    # "fs":Ljava/lang/String;
    .end local v12    # "info":Landroid/net/NetworkInfo;
    .end local v13    # "prefs":Landroid/content/SharedPreferences;
    .end local v14    # "type":Ljava/lang/String;
    :cond_3
    sget-boolean v2, Lcom/vkontakte/android/TabletMainActivity;->firstRun:Z

    if-nez v2, :cond_4

    sget-object v2, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    invoke-virtual {v2}, Lcom/vkontakte/android/LongPollService;->updateCounters()V

    .line 409
    :cond_4
    sget-boolean v2, Lcom/vkontakte/android/TabletMainActivity;->firstRun:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    sput-boolean v2, Lcom/vkontakte/android/TabletMainActivity;->firstRun:Z

    .line 411
    :cond_5
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_6

    .line 412
    new-instance v2, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/TabletMainActivity;->webView:Landroid/webkit/WebView;

    .line 413
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 414
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/TabletMainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/TabletMainActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/vkontakte/android/TabletMainActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vkontakte/android/TabletMainActivity$5;-><init>(Lcom/vkontakte/android/TabletMainActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/TabletMainActivity;->webView:Landroid/webkit/WebView;

    const-string v3, "http://m.vk.com/counters.php"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 435
    :cond_6
    sget-boolean v2, Lcom/vkontakte/android/LongPollService;->needFinishAllActivities:Z

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/TabletMainActivity;->exitApp()V

    .line 436
    :cond_7
    return-void

    .line 362
    .restart local v11    # "fs":Ljava/lang/String;
    .restart local v13    # "prefs":Landroid/content/SharedPreferences;
    :cond_8
    const-string v2, "lastname"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v8, 0x1

    .restart local v8    # "_sort":I
    goto/16 :goto_1

    .line 363
    .end local v8    # "_sort":I
    :cond_9
    const/4 v8, 0x0

    .restart local v8    # "_sort":I
    goto/16 :goto_1

    .line 373
    :cond_a
    invoke-static {}, Lcom/vkontakte/android/C2DM;->stop()V

    goto/16 :goto_2

    .line 384
    .restart local v1    # "as":Landroid/app/AlarmManager;
    .restart local v7    # "pbIntent":Landroid/app/PendingIntent;
    .restart local v9    # "bdIntent":Landroid/content/Intent;
    :cond_b
    invoke-virtual {v1, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_3

    .line 357
    .end local v1    # "as":Landroid/app/AlarmManager;
    .end local v7    # "pbIntent":Landroid/app/PendingIntent;
    .end local v8    # "_sort":I
    .end local v9    # "bdIntent":Landroid/content/Intent;
    .end local v11    # "fs":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method public setTab(Ljava/lang/String;)V
    .locals 2
    .param p1, "tab"    # Ljava/lang/String;

    .prologue
    .line 450
    const-string v1, "messages"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/DialogsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 452
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "messages"

    invoke-direct {p0, v1, v0}, Lcom/vkontakte/android/TabletMainActivity;->showActivity(Ljava/lang/String;Landroid/content/Intent;)V

    .line 454
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v1, "friends"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 455
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/FriendsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 456
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "friends"

    invoke-direct {p0, v1, v0}, Lcom/vkontakte/android/TabletMainActivity;->showActivity(Ljava/lang/String;Landroid/content/Intent;)V

    .line 458
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public showPopupMenu(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 483
    iget-object v3, p0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/MenuListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/MenuListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 485
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    const v3, 0x7f070008

    invoke-direct {v0, p0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 486
    .local v0, "dlg":Landroid/app/Dialog;
    new-instance v2, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;-><init>(Landroid/content/Context;)V

    .line 487
    .local v2, "mv":Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;
    iget-object v3, p0, Lcom/vkontakte/android/TabletMainActivity;->menu:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->addView(Landroid/view/View;)V

    .line 488
    const v3, 0x7f0201ec

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->setBackgroundResource(I)V

    .line 489
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->setTriangleOffset(I)V

    .line 490
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 491
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 492
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 493
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 494
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v5, v4}, Landroid/view/Window;->setFlags(II)V

    .line 495
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x33

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 496
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 497
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 498
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 499
    const/high16 v3, 0x43960000    # 300.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {v2}, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2}, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 500
    const/high16 v3, 0x44160000    # 600.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 501
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 502
    new-instance v3, Lcom/vkontakte/android/TabletMainActivity$6;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/TabletMainActivity$6;-><init>(Lcom/vkontakte/android/TabletMainActivity;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 508
    iput-object v0, p0, Lcom/vkontakte/android/TabletMainActivity;->popupMenuDlg:Landroid/app/Dialog;

    .line 509
    return-void
.end method

.method public showSettings()V
    .locals 3

    .prologue
    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/TabletMainActivity;->inSettings:Z

    .line 292
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "enableC2DM"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkontakte/android/TabletMainActivity;->prevC2DM:Z

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x67

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/TabletMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 294
    return-void
.end method

.method public startActivityInFragment(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 267
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xb

    if-ge v3, v4, :cond_0

    .line 268
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/TabletMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 288
    :goto_0
    return-void

    .line 270
    :cond_0
    iget v3, p0, Lcom/vkontakte/android/TabletMainActivity;->backLevel:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/vkontakte/android/TabletMainActivity;->backLevel:I

    .line 271
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 275
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    new-instance v1, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;

    invoke-direct {v1}, Lcom/vkontakte/android/TabletMainActivity$ActivityFragment;-><init>()V

    .line 276
    .local v1, "fragment":Landroid/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 277
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "intent"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 278
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 279
    const v3, 0x4b41f0

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "b"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/vkontakte/android/TabletMainActivity;->backLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 281
    const/16 v3, 0x1001

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 285
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method
