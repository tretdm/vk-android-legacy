.class public Lcom/vkontakte/android/NotificationsView;
.super Landroid/widget/FrameLayout;
.source "NotificationsView.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;
.implements Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;,
        Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;
    }
.end annotation


# static fields
.field private static final ID_REPLY_OVERLAY_ICON:I = 0x1f4

.field private static lastUpdateTime:I

.field public static notifications:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static preloaded:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adapter:Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;

.field private afterLoad:Ljava/lang/Runnable;

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private dataLoading:Z

.field private entryClickListener:Landroid/view/View$OnClickListener;

.field private footerView:Landroid/widget/FrameLayout;

.field private from:Ljava/lang/String;

.field private gReusableViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private langInfo:[[[Ljava/lang/String;

.field private list:Lcom/vkontakte/android/ui/RefreshableListView;

.field private moreAvailable:Z

.field private noNewsView:Landroid/widget/TextView;

.field private offset:I

.field private preloadOnReady:Z

.field private preloading:Z

.field private profileClickListener:Landroid/view/View$OnClickListener;

.field private progress:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/NotificationsView;->preloaded:Ljava/util/Vector;

    .line 49
    const/4 v0, 0x0

    sput v0, Lcom/vkontakte/android/NotificationsView;->lastUpdateTime:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NotificationsView;->gReusableViews:Ljava/util/Vector;

    .line 60
    invoke-direct {p0}, Lcom/vkontakte/android/NotificationsView;->init()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NotificationsView;->gReusableViews:Ljava/util/Vector;

    .line 65
    invoke-direct {p0}, Lcom/vkontakte/android/NotificationsView;->init()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NotificationsView;->gReusableViews:Ljava/util/Vector;

    .line 70
    invoke-direct {p0}, Lcom/vkontakte/android/NotificationsView;->init()V

    .line 71
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NotificationsView;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->profileClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/NotificationsView;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->entryClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/NotificationsView;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/vkontakte/android/NotificationsView;->preloading:Z

    return v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/NotificationsView;Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/vkontakte/android/NotificationsView;->preloading:Z

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/NotificationsView;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/vkontakte/android/NotificationsView;->preloadOnReady:Z

    return v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/NotificationsView;Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/vkontakte/android/NotificationsView;->preloadOnReady:Z

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/NotificationsView;Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/vkontakte/android/NotificationsView;->moreAvailable:Z

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/NotificationsView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/NotificationsView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->footerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/NotificationsView;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/vkontakte/android/NotificationsView;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/NotificationsView;Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/vkontakte/android/NotificationsView;->dataLoading:Z

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/NotificationsView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/NotificationsView;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/NotificationsView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->afterLoad:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$22(Lcom/vkontakte/android/NotificationsView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView;->afterLoad:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$23(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->adapter:Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/NotificationsView;)[[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->langInfo:[[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/NotificationsView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->gReusableViews:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/RefreshableListView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/NotificationsView;I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/vkontakte/android/NotificationsView;->offset:I

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/NotificationsView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView;->from:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(I)V
    .locals 0

    .prologue
    .line 49
    sput p0, Lcom/vkontakte/android/NotificationsView;->lastUpdateTime:I

    return-void
.end method

.method static synthetic access$9()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/vkontakte/android/NotificationsView;->lastUpdateTime:I

    return v0
.end method

.method private init()V
    .locals 13

    .prologue
    const/16 v12, 0x11

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 75
    const/4 v4, 0x4

    new-array v4, v4, [[[Ljava/lang/String;

    .line 76
    new-array v6, v11, [[Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0023

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 78
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0024

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 79
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0025

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    aput-object v6, v4, v5

    .line 81
    new-array v6, v11, [[Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0026

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 83
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0027

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 84
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0028

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    aput-object v6, v4, v9

    .line 86
    new-array v6, v11, [[Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0029

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 88
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d002a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 89
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d002b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    aput-object v6, v4, v10

    .line 91
    new-array v6, v11, [[Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d002c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 93
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d002d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 94
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d002e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    aput-object v6, v4, v11

    .line 75
    iput-object v4, p0, Lcom/vkontakte/android/NotificationsView;->langInfo:[[[Ljava/lang/String;

    .line 98
    const v4, -0x1f1f20

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NotificationsView;->setBackgroundColor(I)V

    .line 99
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/NotificationsView;->footerView:Landroid/widget/FrameLayout;

    .line 100
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 101
    .local v3, "pb":Landroid/widget/ProgressBar;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-direct {v0, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 102
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v12, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 103
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->footerView:Landroid/widget/FrameLayout;

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    const/high16 v7, 0x40e00000    # 7.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-virtual {v4, v5, v6, v5, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 105
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 106
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 108
    new-instance v4, Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 109
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v6, p0, Lcom/vkontakte/android/NotificationsView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->addFooterView(Landroid/view/View;)V

    .line 110
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/RefreshableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v6, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;-><init>(Lcom/vkontakte/android/NotificationsView;Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;)V

    iput-object v6, p0, Lcom/vkontakte/android/NotificationsView;->adapter:Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 112
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-ge v4, v6, :cond_1

    .line 113
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 114
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 116
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const v6, -0x1f1f20

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setTopColor(I)V

    .line 117
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 121
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 122
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NotificationsView;->addView(Landroid/view/View;)V

    .line 123
    new-instance v4, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v6, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;-><init>(Lcom/vkontakte/android/NotificationsView;Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;)V

    iget-object v7, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-direct {v4, v6, v7, p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v4, p0, Lcom/vkontakte/android/NotificationsView;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 127
    new-instance v4, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/NotificationsView;->progress:Landroid/widget/ProgressBar;

    .line 128
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v6, -0x2

    invoke-direct {v1, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 129
    .local v1, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    iput v12, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 130
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v6, p0, Lcom/vkontakte/android/NotificationsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {v6, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 132
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NotificationsView;->addView(Landroid/view/View;)V

    .line 134
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    .line 135
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    const v6, -0x888889

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    const v6, 0x7f060068

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 137
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    const/high16 v6, 0x41880000    # 17.0f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 138
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 139
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v6, -0x2

    invoke-direct {v2, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 140
    .local v2, "lparams":Landroid/widget/FrameLayout$LayoutParams;
    iput v12, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 141
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NotificationsView;->addView(Landroid/view/View;)V

    .line 145
    new-instance v4, Lcom/vkontakte/android/NotificationsView$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/NotificationsView$1;-><init>(Lcom/vkontakte/android/NotificationsView;)V

    iput-object v4, p0, Lcom/vkontakte/android/NotificationsView;->profileClickListener:Landroid/view/View$OnClickListener;

    .line 157
    new-instance v4, Lcom/vkontakte/android/NotificationsView$2;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/NotificationsView$2;-><init>(Lcom/vkontakte/android/NotificationsView;)V

    iput-object v4, p0, Lcom/vkontakte/android/NotificationsView;->entryClickListener:Landroid/view/View$OnClickListener;

    .line 211
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v6, Lcom/vkontakte/android/NotificationsView$3;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/NotificationsView$3;-><init>(Lcom/vkontakte/android/NotificationsView;)V

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 238
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "notifications_updated"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/vkontakte/android/NotificationsView;->lastUpdateTime:I

    .line 239
    return-void

    .line 131
    .end local v2    # "lparams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    const/16 v4, 0x8

    goto :goto_0
.end method

.method private like(I)V
    .locals 9
    .param p1, "pos"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x0

    .line 251
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/api/NotificationEntry;

    .line 252
    .local v8, "e":Lcom/vkontakte/android/api/NotificationEntry;
    new-instance v0, Lcom/vkontakte/android/api/WallLike;

    iget-boolean v1, v8, Lcom/vkontakte/android/api/NotificationEntry;->isLiked:Z

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    iget-object v2, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v3, v8, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    if-ne v3, v6, :cond_1

    iget v3, v8, Lcom/vkontakte/android/api/NotificationEntry;->commentID:I

    :goto_1
    iget v5, v8, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    if-ne v5, v6, :cond_2

    const/4 v5, 0x5

    :goto_2
    iget-object v6, v8, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    if-eqz v6, :cond_3

    iget-object v6, v8, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->type:I

    :goto_3
    const-string v7, ""

    invoke-direct/range {v0 .. v7}, Lcom/vkontakte/android/api/WallLike;-><init>(ZIIZIILjava/lang/String;)V

    .line 253
    new-instance v1, Lcom/vkontakte/android/NotificationsView$4;

    invoke-direct {v1, p0, v8}, Lcom/vkontakte/android/NotificationsView$4;-><init>(Lcom/vkontakte/android/NotificationsView;Lcom/vkontakte/android/api/NotificationEntry;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallLike;->setCallback(Lcom/vkontakte/android/api/WallLike$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 266
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 267
    return-void

    .line 252
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->postID:I

    goto :goto_1

    :cond_2
    iget-object v5, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->type:I

    goto :goto_2

    :cond_3
    move v6, v4

    goto :goto_3
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 243
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->preloaded:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 244
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 247
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sget-object v1, Lcom/vkontakte/android/NotificationsView;->preloaded:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 990
    sget v0, Lcom/vkontakte/android/NotificationsView;->lastUpdateTime:I

    if-lez v0, :cond_0

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/vkontakte/android/NotificationsView;->lastUpdateTime:I

    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDateRelativeNoDiff(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 992
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public loadData(Z)V
    .locals 7
    .param p1, "refresh"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 367
    iget-boolean v0, p0, Lcom/vkontakte/android/NotificationsView;->dataLoading:Z

    if-eqz v0, :cond_0

    .line 441
    :goto_0
    return-void

    .line 368
    :cond_0
    iput-boolean v1, p0, Lcom/vkontakte/android/NotificationsView;->dataLoading:Z

    .line 369
    if-eqz p1, :cond_1

    .line 370
    iput v2, p0, Lcom/vkontakte/android/NotificationsView;->offset:I

    .line 371
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkontakte/android/NotificationsView;->from:Ljava/lang/String;

    .line 373
    :cond_1
    new-instance v3, Lcom/vkontakte/android/api/NotificationsGet;

    iget v4, p0, Lcom/vkontakte/android/NotificationsView;->offset:I

    iget-object v5, p0, Lcom/vkontakte/android/NotificationsView;->from:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/vkontakte/android/NotificationsView;->preloading:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x14

    :goto_1
    sget-object v6, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-nez v6, :cond_3

    sget v6, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/RefreshableListView;->isRefreshing()Z

    move-result v6

    if-nez v6, :cond_3

    :goto_2
    invoke-direct {v3, v4, v5, v0, v1}, Lcom/vkontakte/android/api/NotificationsGet;-><init>(ILjava/lang/String;IZ)V

    .line 374
    new-instance v0, Lcom/vkontakte/android/NotificationsView$6;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/NotificationsView$6;-><init>(Lcom/vkontakte/android/NotificationsView;Z)V

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/api/NotificationsGet;->setCallback(Lcom/vkontakte/android/api/NotificationsGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 440
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 373
    iput-object v0, p0, Lcom/vkontakte/android/NotificationsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    :cond_2
    const/16 v0, 0x28

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 342
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 346
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 985
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NotificationsView;->loadData(Z)V

    .line 986
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 350
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->updateList()V

    .line 351
    return-void
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 472
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 478
    return-void
.end method

.method public onScrolled(F)V
    .locals 8
    .param p1, "offset"    # F

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 997
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    .line 998
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 999
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1000
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1001
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1002
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1003
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1004
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 1005
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1006
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1020
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_2
    :goto_0
    return-void

    .line 1009
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1010
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1011
    .restart local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1012
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1013
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 1014
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1015
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 1016
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1017
    :cond_5
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onScrolledToLastItem()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 452
    iget-boolean v0, p0, Lcom/vkontakte/android/NotificationsView;->dataLoading:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/NotificationsView;->preloading:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/vkontakte/android/NotificationsView;->moreAvailable:Z

    if-eqz v0, :cond_1

    .line 453
    iget-boolean v0, p0, Lcom/vkontakte/android/NotificationsView;->preloading:Z

    if-eqz v0, :cond_2

    .line 454
    iput-boolean v2, p0, Lcom/vkontakte/android/NotificationsView;->preloading:Z

    .line 455
    iput-boolean v3, p0, Lcom/vkontakte/android/NotificationsView;->preloadOnReady:Z

    .line 466
    :cond_1
    :goto_0
    return-void

    .line 456
    :cond_2
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->preloaded:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 457
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    sget-object v1, Lcom/vkontakte/android/NotificationsView;->preloaded:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 458
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->updateList()V

    .line 459
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->preloaded:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 460
    iput-boolean v3, p0, Lcom/vkontakte/android/NotificationsView;->preloading:Z

    .line 461
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NotificationsView;->loadData(Z)V

    goto :goto_0

    .line 463
    :cond_3
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NotificationsView;->loadData(Z)V

    goto :goto_0
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 354
    new-instance v0, Lcom/vkontakte/android/NotificationsView$5;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NotificationsView$5;-><init>(Lcom/vkontakte/android/NotificationsView;)V

    .line 359
    .local v0, "r":Ljava/lang/Runnable;
    iget-boolean v1, p0, Lcom/vkontakte/android/NotificationsView;->dataLoading:Z

    if-eqz v1, :cond_0

    .line 360
    iput-object v0, p0, Lcom/vkontakte/android/NotificationsView;->afterLoad:Ljava/lang/Runnable;

    .line 364
    :goto_0
    return-void

    .line 363
    :cond_0
    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/NotificationsView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public updateList()V
    .locals 2

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/vkontakte/android/NotificationsView$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NotificationsView$7;-><init>(Lcom/vkontakte/android/NotificationsView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 448
    return-void
.end method
