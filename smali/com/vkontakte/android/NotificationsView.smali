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
        Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;,
        Lcom/vkontakte/android/NotificationsView$ViewHolder;
    }
.end annotation


# static fields
.field private static final ID_REPLY_OVERLAY_ICON:I = 0x1f4

.field private static from:Ljava/lang/String;

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

.field private static offset:I

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

.field private error:Lcom/vkontakte/android/ui/ErrorView;

.field private footerView:Landroid/widget/FrameLayout;

.field private imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private langInfo:[[[Ljava/lang/String;

.field private list:Lcom/vkontakte/android/ui/RefreshableListView;

.field private moreAvailable:Z

.field private noNewsView:Lcom/vkontakte/android/ui/EmptyView;

.field private photoStripClickListener:Lcom/vkontakte/android/ui/PhotoStripView$OnPhotoClickListener;

.field private preloadOnReady:Z

.field private preloading:Z

.field private profileClickListener:Landroid/view/View$OnClickListener;

.field private progress:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    .line 54
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/NotificationsView;->preloaded:Ljava/util/Vector;

    .line 60
    const/4 v0, 0x0

    sput v0, Lcom/vkontakte/android/NotificationsView;->lastUpdateTime:I

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-direct {p0}, Lcom/vkontakte/android/NotificationsView;->init()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    invoke-direct {p0}, Lcom/vkontakte/android/NotificationsView;->init()V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    invoke-direct {p0}, Lcom/vkontakte/android/NotificationsView;->init()V

    .line 84
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NotificationsView;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->profileClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$10(I)V
    .locals 0

    .prologue
    .line 60
    sput p0, Lcom/vkontakte/android/NotificationsView;->lastUpdateTime:I

    return-void
.end method

.method static synthetic access$11()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/vkontakte/android/NotificationsView;->lastUpdateTime:I

    return v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/NotificationsView;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/vkontakte/android/NotificationsView;->preloading:Z

    return v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/NotificationsView;Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/vkontakte/android/NotificationsView;->preloading:Z

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/NotificationsView;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/vkontakte/android/NotificationsView;->preloadOnReady:Z

    return v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/NotificationsView;Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/vkontakte/android/NotificationsView;->preloadOnReady:Z

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/NotificationsView;Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/vkontakte/android/NotificationsView;->moreAvailable:Z

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/NotificationsView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->footerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/NotificationsView;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/vkontakte/android/NotificationsView;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/NotificationsView;Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/vkontakte/android/NotificationsView;->dataLoading:Z

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/PhotoStripView$OnPhotoClickListener;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->photoStripClickListener:Lcom/vkontakte/android/ui/PhotoStripView$OnPhotoClickListener;

    return-object v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/EmptyView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Lcom/vkontakte/android/ui/EmptyView;

    return-object v0
.end method

.method static synthetic access$21(Lcom/vkontakte/android/NotificationsView;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/NotificationsView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->afterLoad:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$23(Lcom/vkontakte/android/NotificationsView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView;->afterLoad:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->adapter:Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/NotificationsView;)[[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->langInfo:[[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/RefreshableListView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ErrorView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->error:Lcom/vkontakte/android/ui/ErrorView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/NotificationsView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$7()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/vkontakte/android/NotificationsView;->offset:I

    return v0
.end method

.method static synthetic access$8(I)V
    .locals 0

    .prologue
    .line 64
    sput p0, Lcom/vkontakte/android/NotificationsView;->offset:I

    return-void
.end method

.method static synthetic access$9(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    sput-object p0, Lcom/vkontakte/android/NotificationsView;->from:Ljava/lang/String;

    return-void
.end method

.method private init()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 88
    const/4 v3, 0x4

    new-array v3, v3, [[[Ljava/lang/String;

    .line 89
    new-array v5, v10, [[Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0023

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 91
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0024

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 92
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0025

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    .line 94
    new-array v5, v10, [[Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0026

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 96
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0027

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 97
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0028

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v5, v3, v8

    .line 99
    new-array v5, v10, [[Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0029

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 101
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d002a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 102
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d002b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v5, v3, v9

    .line 104
    new-array v5, v10, [[Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d002c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 106
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d002d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 107
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d002e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v5, v3, v10

    .line 88
    iput-object v3, p0, Lcom/vkontakte/android/NotificationsView;->langInfo:[[[Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f060019

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NotificationsView;->setBackgroundColor(I)V

    .line 112
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/NotificationsView;->footerView:Landroid/widget/FrameLayout;

    .line 113
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 114
    .local v2, "pb":Landroid/widget/ProgressBar;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-direct {v0, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 115
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 116
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView;->footerView:Landroid/widget/FrameLayout;

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-virtual {v3, v4, v5, v4, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 118
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 119
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 121
    new-instance v3, Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 122
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v5, p0, Lcom/vkontakte/android/NotificationsView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->addFooterView(Landroid/view/View;)V

    .line 123
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v5, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;

    invoke-direct {v5, p0, v11}, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;-><init>(Lcom/vkontakte/android/NotificationsView;Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;)V

    iput-object v5, p0, Lcom/vkontakte/android/NotificationsView;->adapter:Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3, v11}, Lcom/vkontakte/android/ui/RefreshableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 125
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v3, v5, :cond_1

    .line 126
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 127
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 129
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setTopColor(I)V

    .line 130
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 134
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 137
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NotificationsView;->addView(Landroid/view/View;)V

    .line 138
    new-instance v3, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v5, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;

    invoke-direct {v5, p0, v11}, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;-><init>(Lcom/vkontakte/android/NotificationsView;Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;)V

    iget-object v6, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-direct {v3, v5, v6, p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v3, p0, Lcom/vkontakte/android/NotificationsView;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 142
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/NotificationsView;->progress:Landroid/widget/ProgressBar;

    .line 143
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v5, -0x2

    invoke-direct {v1, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 144
    .local v1, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 145
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    iget-object v5, p0, Lcom/vkontakte/android/NotificationsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 147
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NotificationsView;->addView(Landroid/view/View;)V

    .line 149
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/ui/EmptyView;->create(Landroid/content/Context;)Lcom/vkontakte/android/ui/EmptyView;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Lcom/vkontakte/android/ui/EmptyView;

    .line 150
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Lcom/vkontakte/android/ui/EmptyView;

    const v5, 0x7f0802c8

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 151
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Lcom/vkontakte/android/ui/EmptyView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/ui/EmptyView;->setVisibility(I)V

    .line 152
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NotificationsView;->addView(Landroid/view/View;)V

    .line 154
    new-instance v3, Lcom/vkontakte/android/NotificationsView$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/NotificationsView$1;-><init>(Lcom/vkontakte/android/NotificationsView;)V

    iput-object v3, p0, Lcom/vkontakte/android/NotificationsView;->profileClickListener:Landroid/view/View$OnClickListener;

    .line 166
    new-instance v3, Lcom/vkontakte/android/NotificationsView$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/NotificationsView$2;-><init>(Lcom/vkontakte/android/NotificationsView;)V

    iput-object v3, p0, Lcom/vkontakte/android/NotificationsView;->entryClickListener:Landroid/view/View$OnClickListener;

    .line 191
    new-instance v3, Lcom/vkontakte/android/NotificationsView$3;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/NotificationsView$3;-><init>(Lcom/vkontakte/android/NotificationsView;)V

    iput-object v3, p0, Lcom/vkontakte/android/NotificationsView;->photoStripClickListener:Lcom/vkontakte/android/ui/PhotoStripView$OnPhotoClickListener;

    .line 201
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v5, Lcom/vkontakte/android/NotificationsView$4;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NotificationsView$4;-><init>(Lcom/vkontakte/android/NotificationsView;)V

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 243
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f03003f

    invoke-static {v3, v5, v11}, Lcom/vkontakte/android/NotificationsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/ui/ErrorView;

    iput-object v3, p0, Lcom/vkontakte/android/NotificationsView;->error:Lcom/vkontakte/android/ui/ErrorView;

    .line 244
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView;->error:Lcom/vkontakte/android/ui/ErrorView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 245
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView;->error:Lcom/vkontakte/android/ui/ErrorView;

    new-instance v5, Lcom/vkontakte/android/NotificationsView$5;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NotificationsView$5;-><init>(Lcom/vkontakte/android/NotificationsView;)V

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NotificationsView;->addView(Landroid/view/View;)V

    .line 254
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    .line 256
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v11, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "notifications_updated"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/vkontakte/android/NotificationsView;->lastUpdateTime:I

    .line 257
    return-void

    .line 146
    :cond_2
    const/16 v3, 0x8

    goto/16 :goto_0
.end method

.method private like(I)V
    .locals 9
    .param p1, "pos"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x0

    .line 269
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/api/NotificationEntry;

    .line 270
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

    .line 271
    new-instance v1, Lcom/vkontakte/android/NotificationsView$6;

    invoke-direct {v1, p0, v8}, Lcom/vkontakte/android/NotificationsView$6;-><init>(Lcom/vkontakte/android/NotificationsView;Lcom/vkontakte/android/api/NotificationEntry;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallLike;->setCallback(Lcom/vkontakte/android/api/WallLike$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 284
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 285
    return-void

    .line 270
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
    .line 260
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 261
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->preloaded:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 262
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 265
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
    .line 1141
    sget v0, Lcom/vkontakte/android/NotificationsView;->lastUpdateTime:I

    if-lez v0, :cond_0

    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080067

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

    .line 1143
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public loadData(Z)Z
    .locals 7
    .param p1, "refresh"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 385
    iget-boolean v3, p0, Lcom/vkontakte/android/NotificationsView;->dataLoading:Z

    if-eqz v3, :cond_1

    .line 472
    :cond_0
    :goto_0
    return v2

    .line 386
    :cond_1
    iput-boolean v1, p0, Lcom/vkontakte/android/NotificationsView;->dataLoading:Z

    .line 387
    if-eqz p1, :cond_2

    .line 388
    sput v2, Lcom/vkontakte/android/NotificationsView;->offset:I

    .line 389
    const-string v3, "0"

    sput-object v3, Lcom/vkontakte/android/NotificationsView;->from:Ljava/lang/String;

    .line 391
    :cond_2
    sget-object v3, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_3

    sget v3, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->isRefreshing()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 392
    .local v0, "fromCache":Z
    :goto_1
    new-instance v4, Lcom/vkontakte/android/api/NotificationsGet;

    sget v5, Lcom/vkontakte/android/NotificationsView;->offset:I

    sget-object v6, Lcom/vkontakte/android/NotificationsView;->from:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/vkontakte/android/NotificationsView;->preloading:Z

    if-eqz v3, :cond_4

    const/16 v3, 0x14

    :goto_2
    invoke-direct {v4, v5, v6, v3, v0}, Lcom/vkontakte/android/api/NotificationsGet;-><init>(ILjava/lang/String;IZ)V

    .line 393
    new-instance v3, Lcom/vkontakte/android/NotificationsView$8;

    invoke-direct {v3, p0, v0, p1}, Lcom/vkontakte/android/NotificationsView$8;-><init>(Lcom/vkontakte/android/NotificationsView;ZZ)V

    invoke-virtual {v4, v3}, Lcom/vkontakte/android/api/NotificationsGet;->setCallback(Lcom/vkontakte/android/api/NotificationsGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 471
    invoke-virtual {v3, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 392
    iput-object v3, p0, Lcom/vkontakte/android/NotificationsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 472
    sget-object v3, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_0

    sget v3, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->isRefreshing()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    goto :goto_0

    .end local v0    # "fromCache":Z
    :cond_3
    move v0, v2

    .line 391
    goto :goto_1

    .line 392
    .restart local v0    # "fromCache":Z
    :cond_4
    const/16 v3, 0x28

    goto :goto_2
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 360
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 364
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 1136
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NotificationsView;->loadData(Z)Z

    .line 1137
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 368
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->updateList()V

    .line 369
    return-void
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 504
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 510
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

    .line 1148
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    .line 1149
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/EmptyView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1150
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1151
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1152
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1153
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/EmptyView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1154
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/EmptyView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1155
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 1156
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1157
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/EmptyView;->setTag(Ljava/lang/Object;)V

    .line 1171
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_2
    :goto_0
    return-void

    .line 1160
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/EmptyView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1161
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1162
    .restart local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1163
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1164
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/EmptyView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 1165
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/EmptyView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1166
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 1167
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1168
    :cond_5
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Lcom/vkontakte/android/ui/EmptyView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/EmptyView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onScrolledToLastItem()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 484
    iget-boolean v0, p0, Lcom/vkontakte/android/NotificationsView;->dataLoading:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/NotificationsView;->preloading:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/vkontakte/android/NotificationsView;->moreAvailable:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/vkontakte/android/NotificationsView;->preloaded:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 485
    :cond_1
    iget-boolean v0, p0, Lcom/vkontakte/android/NotificationsView;->preloading:Z

    if-eqz v0, :cond_3

    .line 486
    iput-boolean v2, p0, Lcom/vkontakte/android/NotificationsView;->preloading:Z

    .line 487
    iput-boolean v3, p0, Lcom/vkontakte/android/NotificationsView;->preloadOnReady:Z

    .line 498
    :cond_2
    :goto_0
    return-void

    .line 488
    :cond_3
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->preloaded:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 489
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    sget-object v1, Lcom/vkontakte/android/NotificationsView;->preloaded:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 490
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->updateList()V

    .line 491
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->preloaded:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 492
    iput-boolean v3, p0, Lcom/vkontakte/android/NotificationsView;->preloading:Z

    .line 493
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NotificationsView;->loadData(Z)Z

    goto :goto_0

    .line 495
    :cond_4
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NotificationsView;->loadData(Z)Z

    goto :goto_0
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 372
    new-instance v0, Lcom/vkontakte/android/NotificationsView$7;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NotificationsView$7;-><init>(Lcom/vkontakte/android/NotificationsView;)V

    .line 377
    .local v0, "r":Ljava/lang/Runnable;
    iget-boolean v1, p0, Lcom/vkontakte/android/NotificationsView;->dataLoading:Z

    if-eqz v1, :cond_0

    .line 378
    iput-object v0, p0, Lcom/vkontakte/android/NotificationsView;->afterLoad:Ljava/lang/Runnable;

    .line 382
    :goto_0
    return-void

    .line 381
    :cond_0
    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/NotificationsView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public updateList()V
    .locals 2

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/vkontakte/android/NotificationsView$9;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NotificationsView$9;-><init>(Lcom/vkontakte/android/NotificationsView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 480
    return-void
.end method
