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

.field private static notifications:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static preloaded:Ljava/util/Vector;
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

.field private dataLoading:Z

.field private entryClickListener:Landroid/view/View$OnClickListener;

.field private footerView:Landroid/widget/FrameLayout;

.field private gReusableViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/ui/RoundedImageView;",
            ">;"
        }
    .end annotation
.end field

.field private imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private langInfo:[[[Ljava/lang/String;

.field private list:Lcom/vkontakte/android/ui/RefreshableListView;

.field private moreAvailable:Z

.field private noNewsView:Landroid/widget/TextView;

.field private preloadOnReady:Z

.field private preloading:Z

.field private profileClickListener:Landroid/view/View$OnClickListener;

.field private progress:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    .line 47
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/NotificationsView;->preloaded:Ljava/util/Vector;

    .line 53
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

    .line 44
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

    .line 44
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

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NotificationsView;->gReusableViews:Ljava/util/Vector;

    .line 70
    invoke-direct {p0}, Lcom/vkontakte/android/NotificationsView;->init()V

    .line 71
    return-void
.end method

.method static synthetic access$0()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/NotificationsView;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->profileClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$10()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->preloaded:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$11(I)V
    .locals 0

    .prologue
    .line 53
    sput p0, Lcom/vkontakte/android/NotificationsView;->lastUpdateTime:I

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/NotificationsView;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/vkontakte/android/NotificationsView;->preloading:Z

    return v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/NotificationsView;Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/vkontakte/android/NotificationsView;->preloading:Z

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/NotificationsView;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/vkontakte/android/NotificationsView;->preloadOnReady:Z

    return v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/NotificationsView;Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/vkontakte/android/NotificationsView;->preloadOnReady:Z

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/NotificationsView;Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/vkontakte/android/NotificationsView;->moreAvailable:Z

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/NotificationsView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/NotificationsView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->footerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/NotificationsView;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/vkontakte/android/NotificationsView;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/NotificationsView;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->entryClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/NotificationsView;Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/vkontakte/android/NotificationsView;->dataLoading:Z

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/NotificationsView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$22(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->adapter:Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/NotificationsView;)[[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->langInfo:[[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/NotificationsView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->gReusableViews:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/RefreshableListView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/NotificationsView;I)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NotificationsView;->like(I)V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/NotificationsView;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/NotificationsView;->showReplyBox(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/NotificationsView;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/NotificationsView;->sendComment(ILjava/lang/String;)V

    return-void
.end method

.method private init()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 75
    const/4 v5, 0x4

    new-array v5, v5, [[[Ljava/lang/String;

    .line 76
    new-array v6, v11, [[Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0024

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 78
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0025

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 79
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0026

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    aput-object v6, v5, v4

    .line 81
    new-array v6, v11, [[Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0027

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 83
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0028

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 84
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0029

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    aput-object v6, v5, v9

    .line 86
    new-array v6, v11, [[Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a002a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 88
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a002b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 89
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a002c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    aput-object v6, v5, v10

    .line 91
    new-array v6, v11, [[Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a002d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 93
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a002e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 94
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a002f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    aput-object v6, v5, v11

    .line 75
    iput-object v5, p0, Lcom/vkontakte/android/NotificationsView;->langInfo:[[[Ljava/lang/String;

    .line 98
    invoke-virtual {p0, v12}, Lcom/vkontakte/android/NotificationsView;->setBackgroundColor(I)V

    .line 99
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/NotificationsView;->footerView:Landroid/widget/FrameLayout;

    .line 100
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 101
    .local v3, "pb":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020224

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-direct {v0, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 103
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 104
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v5, p0, Lcom/vkontakte/android/NotificationsView;->footerView:Landroid/widget/FrameLayout;

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    const/high16 v7, 0x40e00000    # 7.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-virtual {v5, v4, v6, v4, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 106
    iget-object v5, p0, Lcom/vkontakte/android/NotificationsView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 107
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 109
    new-instance v5, Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 110
    iget-object v5, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v6, p0, Lcom/vkontakte/android/NotificationsView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->addFooterView(Landroid/view/View;)V

    .line 111
    iget-object v5, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/RefreshableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v6, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;-><init>(Lcom/vkontakte/android/NotificationsView;Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;)V

    iput-object v6, p0, Lcom/vkontakte/android/NotificationsView;->adapter:Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    :cond_0
    iget-object v5, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v5, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v12}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 114
    iget-object v5, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v12}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 115
    iget-object v5, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 119
    iget-object v5, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 120
    iget-object v5, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NotificationsView;->addView(Landroid/view/View;)V

    .line 121
    new-instance v5, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v6, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;-><init>(Lcom/vkontakte/android/NotificationsView;Lcom/vkontakte/android/NotificationsView$NotificationsImagesAdapter;)V

    iget-object v7, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-direct {v5, v6, v7, p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/ListView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v5, p0, Lcom/vkontakte/android/NotificationsView;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 123
    iget-object v5, p0, Lcom/vkontakte/android/NotificationsView;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v5, v9}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->setAllowRepeat(Z)V

    .line 125
    new-instance v5, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/NotificationsView;->progress:Landroid/widget/ProgressBar;

    .line 126
    iget-object v5, p0, Lcom/vkontakte/android/NotificationsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020224

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v1, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 128
    .local v1, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 129
    iget-object v5, p0, Lcom/vkontakte/android/NotificationsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v5, p0, Lcom/vkontakte/android/NotificationsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getCount()I

    move-result v6

    if-nez v6, :cond_1

    :goto_0
    invoke-virtual {v5, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 131
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NotificationsView;->addView(Landroid/view/View;)V

    .line 133
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    .line 134
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    const v5, -0x888889

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    const v5, 0x7f090077

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 136
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    const/high16 v5, 0x41880000    # 17.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 137
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 138
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v12, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 139
    .local v2, "lparams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 140
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NotificationsView;->addView(Landroid/view/View;)V

    .line 144
    new-instance v4, Lcom/vkontakte/android/NotificationsView$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/NotificationsView$1;-><init>(Lcom/vkontakte/android/NotificationsView;)V

    iput-object v4, p0, Lcom/vkontakte/android/NotificationsView;->profileClickListener:Landroid/view/View$OnClickListener;

    .line 156
    new-instance v4, Lcom/vkontakte/android/NotificationsView$2;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/NotificationsView$2;-><init>(Lcom/vkontakte/android/NotificationsView;)V

    iput-object v4, p0, Lcom/vkontakte/android/NotificationsView;->entryClickListener:Landroid/view/View$OnClickListener;

    .line 172
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v5, Lcom/vkontakte/android/NotificationsView$3;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NotificationsView$3;-><init>(Lcom/vkontakte/android/NotificationsView;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 200
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v5, Lcom/vkontakte/android/NotificationsView$4;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NotificationsView$4;-><init>(Lcom/vkontakte/android/NotificationsView;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 215
    return-void

    .line 130
    .end local v2    # "lparams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    const/16 v4, 0x8

    goto :goto_0
.end method

.method private like(I)V
    .locals 8
    .param p1, "pos"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x0

    .line 222
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/api/NotificationEntry;

    .line 223
    .local v6, "e":Lcom/vkontakte/android/api/NotificationEntry;
    new-instance v0, Lcom/vkontakte/android/api/WallLike;

    iget-boolean v1, v6, Lcom/vkontakte/android/api/NotificationEntry;->isLiked:Z

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    iget-object v2, v6, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v3, v6, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    if-ne v3, v7, :cond_1

    iget v3, v6, Lcom/vkontakte/android/api/NotificationEntry;->commentID:I

    :goto_1
    iget v5, v6, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    if-ne v5, v7, :cond_2

    const/4 v5, 0x5

    :goto_2
    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/WallLike;-><init>(ZIIZI)V

    .line 224
    new-instance v1, Lcom/vkontakte/android/NotificationsView$5;

    invoke-direct {v1, p0, v6}, Lcom/vkontakte/android/NotificationsView$5;-><init>(Lcom/vkontakte/android/NotificationsView;Lcom/vkontakte/android/api/NotificationEntry;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallLike;->setCallback(Lcom/vkontakte/android/api/WallLike$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 237
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 238
    return-void

    .line 223
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v6, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->postID:I

    goto :goto_1

    :cond_2
    iget-object v5, v6, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->type:I

    goto :goto_2
.end method

.method private sendComment(ILjava/lang/String;)V
    .locals 12
    .param p1, "pos"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x5

    .line 267
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/api/NotificationEntry;

    .line 268
    .local v9, "e":Lcom/vkontakte/android/api/NotificationEntry;
    if-nez v9, :cond_0

    .line 309
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, v9, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v0, v5, :cond_3

    .line 271
    iget-object v0, v9, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 272
    .local v1, "oid":I
    iget-object v0, v9, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 278
    .local v2, "pid":I
    :goto_1
    const/4 v11, 0x0

    .line 279
    .local v11, "uname":Ljava/lang/String;
    const/4 v10, 0x0

    .line 280
    .local v10, "uid":I
    iget-object v0, v9, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, v9, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    iget v10, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 282
    iget-object v0, v9, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    iget-object v11, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 284
    :cond_1
    move-object v8, p2

    .line 286
    .local v8, "text1":Ljava/lang/String;
    if-eqz v11, :cond_2

    :try_start_0
    invoke-virtual {p2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[id"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v11, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 290
    :cond_2
    :goto_2
    move-object v6, p2

    .line 291
    .local v6, "ftext":Ljava/lang/String;
    new-instance v0, Lcom/vkontakte/android/api/WallAddComment;

    iget v4, v9, Lcom/vkontakte/android/api/NotificationEntry;->commentID:I

    iget-object v3, v9, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v3, v5, :cond_4

    iget-object v3, v9, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    iget v5, v3, Lcom/vkontakte/android/NewsEntry;->type:I

    :goto_3
    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/WallAddComment;-><init>(IILjava/lang/String;II)V

    .line 292
    new-instance v3, Lcom/vkontakte/android/NotificationsView$7;

    move-object v4, p0

    move-object v5, v9

    move v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/vkontakte/android/NotificationsView$7;-><init>(Lcom/vkontakte/android/NotificationsView;Lcom/vkontakte/android/api/NotificationEntry;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/api/WallAddComment;->setCallback(Lcom/vkontakte/android/api/WallAddComment$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 307
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 308
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 274
    .end local v1    # "oid":I
    .end local v2    # "pid":I
    .end local v6    # "ftext":Ljava/lang/String;
    .end local v8    # "text1":Ljava/lang/String;
    .end local v10    # "uid":I
    .end local v11    # "uname":Ljava/lang/String;
    :cond_3
    iget-object v0, v9, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 275
    .restart local v1    # "oid":I
    iget-object v0, v9, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .restart local v2    # "pid":I
    goto :goto_1

    .line 291
    .restart local v6    # "ftext":Ljava/lang/String;
    .restart local v8    # "text1":Ljava/lang/String;
    .restart local v10    # "uid":I
    .restart local v11    # "uname":Ljava/lang/String;
    :cond_4
    iget-object v3, v9, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget v5, v3, Lcom/vkontakte/android/NewsEntry;->type:I

    goto :goto_3

    .line 289
    .end local v6    # "ftext":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private showReplyBox(ILjava/lang/String;)V
    .locals 9
    .param p1, "pos"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 241
    sget-object v5, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/NotificationEntry;

    .line 244
    .local v0, "n":Lcom/vkontakte/android/api/NotificationEntry;
    iget-object v5, v0, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    if-eqz v5, :cond_2

    .line 245
    iget-object v5, v0, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    iget v1, v5, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 246
    .local v1, "uid":I
    iget-object v5, v0, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    iget-object v2, v5, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 247
    .local v2, "uname":Ljava/lang/String;
    iget-object v3, v0, Lcom/vkontakte/android/api/NotificationEntry;->nameDat:Ljava/lang/String;

    .line 248
    .local v3, "uname1":Ljava/lang/String;
    iget-object v5, v0, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    iget-object v4, v5, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 256
    .local v4, "uphoto":Ljava/lang/String;
    :goto_0
    new-instance v5, Lcom/vkontakte/android/ui/ReplyDialog;

    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v6

    if-nez p2, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "text":Ljava/lang/String;
    :cond_0
    invoke-direct {v5, v6, p2, v3, v4}, Lcom/vkontakte/android/ui/ReplyDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v6, Lcom/vkontakte/android/NotificationsView$6;

    invoke-direct {v6, p0, p1}, Lcom/vkontakte/android/NotificationsView$6;-><init>(Lcom/vkontakte/android/NotificationsView;I)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ReplyDialog;->setListener(Lcom/vkontakte/android/ui/ReplyDialog$Listener;)Landroid/app/Dialog;

    move-result-object v5

    .line 263
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 264
    .end local v1    # "uid":I
    .end local v2    # "uname":Ljava/lang/String;
    .end local v3    # "uname1":Ljava/lang/String;
    .end local v4    # "uphoto":Ljava/lang/String;
    :cond_1
    return-void

    .line 249
    .restart local p2    # "text":Ljava/lang/String;
    :cond_2
    iget-object v5, v0, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    if-eqz v5, :cond_1

    .line 250
    iget-object v5, v0, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget v1, v5, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 251
    .restart local v1    # "uid":I
    iget-object v5, v0, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v2, v5, v6

    .restart local v2    # "uname":Ljava/lang/String;
    move-object v3, v2

    .line 252
    .restart local v3    # "uname1":Ljava/lang/String;
    iget-object v5, v0, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v4, v5, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 253
    .restart local v4    # "uphoto":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 218
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
    .line 891
    sget v0, Lcom/vkontakte/android/NotificationsView;->lastUpdateTime:I

    if-lez v0, :cond_0

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090052

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

    .line 893
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public loadData(Z)V
    .locals 5
    .param p1, "refresh"    # Z

    .prologue
    const/4 v1, 0x0

    .line 330
    new-instance v3, Lcom/vkontakte/android/api/NotificationsGet;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/vkontakte/android/NotificationsView;->preloading:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x14

    :goto_1
    sget-object v4, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_0

    sget v4, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/RefreshableListView;->isRefreshing()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-direct {v3, v0, v2, v1}, Lcom/vkontakte/android/api/NotificationsGet;-><init>(IIZ)V

    .line 331
    new-instance v0, Lcom/vkontakte/android/NotificationsView$9;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/NotificationsView$9;-><init>(Lcom/vkontakte/android/NotificationsView;Z)V

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/api/NotificationsGet;->setCallback(Lcom/vkontakte/android/api/NotificationsGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 387
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 388
    return-void

    .line 330
    :cond_1
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v2, 0x28

    goto :goto_1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 312
    new-instance v0, Lcom/vkontakte/android/NotificationsView$8;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NotificationsView$8;-><init>(Lcom/vkontakte/android/NotificationsView;)V

    .line 315
    const-wide/16 v1, 0x12c

    .line 312
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/NotificationsView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 316
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 886
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NotificationsView;->loadData(Z)V

    .line 887
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 320
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 321
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->updateList()V

    .line 322
    return-void
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 418
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 424
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

    .line 898
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    .line 899
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 900
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 901
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 902
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 903
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 904
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 905
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 906
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 907
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 921
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_2
    :goto_0
    return-void

    .line 910
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 911
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 912
    .restart local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 913
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 914
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 915
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 916
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 917
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 918
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

    .line 398
    iget-boolean v0, p0, Lcom/vkontakte/android/NotificationsView;->dataLoading:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/NotificationsView;->preloading:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/vkontakte/android/NotificationsView;->moreAvailable:Z

    if-eqz v0, :cond_1

    .line 399
    iget-boolean v0, p0, Lcom/vkontakte/android/NotificationsView;->preloading:Z

    if-eqz v0, :cond_2

    .line 400
    iput-boolean v2, p0, Lcom/vkontakte/android/NotificationsView;->preloading:Z

    .line 401
    iput-boolean v3, p0, Lcom/vkontakte/android/NotificationsView;->preloadOnReady:Z

    .line 412
    :cond_1
    :goto_0
    return-void

    .line 402
    :cond_2
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->preloaded:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 403
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    sget-object v1, Lcom/vkontakte/android/NotificationsView;->preloaded:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 404
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationsView;->updateList()V

    .line 405
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->preloaded:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 406
    iput-boolean v3, p0, Lcom/vkontakte/android/NotificationsView;->preloading:Z

    .line 407
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NotificationsView;->loadData(Z)V

    goto :goto_0

    .line 409
    :cond_3
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NotificationsView;->loadData(Z)V

    goto :goto_0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 325
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 327
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refresh()V

    goto :goto_0
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 391
    new-instance v0, Lcom/vkontakte/android/NotificationsView$10;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NotificationsView$10;-><init>(Lcom/vkontakte/android/NotificationsView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NotificationsView;->post(Ljava/lang/Runnable;)Z

    .line 394
    return-void
.end method
