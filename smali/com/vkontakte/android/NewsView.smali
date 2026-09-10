.class public Lcom/vkontakte/android/NewsView;
.super Landroid/widget/FrameLayout;
.source "NewsView.java"

# interfaces
.implements Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/NewsView$NewsAdapter;,
        Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;
    }
.end annotation


# static fields
.field public static final MODE_COMMENTS:I = 0x3

.field public static final MODE_DEFAULT:I = 0x0

.field public static final MODE_FAVE:I = 0x2

.field public static final MODE_PHOTOS:I = 0x1

.field public static final MODE_POSTPONED:I = 0x5

.field public static final MODE_SEARCH:I = 0x4

.field public static final MODE_SUGGESTED:I = 0x6

.field private static viewsPrecreated:Z


# instance fields
.field protected bigProgress:Landroid/widget/ProgressBar;

.field private clearForNew:Z

.field protected commentsFrom:Ljava/lang/String;

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field protected dataLoading:Z

.field protected emptyView:Lcom/vkontakte/android/ui/EmptyView;

.field protected errorView:Lcom/vkontakte/android/ui/ErrorView;

.field protected footerView:Landroid/widget/FrameLayout;

.field private highlight:Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;

.field protected imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private itemLayout:I

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/ui/posts/PostDisplayItem;",
            ">;"
        }
    .end annotation
.end field

.field protected lastUpdateTime:I

.field list:Lcom/vkontakte/android/ui/RefreshableListView;

.field private listID:I

.field private mode:I

.field protected moreAvailable:Z

.field private newFrom:Ljava/lang/String;

.field protected newNews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private newNewsReq:Lcom/vkontakte/android/APIRequest;

.field private newOffset:I

.field private newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

.field protected news:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected offset:I

.field private onPauseRunnable:Ljava/lang/Runnable;

.field protected preloadOnReady:Z

.field protected preloadedNews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected preloading:Z

.field protected prependNewEntries:Z

.field protected refreshingOnStart:Z

.field private searchQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/NewsView;->viewsPrecreated:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    .line 93
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    .line 98
    iput v1, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    .line 99
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 100
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    .line 101
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    .line 104
    const v0, 0x7f03005e

    iput v0, p0, Lcom/vkontakte/android/NewsView;->itemLayout:I

    .line 106
    iput v1, p0, Lcom/vkontakte/android/NewsView;->listID:I

    .line 108
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->clearForNew:Z

    .line 120
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    .line 93
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    .line 98
    iput v1, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    .line 99
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 100
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    .line 101
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    .line 104
    const v0, 0x7f03005e

    iput v0, p0, Lcom/vkontakte/android/NewsView;->itemLayout:I

    .line 106
    iput v1, p0, Lcom/vkontakte/android/NewsView;->listID:I

    .line 108
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->clearForNew:Z

    .line 125
    iput p2, p0, Lcom/vkontakte/android/NewsView;->itemLayout:I

    .line 126
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    .line 93
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    .line 98
    iput v1, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    .line 99
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 100
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    .line 101
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    .line 104
    const v0, 0x7f03005e

    iput v0, p0, Lcom/vkontakte/android/NewsView;->itemLayout:I

    .line 106
    iput v1, p0, Lcom/vkontakte/android/NewsView;->listID:I

    .line 108
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->clearForNew:Z

    .line 136
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    .line 93
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    .line 98
    iput v1, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    .line 99
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 100
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    .line 101
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    .line 104
    const v0, 0x7f03005e

    iput v0, p0, Lcom/vkontakte/android/NewsView;->itemLayout:I

    .line 106
    iput v1, p0, Lcom/vkontakte/android/NewsView;->listID:I

    .line 108
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->clearForNew:Z

    .line 141
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "noinit"    # Z

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    .line 93
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    .line 98
    iput v1, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    .line 99
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 100
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    .line 101
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    .line 104
    const v0, 0x7f03005e

    iput v0, p0, Lcom/vkontakte/android/NewsView;->itemLayout:I

    .line 106
    iput v1, p0, Lcom/vkontakte/android/NewsView;->listID:I

    .line 108
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->clearForNew:Z

    .line 131
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 132
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewsView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1()Z
    .locals 1

    .prologue
    .line 116
    sget-boolean v0, Lcom/vkontakte/android/NewsView;->viewsPrecreated:Z

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/NewsView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/vkontakte/android/NewsView;->newFrom:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/NewsView;Z)V
    .locals 0

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/vkontakte/android/NewsView;->clearForNew:Z

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/vkontakte/android/NewsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/NewsView;)I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/vkontakte/android/NewsView;->mode:I

    return v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/NewsView;)Lcom/vkontakte/android/APIRequest;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->newNewsReq:Lcom/vkontakte/android/APIRequest;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/NewsView;)Lcom/vkontakte/android/APIRequest;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/NewsView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/NewsView;Ljava/lang/String;Lcom/vkontakte/android/NewsEntry;)V
    .locals 0

    .prologue
    .line 1347
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/NewsView;->performPostAction(Ljava/lang/String;Lcom/vkontakte/android/NewsEntry;)V

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsEntry;)V
    .locals 0

    .prologue
    .line 1513
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsView;->deletePost(Lcom/vkontakte/android/NewsEntry;)V

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1451
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/NewsView;->saveRepostComment(Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Z)V
    .locals 0

    .prologue
    .line 116
    sput-boolean p0, Lcom/vkontakte/android/NewsView;->viewsPrecreated:Z

    return-void
.end method

.method static synthetic access$20(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1432
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/NewsView;->editRepostComment(Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/NewsView;Landroid/view/View;Lcom/vkontakte/android/NewsEntry;)V
    .locals 0

    .prologue
    .line 1287
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/NewsView;->showItemOptions(Landroid/view/View;Lcom/vkontakte/android/NewsEntry;)V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/NewsView;)Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->highlight:Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/NewsView;)V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/vkontakte/android/NewsView;->onEmptyBtnClick()V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/NewsView;)V
    .locals 0

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/vkontakte/android/NewsView;->showNew()V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/NewsView;)Lcom/vkontakte/android/ui/OverlayTextView;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/NewsView;)V
    .locals 0

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/vkontakte/android/NewsView;->updateNewPostsBtn()V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/NewsView;)I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/vkontakte/android/NewsView;->listID:I

    return v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/vkontakte/android/NewsView;->newNewsReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method private containsEntry(Lcom/vkontakte/android/NewsEntry;)Z
    .locals 3
    .param p1, "e"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    .line 1168
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1171
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1168
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 1169
    .local v0, "en":Lcom/vkontakte/android/NewsEntry;
    invoke-virtual {v0, p1}, Lcom/vkontakte/android/NewsEntry;->equals(Lcom/vkontakte/android/NewsEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private deletePost(Lcom/vkontakte/android/NewsEntry;)V
    .locals 4
    .param p1, "e"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    .line 1515
    :try_start_0
    new-instance v0, Lcom/vkontakte/android/api/WallDelete;

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v2, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v3, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/WallDelete;-><init>(III)V

    .line 1516
    new-instance v1, Lcom/vkontakte/android/NewsView$32;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/NewsView$32;-><init>(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsEntry;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallDelete;->setCallback(Lcom/vkontakte/android/api/WallDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1536
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1537
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1539
    :goto_0
    return-void

    .line 1538
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private editRepostComment(Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;)V
    .locals 4
    .param p1, "e"    # Lcom/vkontakte/android/NewsEntry;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 1433
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1434
    .local v0, "edit":Landroid/widget/EditText;
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1435
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 1436
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1437
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1438
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1439
    const v2, 0x7f08002b

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1440
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1441
    const v2, 0x7f0800a0

    new-instance v3, Lcom/vkontakte/android/NewsView$29;

    invoke-direct {v3, p0, p1, v0}, Lcom/vkontakte/android/NewsView$29;-><init>(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsEntry;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1447
    const v2, 0x7f080041

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1448
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1449
    return-void
.end method

.method private hideSource(Lcom/vkontakte/android/NewsEntry;)V
    .locals 2
    .param p1, "de"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    .line 1483
    new-instance v0, Lcom/vkontakte/android/api/NewsfeedAddBan;

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/NewsfeedAddBan;-><init>(I)V

    .line 1484
    new-instance v1, Lcom/vkontakte/android/NewsView$31;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/NewsView$31;-><init>(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsEntry;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/NewsfeedAddBan;->setCallback(Lcom/vkontakte/android/api/NewsfeedAddBan$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1509
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1510
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1511
    return-void
.end method

.method private onEmptyBtnClick()V
    .locals 3

    .prologue
    .line 374
    iget v0, p0, Lcom/vkontakte/android/NewsView;->listID:I

    packed-switch v0, :pswitch_data_0

    .line 383
    :goto_0
    :pswitch_0
    return-void

    .line 377
    :pswitch_1
    const-string v1, "SuggestionsFriendsFragment"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v2, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0

    .line 380
    :pswitch_2
    const-string v1, "SuggestionsRecommendationsFragment"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v2, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0

    .line 374
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private performPostAction(Ljava/lang/String;Lcom/vkontakte/android/NewsEntry;)V
    .locals 12
    .param p1, "act"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 1348
    const-string v4, "hide"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1349
    invoke-direct {p0, p2}, Lcom/vkontakte/android/NewsView;->hideSource(Lcom/vkontakte/android/NewsEntry;)V

    .line 1351
    :cond_0
    const-string v4, "link"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1352
    const-string v2, "http://vk.com/"

    .line 1353
    .local v2, "ln":Ljava/lang/String;
    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    if-nez v4, :cond_7

    .line 1354
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "wall"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1362
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1363
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "clipboard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1364
    .local v0, "cm":Landroid/text/ClipboardManager;
    invoke-virtual {v0, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1365
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0801cb

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1367
    .end local v0    # "cm":Landroid/text/ClipboardManager;
    .end local v2    # "ln":Ljava/lang/String;
    :cond_2
    const-string v4, "orig"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1368
    const-string v3, "wall"

    .line 1369
    .local v3, "type":Ljava/lang/String;
    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    if-ne v4, v9, :cond_3

    .line 1370
    const-string v3, "photo"

    .line 1371
    :cond_3
    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    if-ne v4, v10, :cond_4

    .line 1372
    const-string v3, "video"

    .line 1373
    :cond_4
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "vkontakte://vk.com/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p2, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p2, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1375
    .end local v3    # "type":Ljava/lang/String;
    :cond_5
    const-string v4, "edit"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1376
    const/16 v4, 0x20

    invoke-virtual {p2, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1377
    iget-object v4, p2, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, v4}, Lcom/vkontakte/android/NewsView;->editRepostComment(Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;)V

    .line 1430
    :cond_6
    :goto_1
    return-void

    .line 1355
    .restart local v2    # "ln":Ljava/lang/String;
    :cond_7
    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v4, v10, :cond_8

    .line 1356
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1357
    goto/16 :goto_0

    :cond_8
    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v4, v9, :cond_9

    .line 1358
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "photo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1359
    goto/16 :goto_0

    :cond_9
    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 1360
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "topic"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 1380
    .end local v2    # "ln":Ljava/lang/String;
    :cond_a
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1381
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "edit"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1382
    const/16 v4, 0x800

    invoke-virtual {p2, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_b

    iget v4, p0, Lcom/vkontakte/android/NewsView;->listID:I

    if-gez v4, :cond_b

    .line 1383
    const-string v4, "public"

    invoke-virtual {v1, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1384
    :cond_b
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1386
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_c
    const-string v4, "del"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1387
    new-instance v4, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1388
    const v5, 0x7f08007e

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1389
    const v5, 0x7f08007f

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1390
    const v5, 0x7f08004e

    new-instance v6, Lcom/vkontakte/android/NewsView$27;

    invoke-direct {v6, p0, p2}, Lcom/vkontakte/android/NewsView$27;-><init>(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsEntry;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1396
    const v5, 0x7f08004f

    invoke-virtual {v4, v5, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1397
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1399
    :cond_d
    const-string v4, "report"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1400
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/vkontakte/android/ReportContentActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1401
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "itemID"

    iget v5, p2, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1402
    const-string v4, "ownerID"

    iget v5, p2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1403
    const-string v3, "post"

    .line 1404
    .restart local v3    # "type":Ljava/lang/String;
    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v4, v9, :cond_e

    .line 1405
    const-string v3, "photo"

    .line 1406
    :cond_e
    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v4, v10, :cond_f

    .line 1407
    const-string v3, "video"

    .line 1408
    :cond_f
    const-string v4, "type"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1409
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1411
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "type":Ljava/lang/String;
    :cond_10
    const-string v4, "publish"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1412
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-static {p2, v4, v11}, Lcom/vkontakte/android/data/Posts;->publishPostponed(Lcom/vkontakte/android/NewsEntry;Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 1414
    :cond_11
    const-string v4, "unsubscribe"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1415
    new-instance v4, Lcom/vkontakte/android/api/NewsfeedUnsubscribe;

    iget v5, p2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v6, p2, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v7, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-direct {v4, v5, v6, v7}, Lcom/vkontakte/android/api/NewsfeedUnsubscribe;-><init>(III)V

    .line 1416
    new-instance v5, Lcom/vkontakte/android/NewsView$28;

    invoke-direct {v5, p0, p2}, Lcom/vkontakte/android/NewsView$28;-><init>(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsEntry;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/api/NewsfeedUnsubscribe;->setCallback(Lcom/vkontakte/android/api/NewsfeedUnsubscribe$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 1427
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 1428
    invoke-virtual {v4, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_1
.end method

.method private saveRepostComment(Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;)V
    .locals 3
    .param p1, "e"    # Lcom/vkontakte/android/NewsEntry;
    .param p2, "newComment"    # Ljava/lang/String;

    .prologue
    .line 1452
    new-instance v0, Lcom/vkontakte/android/api/WallEdit;

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v2, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-direct {v0, v1, v2, p2}, Lcom/vkontakte/android/api/WallEdit;-><init>(IILjava/lang/String;)V

    .line 1453
    new-instance v1, Lcom/vkontakte/android/NewsView$30;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/NewsView$30;-><init>(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallEdit;->setCallback(Lcom/vkontakte/android/api/WallEdit$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1478
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 1479
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 1480
    return-void
.end method

.method private showItemOptions(Landroid/view/View;Lcom/vkontakte/android/NewsEntry;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "e"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    const/16 v12, 0x1000

    const/16 v11, 0x800

    const/4 v10, 0x0

    .line 1288
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1289
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1290
    .local v0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->canHideFromFeed()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eq v4, v5, :cond_0

    .line 1291
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08018b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1292
    const-string v4, "hide"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1294
    :cond_0
    const/16 v4, 0x20

    invoke-virtual {p2, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    if-lez v4, :cond_1

    .line 1295
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08022e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1296
    const-string v4, "orig"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1298
    :cond_1
    const/16 v4, 0x80

    invoke-virtual {p2, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->time:I

    const v5, 0x15180

    add-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    invoke-virtual {p2, v12}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1299
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800e0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1300
    const-string v4, "edit"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1302
    :cond_3
    invoke-virtual {p2, v11}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1303
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0802fc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1304
    const-string v4, "publish"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1306
    :cond_4
    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_6

    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_6

    .line 1307
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0801c9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1308
    const-string v4, "link"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1309
    const/16 v4, 0x40

    invoke-virtual {p2, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-nez v4, :cond_5

    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eq v4, v5, :cond_5

    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->userID:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-ne v4, v5, :cond_6

    .line 1310
    :cond_5
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08007d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    const-string v4, "del"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1314
    :cond_6
    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->userID:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eq v4, v5, :cond_8

    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    if-eqz v4, :cond_7

    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_7

    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    :cond_7
    invoke-virtual {p2, v12}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p2, v11}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1315
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0802d5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1316
    const-string v4, "report"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1318
    :cond_8
    iget v4, p0, Lcom/vkontakte/android/NewsView;->mode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_9

    .line 1319
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080311

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1320
    const-string v4, "unsubscribe"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1322
    :cond_9
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_b

    .line 1323
    new-instance v3, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1324
    .local v3, "pm":Landroid/widget/PopupMenu;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_a

    .line 1327
    new-instance v4, Lcom/vkontakte/android/NewsView$25;

    invoke-direct {v4, p0, v0, p2}, Lcom/vkontakte/android/NewsView$25;-><init>(Lcom/vkontakte/android/NewsView;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1334
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    .line 1345
    .end local v1    # "i":I
    .end local v3    # "pm":Landroid/widget/PopupMenu;
    :goto_1
    return-void

    .line 1325
    .restart local v1    # "i":I
    .restart local v3    # "pm":Landroid/widget/PopupMenu;
    :cond_a
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v5, v10, v1, v10, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1324
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1336
    .end local v1    # "i":I
    .end local v3    # "pm":Landroid/widget/PopupMenu;
    :cond_b
    new-instance v5, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1337
    new-array v4, v10, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    new-instance v6, Lcom/vkontakte/android/NewsView$26;

    invoke-direct {v6, p0, v0, p2}, Lcom/vkontakte/android/NewsView$26;-><init>(Lcom/vkontakte/android/NewsView;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;)V

    invoke-virtual {v5, v4, v6}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1343
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method private showNew()V
    .locals 14

    .prologue
    .line 641
    iget-boolean v9, p0, Lcom/vkontakte/android/NewsView;->clearForNew:Z

    if-eqz v9, :cond_2

    .line 642
    iget-object v9, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 643
    iget-object v9, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 644
    iget-object v9, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 645
    iget-object v9, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/ArrayList;

    const/4 v11, 0x0

    const/16 v12, 0xa

    iget-object v13, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 646
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 647
    .local v7, "nitems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    iget-object v9, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 649
    iget-object v9, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v7}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 650
    iget-object v9, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/16 v10, 0xa

    if-le v9, v10, :cond_0

    .line 651
    iget-object v9, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/ArrayList;

    const/16 v11, 0xa

    iget-object v12, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 652
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->updateList()V

    .line 653
    iget-object v9, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v10, Lcom/vkontakte/android/NewsView$12;

    invoke-direct {v10, p0}, Lcom/vkontakte/android/NewsView$12;-><init>(Lcom/vkontakte/android/NewsView;)V

    .line 658
    const-wide/16 v11, 0xc8

    .line 653
    invoke-virtual {v9, v10, v11, v12}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 659
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "news"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 660
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 661
    const-string v10, "feed_from"

    iget-object v11, p0, Lcom/vkontakte/android/NewsView;->newFrom:Ljava/lang/String;

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 662
    const-string v10, "feed_offset"

    iget v11, p0, Lcom/vkontakte/android/NewsView;->newOffset:I

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 663
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 664
    iget-object v9, p0, Lcom/vkontakte/android/NewsView;->newFrom:Ljava/lang/String;

    iput-object v9, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 665
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 666
    .local v2, "forCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    iget-object v9, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 667
    iget-object v9, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 668
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/vkontakte/android/NewsView$13;

    invoke-direct {v10, p0, v2}, Lcom/vkontakte/android/NewsView$13;-><init>(Lcom/vkontakte/android/NewsView;Ljava/util/ArrayList;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 672
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 673
    invoke-direct {p0}, Lcom/vkontakte/android/NewsView;->updateNewPostsBtn()V

    .line 737
    :goto_1
    return-void

    .line 647
    .end local v2    # "forCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    .line 648
    .local v1, "e":Lcom/vkontakte/android/NewsEntry;
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsView;->buildItems(Lcom/vkontakte/android/NewsEntry;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 675
    .end local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    .end local v7    # "nitems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 676
    .local v8, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    long-to-int v0, v9

    .line 677
    .local v0, "dayStart":I
    const v9, 0x15180

    rem-int v9, v0, v9

    sub-int/2addr v0, v9

    .line 678
    add-int/lit16 v0, v0, 0x3840

    .line 679
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "newAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v6, "newTagged":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v9, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_9

    .line 685
    :cond_4
    iget-object v9, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_b

    .line 690
    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_8

    .line 691
    iget-object v9, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 692
    iget-object v9, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 693
    .local v4, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    :cond_7
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_d

    .line 704
    .end local v4    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    :cond_8
    iget-object v9, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 705
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 706
    .restart local v7    # "nitems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    iget-object v9, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_f

    .line 708
    iget-object v9, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v7}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 709
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->updateList()V

    .line 719
    iget-object v9, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v10, Lcom/vkontakte/android/NewsView$14;

    invoke-direct {v10, p0}, Lcom/vkontakte/android/NewsView$14;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/ui/RefreshableListView;->post(Ljava/lang/Runnable;)Z

    .line 725
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 726
    .restart local v2    # "forCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    iget-object v9, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 727
    iget-object v9, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 728
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/vkontakte/android/NewsView$15;

    invoke-direct {v10, p0, v2}, Lcom/vkontakte/android/NewsView$15;-><init>(Lcom/vkontakte/android/NewsView;Ljava/util/ArrayList;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 734
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 735
    invoke-direct {p0}, Lcom/vkontakte/android/NewsView;->updateNewPostsBtn()V

    goto/16 :goto_1

    .line 680
    .end local v2    # "forCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    .end local v7    # "nitems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    .line 681
    .restart local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    iget v10, v1, Lcom/vkontakte/android/NewsEntry;->time:I

    if-lt v10, v0, :cond_4

    .line 682
    iget v10, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_a

    iget v10, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    :cond_a
    iget v10, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v11, 0x7

    if-ne v10, v11, :cond_3

    iget v10, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 685
    .end local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_b
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    .line 686
    .restart local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    iget v10, v1, Lcom/vkontakte/android/NewsEntry;->time:I

    if-lt v10, v0, :cond_6

    .line 687
    iget v10, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_c

    iget v10, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    :cond_c
    iget v10, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v11, 0x7

    if-ne v10, v11, :cond_5

    iget v10, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 694
    .end local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    .restart local v4    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    :cond_d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    .line 695
    .local v3, "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    .line 696
    .restart local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    iget v10, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v11, v3, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postOwnerID:I

    if-ne v10, v11, :cond_e

    iget v10, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v11, v3, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postID:I

    if-ne v10, v11, :cond_e

    .line 697
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_4

    .line 706
    .end local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    .end local v3    # "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    .end local v4    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    .restart local v7    # "nitems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    :cond_f
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    .line 707
    .restart local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsView;->buildItems(Lcom/vkontakte/android/NewsEntry;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5
.end method

.method private updateNewPostsBtn()V
    .locals 15

    .prologue
    const/high16 v14, -0x3de40000    # -39.0f

    const/4 v5, 0x1

    const-wide/16 v12, 0x12c

    const/4 v6, 0x0

    const/4 v11, 0x0

    .line 555
    iget-object v7, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/OverlayTextView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    move v2, v5

    .line 556
    .local v2, "curState":Z
    :goto_0
    iget-object v7, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    move v4, v5

    .line 557
    .local v4, "newState":Z
    :goto_1
    iget-object v7, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 558
    iget-boolean v7, p0, Lcom/vkontakte/android/NewsView;->clearForNew:Z

    if-eqz v7, :cond_3

    .line 559
    iget-object v7, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    const v8, 0x7f080223

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/OverlayTextView;->setText(I)V

    .line 564
    :cond_0
    :goto_2
    if-ne v2, v4, :cond_4

    .line 638
    :goto_3
    return-void

    .end local v2    # "curState":Z
    .end local v4    # "newState":Z
    :cond_1
    move v2, v6

    .line 555
    goto :goto_0

    .restart local v2    # "curState":Z
    :cond_2
    move v4, v6

    .line 556
    goto :goto_1

    .line 561
    .restart local v4    # "newState":Z
    :cond_3
    iget-object v7, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    const v8, 0x7f0d0059

    iget-object v9, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/OverlayTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 565
    :cond_4
    if-eqz v4, :cond_5

    .line 566
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v7, 0x421c0000    # 39.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v0, v11, v11, v11, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 567
    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 568
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 569
    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 577
    new-instance v5, Lcom/vkontakte/android/NewsView$10;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NewsView$10;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 599
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 600
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/OverlayTextView;->setVisibility(I)V

    .line 601
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-static {v14}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v1, v11, v11, v5, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 602
    .local v1, "ba":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v1, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 603
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 604
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    invoke-virtual {v5, v1}, Lcom/vkontakte/android/ui/OverlayTextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    .line 606
    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    .end local v1    # "ba":Landroid/view/animation/TranslateAnimation;
    :cond_5
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v7, -0x1

    invoke-direct {v3, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 607
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 608
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 609
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v5, 0x421c0000    # 39.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v0, v11, v11, v5, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 610
    .restart local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 611
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 612
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 613
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-static {v14}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v1, v11, v11, v11, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 614
    .restart local v1    # "ba":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v1, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 615
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 616
    new-instance v5, Lcom/vkontakte/android/NewsView$11;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NewsView$11;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 636
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    invoke-virtual {v5, v1}, Lcom/vkontakte/android/ui/OverlayTextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_3
.end method


# virtual methods
.method protected addHeaderViews()V
    .locals 0

    .prologue
    .line 404
    return-void
.end method

.method public beforeDestroy()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 782
    iget v1, p0, Lcom/vkontakte/android/NewsView;->mode:I

    if-nez v1, :cond_1

    .line 783
    sget-object v1, Lcom/vkontakte/android/data/Posts;->feed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 784
    sget-object v1, Lcom/vkontakte/android/data/Posts;->feed:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 785
    sget-object v1, Lcom/vkontakte/android/data/Posts;->preloadedFeed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 786
    sget-object v1, Lcom/vkontakte/android/data/Posts;->preloadedFeed:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 787
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v1

    sput v1, Lcom/vkontakte/android/data/Posts;->feedItem:I

    .line 788
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :cond_0
    sput v0, Lcom/vkontakte/android/data/Posts;->feedItemOffset:I

    .line 789
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    sput-object v0, Lcom/vkontakte/android/data/Posts;->feedFrom:Ljava/lang/String;

    .line 790
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/ArrayList;

    sput-object v0, Lcom/vkontakte/android/data/Posts;->newNews:Ljava/util/ArrayList;

    .line 791
    const-string v0, "vk"

    const-string v1, "before destroy"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    :cond_1
    return-void
.end method

.method protected buildAttachItems(Ljava/util/List;IILcom/vkontakte/android/NewsEntry;)Ljava/util/List;
    .locals 24
    .param p2, "postID"    # I
    .param p3, "ownerID"    # I
    .param p4, "e"    # Lcom/vkontakte/android/NewsEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/Attachment;",
            ">;II",
            "Lcom/vkontakte/android/NewsEntry;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/ui/posts/PostDisplayItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1704
    .local p1, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/Attachment;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1705
    .local v21, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1706
    .local v23, "tAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ThumbAttachment;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1707
    .local v15, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioAttachment;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1708
    .local v18, "other":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1709
    .local v16, "common":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    const/16 v22, 0x0

    .line 1710
    .local v22, "sig":Lcom/vkontakte/android/SignatureLinkAttachment;
    const/16 v20, 0x0

    .line 1711
    .local v20, "repost":Lcom/vkontakte/android/RepostAttachment;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1720
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1721
    new-instance v3, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewsView;->getReferer()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;-><init>(Lcom/vkontakte/android/NewsEntry;Ljava/util/List;ZLjava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1723
    :cond_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1724
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Lcom/vkontakte/android/AudioFile;

    move-object/from16 v19, v0

    .line 1725
    .local v19, "pl":[Lcom/vkontakte/android/AudioFile;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v17

    if-lt v0, v3, :cond_f

    .line 1728
    const/16 v17, 0x0

    .line 1729
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_10

    .line 1737
    .end local v17    # "i":I
    .end local v19    # "pl":[Lcom/vkontakte/android/AudioFile;
    :cond_2
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1738
    new-instance v3, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem;

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v18

    invoke-direct {v3, v0, v1, v2}, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem;-><init>(IILjava/util/ArrayList;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1740
    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 1741
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_11

    .line 1745
    :cond_4
    if-eqz v22, :cond_5

    .line 1746
    new-instance v3, Lcom/vkontakte/android/ui/posts/SignaturePostDisplayItem;

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v22

    invoke-direct {v3, v0, v1, v2}, Lcom/vkontakte/android/ui/posts/SignaturePostDisplayItem;-><init>(IILcom/vkontakte/android/SignatureLinkAttachment;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1748
    :cond_5
    if-eqz v20, :cond_6

    .line 1749
    new-instance v3, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/vkontakte/android/RepostAttachment;->name:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/vkontakte/android/RepostAttachment;->photo:Ljava/lang/String;

    move-object/from16 v0, v20

    iget v8, v0, Lcom/vkontakte/android/RepostAttachment;->ownerID:I

    move-object/from16 v0, v20

    iget v9, v0, Lcom/vkontakte/android/RepostAttachment;->time:I

    move-object/from16 v0, v20

    iget v10, v0, Lcom/vkontakte/android/RepostAttachment;->postID:I

    move-object/from16 v0, v20

    iget v11, v0, Lcom/vkontakte/android/RepostAttachment;->type:I

    const/4 v12, 0x0

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v3 .. v12}, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;-><init>(IILjava/lang/String;Ljava/lang/String;IIIILcom/vkontakte/android/NewsEntry;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1751
    :cond_6
    return-object v21

    .line 1711
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkontakte/android/Attachment;

    .line 1712
    .local v14, "att":Lcom/vkontakte/android/Attachment;
    if-eqz v14, :cond_0

    .line 1713
    instance-of v3, v14, Lcom/vkontakte/android/ThumbAttachment;

    if-eqz v3, :cond_8

    check-cast v14, Lcom/vkontakte/android/ThumbAttachment;

    .end local v14    # "att":Lcom/vkontakte/android/Attachment;
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1714
    .restart local v14    # "att":Lcom/vkontakte/android/Attachment;
    :cond_8
    instance-of v3, v14, Lcom/vkontakte/android/AudioAttachment;

    if-eqz v3, :cond_9

    check-cast v14, Lcom/vkontakte/android/AudioAttachment;

    .end local v14    # "att":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1715
    .restart local v14    # "att":Lcom/vkontakte/android/Attachment;
    :cond_9
    instance-of v3, v14, Lcom/vkontakte/android/SignatureLinkAttachment;

    if-eqz v3, :cond_a

    move-object/from16 v22, v14

    check-cast v22, Lcom/vkontakte/android/SignatureLinkAttachment;

    goto/16 :goto_0

    .line 1716
    :cond_a
    instance-of v3, v14, Lcom/vkontakte/android/RepostAttachment;

    if-eqz v3, :cond_b

    move-object/from16 v20, v14

    check-cast v20, Lcom/vkontakte/android/RepostAttachment;

    goto/16 :goto_0

    .line 1717
    :cond_b
    instance-of v3, v14, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v3, :cond_c

    move-object v3, v14

    check-cast v3, Lcom/vkontakte/android/ImageAttachment;

    invoke-interface {v3}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    :cond_c
    instance-of v3, v14, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v3, :cond_e

    move-object v3, v14

    check-cast v3, Lcom/vkontakte/android/GeoAttachment;

    iget v3, v3, Lcom/vkontakte/android/GeoAttachment;->id:I

    if-gtz v3, :cond_e

    :cond_d
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1718
    :cond_e
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1726
    .end local v14    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v17    # "i":I
    .restart local v19    # "pl":[Lcom/vkontakte/android/AudioFile;
    :cond_f
    new-instance v4, Lcom/vkontakte/android/AudioFile;

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/AudioAttachment;

    invoke-direct {v4, v3}, Lcom/vkontakte/android/AudioFile;-><init>(Lcom/vkontakte/android/AudioAttachment;)V

    aput-object v4, v19, v17

    .line 1725
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 1729
    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkontakte/android/AudioAttachment;

    .line 1730
    .local v13, "aa":Lcom/vkontakte/android/AudioAttachment;
    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/vkontakte/android/AudioAttachment;->playlist:[Lcom/vkontakte/android/AudioFile;

    .line 1731
    move/from16 v0, v17

    iput v0, v13, Lcom/vkontakte/android/AudioAttachment;->playlistPos:I

    .line 1732
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewsView;->getReferer()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Lcom/vkontakte/android/AudioAttachment;->referer:Ljava/lang/String;

    .line 1733
    new-instance v4, Lcom/vkontakte/android/ui/posts/AudioPostDisplayItem;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v0, v1, v13}, Lcom/vkontakte/android/ui/posts/AudioPostDisplayItem;-><init>(IILcom/vkontakte/android/AudioAttachment;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1734
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 1741
    .end local v13    # "aa":Lcom/vkontakte/android/AudioAttachment;
    .end local v17    # "i":I
    .end local v19    # "pl":[Lcom/vkontakte/android/AudioFile;
    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkontakte/android/Attachment;

    .line 1742
    .local v13, "aa":Lcom/vkontakte/android/Attachment;
    new-instance v4, Lcom/vkontakte/android/ui/posts/CommonAttachmentPostDisplayItem;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v0, v1, v13}, Lcom/vkontakte/android/ui/posts/CommonAttachmentPostDisplayItem;-><init>(IILcom/vkontakte/android/Attachment;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3
.end method

.method protected buildItems(Lcom/vkontakte/android/NewsEntry;)Ljava/util/List;
    .locals 13
    .param p1, "e"    # Lcom/vkontakte/android/NewsEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkontakte/android/NewsEntry;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/ui/posts/PostDisplayItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1755
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1756
    .local v12, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    new-instance v11, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;

    iget v0, p0, Lcom/vkontakte/android/NewsView;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v11, p1, v0}, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;-><init>(Lcom/vkontakte/android/NewsEntry;Z)V

    .line 1757
    .local v11, "hdr":Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;
    new-instance v0, Lcom/vkontakte/android/NewsView$34;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/NewsView$34;-><init>(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsEntry;)V

    iput-object v0, v11, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->menuClickListener:Landroid/view/View$OnClickListener;

    .line 1763
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_d

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->canHideFromFeed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_d

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v11, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->showMenu:Z

    .line 1764
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1766
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1767
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1768
    new-instance v0, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v2, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v3, p1, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;-><init>(IILjava/lang/CharSequence;Z)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1770
    :cond_2
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1771
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v2, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/vkontakte/android/NewsView;->buildAttachItems(Ljava/util/List;IILcom/vkontakte/android/NewsEntry;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1773
    :cond_3
    new-instance v0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v2, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v3, p1, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    iget-object v4, p1, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    iget v5, p1, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    iget v6, p1, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    iget v7, p1, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    iget v8, p1, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;-><init>(IILjava/lang/String;Ljava/lang/String;IIIILcom/vkontakte/android/NewsEntry;)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1776
    :cond_4
    const v0, 0x8000

    invoke-virtual {p1, v0}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1777
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 1778
    new-instance v1, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;

    iget v2, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v3, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-boolean v0, p1, Lcom/vkontakte/android/NewsEntry;->f:Z

    if-eqz v0, :cond_e

    const v0, 0x7f08035e

    :goto_2
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;-><init>(IILjava/lang/CharSequence;Z)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1784
    :cond_5
    :goto_3
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 1785
    new-instance v0, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v2, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v3, p1, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    const/16 v4, 0x10

    invoke-virtual {p1, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;-><init>(IILjava/lang/CharSequence;Z)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1787
    :cond_6
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v2, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/vkontakte/android/NewsView;->buildAttachItems(Ljava/util/List;IILcom/vkontakte/android/NewsEntry;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1789
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_7

    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_7

    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_7

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x800

    invoke-virtual {p1, v0}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1790
    new-instance v2, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;

    iget v0, p0, Lcom/vkontakte/android/NewsView;->mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_4
    iget v1, p0, Lcom/vkontakte/android/NewsView;->mode:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_12

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_12

    const/4 v1, 0x0

    :goto_5
    invoke-direct {v2, p1, v0, v1}, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;-><init>(Lcom/vkontakte/android/NewsEntry;ZZ)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1793
    :cond_7
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    neg-int v0, v0

    invoke-static {v0}, Lcom/vkontakte/android/data/Groups;->getAdminLevel(I)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_8

    .line 1794
    new-instance v0, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;

    invoke-direct {v0, p1}, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;-><init>(Lcom/vkontakte/android/NewsEntry;)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1797
    :cond_8
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1798
    new-instance v0, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem;

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v2, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v3, p1, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    iget-object v4, p1, Lcom/vkontakte/android/NewsEntry;->lastCommentUserName:Ljava/lang/String;

    iget-object v5, p1, Lcom/vkontakte/android/NewsEntry;->lastCommentUserPhoto:Ljava/lang/String;

    iget v6, p1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    iget v7, p1, Lcom/vkontakte/android/NewsEntry;->lastCommentTime:I

    invoke-direct/range {v0 .. v7}, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1801
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    const/4 v1, 0x1

    iput v1, v0, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->bgType:I

    .line 1802
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    const/4 v1, 0x2

    iput v1, v0, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->bgType:I

    .line 1804
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_a

    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_a

    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_b

    .line 1805
    :cond_a
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1810
    :cond_b
    return-object v12

    .line 1756
    .end local v11    # "hdr":Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1763
    .restart local v11    # "hdr":Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;
    :cond_d
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1778
    :cond_e
    const v0, 0x7f08035d

    goto/16 :goto_2

    .line 1780
    :cond_f
    new-instance v1, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;

    iget v2, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v3, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-boolean v0, p1, Lcom/vkontakte/android/NewsEntry;->f:Z

    if-eqz v0, :cond_10

    const v0, 0x7f08035c

    :goto_7
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;-><init>(IILjava/lang/CharSequence;Z)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_10
    const v0, 0x7f08035b

    goto :goto_7

    .line 1790
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_12
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 1805
    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    .line 1806
    .local v10, "di":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    const/4 v1, 0x0

    iput-boolean v1, v10, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->clickable:Z

    goto :goto_6
.end method

.method protected canHideFromFeed()Z
    .locals 2

    .prologue
    .line 1542
    iget v0, p0, Lcom/vkontakte/android/NewsView;->mode:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/vkontakte/android/NewsView;->listID:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/NewsView;->listID:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/vkontakte/android/NewsView;->listID:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 395
    new-instance v0, Lcom/vkontakte/android/NewsView$NewsAdapter;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewsView$NewsAdapter;-><init>(Lcom/vkontakte/android/NewsView;)V

    return-object v0
.end method

.method protected createImageLoaderAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .locals 2

    .prologue
    .line 399
    new-instance v0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;

    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;-><init>(Lcom/vkontakte/android/NewsView;I)V

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1680
    iget v0, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    if-lez v0, :cond_0

    .line 1681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

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

    iget v1, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDateRelativeNoDiff(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1682
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getList()I
    .locals 1

    .prologue
    .line 1164
    iget v0, p0, Lcom/vkontakte/android/NewsView;->listID:I

    return v0
.end method

.method protected getPostsOffset()I
    .locals 1

    .prologue
    .line 1557
    const/4 v0, 0x0

    return v0
.end method

.method protected getReferer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1686
    const-string v0, "news"

    return-object v0
.end method

.method protected init()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, -0x2

    const v7, 0x7f060019

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 145
    new-instance v4, Lcom/vkontakte/android/NewsView$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/NewsView$1;-><init>(Lcom/vkontakte/android/NewsView;)V

    .line 160
    const-wide/16 v5, 0x3e8

    .line 145
    invoke-virtual {p0, v4, v5, v6}, Lcom/vkontakte/android/NewsView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewsView;->setBackgroundColor(I)V

    .line 162
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/NewsView;->footerView:Landroid/widget/FrameLayout;

    .line 163
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 164
    .local v2, "pb":Landroid/widget/ProgressBar;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 165
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 166
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->footerView:Landroid/widget/FrameLayout;

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-virtual {v4, v8, v5, v8, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 168
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 169
    invoke-virtual {v2, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 171
    new-instance v4, Lcom/vkontakte/android/NewsView$2;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/vkontakte/android/NewsView$2;-><init>(Lcom/vkontakte/android/NewsView;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 188
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->addFooterView(Landroid/view/View;)V

    .line 189
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->addHeaderViews()V

    .line 190
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/RefreshableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->createAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 191
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 193
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setDividerHeight(I)V

    .line 194
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setHeaderDividersEnabled(Z)V

    .line 195
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xa

    if-gt v4, v5, :cond_1

    .line 196
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 197
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 200
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setTopColor(I)V

    .line 202
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v8, v8, v8, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setPadding(IIII)V

    .line 203
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 204
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 205
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 206
    .local v3, "selector":Landroid/graphics/drawable/StateListDrawable;
    new-array v4, v9, [I

    const v5, 0x10100a7

    aput v5, v4, v8

    new-instance v5, Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;

    invoke-direct {v5}, Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;-><init>()V

    iput-object v5, p0, Lcom/vkontakte/android/NewsView;->highlight:Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 207
    sget-object v4, Landroid/util/StateSet;->WILD_CARD:[I

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 208
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_2

    .line 209
    const/16 v4, 0x12c

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/StateListDrawable;->setExitFadeDuration(I)V

    .line 211
    :cond_2
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 212
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->setDrawSelectorOnTop(Z)V

    .line 213
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v5, Lcom/vkontakte/android/NewsView$3;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NewsView$3;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 247
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewsView;->addView(Landroid/view/View;)V

    .line 249
    new-instance v4, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->createImageLoaderAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v7, Lcom/vkontakte/android/NewsView$4;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/NewsView$4;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-direct {v4, v5, v6, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v4, p0, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 283
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v5, Lcom/vkontakte/android/NewsView$5;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NewsView$5;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 312
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v5, Lcom/vkontakte/android/NewsView$6;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NewsView$6;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 321
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/ui/EmptyView;->create(Landroid/content/Context;)Lcom/vkontakte/android/ui/EmptyView;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    .line 322
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v5, 0x7f0802c1

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 323
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    new-instance v5, Lcom/vkontakte/android/NewsView$7;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NewsView$7;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/EmptyView;->setOnBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v4, v11}, Lcom/vkontakte/android/ui/EmptyView;->setVisibility(I)V

    .line 330
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v4, v9}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 331
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v5, 0x7f0802b7

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/EmptyView;->setButtonText(I)V

    .line 332
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewsView;->addView(Landroid/view/View;)V

    .line 334
    new-instance v4, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    .line 335
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 336
    .local v1, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 337
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 339
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewsView;->addView(Landroid/view/View;)V

    .line 341
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "news"

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "feed_from"

    const-string v6, "0"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 343
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f03003f

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/vkontakte/android/NewsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ui/ErrorView;

    iput-object v4, p0, Lcom/vkontakte/android/NewsView;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    .line 344
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    new-instance v5, Lcom/vkontakte/android/NewsView$8;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NewsView$8;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v4, v11}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 353
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewsView;->addView(Landroid/view/View;)V

    .line 355
    new-instance v4, Lcom/vkontakte/android/ui/OverlayTextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkontakte/android/ui/OverlayTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    .line 356
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    const-string v5, "qweqwe"

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/OverlayTextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    const v5, -0xc06020

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/OverlayTextView;->setTextColor(I)V

    .line 358
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/OverlayTextView;->setTextSize(F)V

    .line 359
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    const v5, 0x7f0200aa

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/OverlayTextView;->setBackgroundResource(I)V

    .line 360
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/OverlayTextView;->setGravity(I)V

    .line 361
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/OverlayTextView;->setVisibility(I)V

    .line 362
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    const v5, 0x7f0200e6

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlay(I)V

    .line 363
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    invoke-virtual {v4, v9}, Lcom/vkontakte/android/ui/OverlayTextView;->setPadOverlay(Z)V

    .line 364
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    new-instance v5, Lcom/vkontakte/android/NewsView$9;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NewsView$9;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/OverlayTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/16 v7, 0x30

    invoke-direct {v5, v6, v10, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v4, v5}, Lcom/vkontakte/android/NewsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    return-void
.end method

.method public initFave()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 428
    const/4 v0, 0x2

    iput v0, p0, Lcom/vkontakte/android/NewsView;->mode:I

    .line 429
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 430
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 431
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->setRefreshEnabled(Z)V

    .line 432
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    .line 433
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v1, 0x7f0802d0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 434
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 435
    return-void
.end method

.method public initPhotos()V
    .locals 2

    .prologue
    .line 438
    const/4 v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/NewsView;->mode:I

    .line 439
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 440
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 442
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v1, 0x7f0802c6

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 443
    return-void
.end method

.method public initPostponed(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 454
    iput p1, p0, Lcom/vkontakte/android/NewsView;->listID:I

    .line 455
    const/4 v0, 0x5

    iput v0, p0, Lcom/vkontakte/android/NewsView;->mode:I

    .line 456
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 457
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v1, 0x7f0802fe

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 458
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 459
    return-void
.end method

.method public initSuggests(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 446
    iput p1, p0, Lcom/vkontakte/android/NewsView;->listID:I

    .line 447
    const/4 v0, 0x6

    iput v0, p0, Lcom/vkontakte/android/NewsView;->mode:I

    .line 448
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 449
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v1, 0x7f0802ff

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 450
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 451
    return-void
.end method

.method public initWithSearch()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 411
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 412
    const-string v1, "0"

    iput-object v1, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 413
    const/4 v1, 0x4

    iput v1, p0, Lcom/vkontakte/android/NewsView;->mode:I

    .line 414
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setRefreshEnabled(Z)V

    .line 415
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    .line 416
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 417
    .local v0, "lparams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 418
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/EmptyView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/EmptyView;->setGravity(I)V

    .line 420
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v2, 0x7f08016e

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 421
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/ui/EmptyView;->setVisibility(I)V

    .line 422
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {v1, v3, v2, v3, v3}, Lcom/vkontakte/android/ui/EmptyView;->setPadding(IIII)V

    .line 423
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 424
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 425
    return-void
.end method

.method public invalidateList()V
    .locals 1

    .prologue
    .line 1550
    new-instance v0, Lcom/vkontakte/android/NewsView$33;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewsView$33;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsView;->post(Ljava/lang/Runnable;)Z

    .line 1554
    return-void
.end method

.method public loadData(Z)V
    .locals 8
    .param p1, "refresh"    # Z

    .prologue
    const/4 v6, 0x5

    const/16 v0, 0xa

    const/16 v3, 0x14

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 796
    iget-boolean v1, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    if-eqz v1, :cond_1

    .line 1109
    :cond_0
    :goto_0
    return-void

    .line 797
    :cond_1
    const-string v1, "vk"

    const-string v4, "Load data!"

    invoke-static {v1, v4}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    iput-boolean v5, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    .line 799
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v1, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 801
    iget v1, p0, Lcom/vkontakte/android/NewsView;->mode:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    .line 802
    if-eqz p1, :cond_2

    iput v2, p0, Lcom/vkontakte/android/NewsView;->offset:I

    .line 804
    :cond_2
    new-instance v1, Lcom/vkontakte/android/api/FaveGetPosts;

    iget v2, p0, Lcom/vkontakte/android/NewsView;->offset:I

    iget-boolean v4, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    if-eqz v4, :cond_4

    .local v0, "count":I
    :goto_2
    invoke-direct {v1, v2, v0}, Lcom/vkontakte/android/api/FaveGetPosts;-><init>(II)V

    .line 805
    new-instance v2, Lcom/vkontakte/android/NewsView$17;

    invoke-direct {v2, p0, v0, p1}, Lcom/vkontakte/android/NewsView$17;-><init>(Lcom/vkontakte/android/NewsView;IZ)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/FaveGetPosts;->setCallback(Lcom/vkontakte/android/api/FaveGetPosts$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 840
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 804
    iput-object v1, p0, Lcom/vkontakte/android/NewsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 799
    .end local v0    # "count":I
    :cond_3
    const/16 v1, 0x8

    goto :goto_1

    :cond_4
    move v0, v3

    .line 804
    goto :goto_2

    .line 844
    :cond_5
    iget v1, p0, Lcom/vkontakte/android/NewsView;->mode:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_8

    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 845
    if-eqz p1, :cond_6

    .line 846
    const-string v1, "0"

    iput-object v1, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 847
    iput v2, p0, Lcom/vkontakte/android/NewsView;->offset:I

    .line 849
    :cond_6
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setRefreshEnabled(Z)V

    .line 850
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    .line 851
    new-instance v1, Lcom/vkontakte/android/api/NewsfeedSearch;

    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    if-eqz v5, :cond_7

    :goto_3
    invoke-direct {v1, v2, v4, v0}, Lcom/vkontakte/android/api/NewsfeedSearch;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 852
    new-instance v2, Lcom/vkontakte/android/NewsView$18;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/NewsView$18;-><init>(Lcom/vkontakte/android/NewsView;Z)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/NewsfeedSearch;->setCallback(Lcom/vkontakte/android/api/NewsfeedSearch$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 889
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 851
    iput-object v1, p0, Lcom/vkontakte/android/NewsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    :cond_7
    move v0, v3

    goto :goto_3

    .line 893
    :cond_8
    iget v1, p0, Lcom/vkontakte/android/NewsView;->mode:I

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/vkontakte/android/NewsView;->mode:I

    if-ne v1, v5, :cond_b

    .line 894
    :cond_9
    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->newNewsReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v1, :cond_a

    .line 895
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->newNewsReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v1}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 896
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkontakte/android/NewsView;->newNewsReq:Lcom/vkontakte/android/APIRequest;

    .line 898
    :cond_a
    new-instance v1, Lcom/vkontakte/android/NewsView$19;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/NewsView$19;-><init>(Lcom/vkontakte/android/NewsView;Z)V

    invoke-static {v1}, Lcom/vkontakte/android/APIController;->runInApi(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1001
    :cond_b
    iget v1, p0, Lcom/vkontakte/android/NewsView;->mode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_f

    .line 1002
    if-eqz p1, :cond_c

    const-string v1, "0"

    iput-object v1, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 1003
    :cond_c
    iget v1, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    if-gtz v1, :cond_d

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache;->hasEntries(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    int-to-long v1, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x1c20

    sub-long/2addr v4, v6

    cmp-long v1, v1, v4

    if-gez v1, :cond_e

    .line 1004
    :cond_d
    new-instance v1, Lcom/vkontakte/android/api/NewsfeedGetComments;

    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/vkontakte/android/api/NewsfeedGetComments;-><init>(Ljava/lang/String;I)V

    .line 1005
    new-instance v2, Lcom/vkontakte/android/NewsView$20;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/NewsView$20;-><init>(Lcom/vkontakte/android/NewsView;Z)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/NewsfeedGetComments;->setCallback(Lcom/vkontakte/android/api/NewsfeedGetComments$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 1048
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 1004
    iput-object v1, p0, Lcom/vkontakte/android/NewsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 1050
    :cond_e
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/NewsView$21;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/NewsView$21;-><init>(Lcom/vkontakte/android/NewsView;Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1068
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1070
    :cond_f
    iget v1, p0, Lcom/vkontakte/android/NewsView;->mode:I

    if-eq v1, v6, :cond_10

    iget v1, p0, Lcom/vkontakte/android/NewsView;->mode:I

    const/4 v4, 0x6

    if-ne v1, v4, :cond_0

    .line 1071
    :cond_10
    if-eqz p1, :cond_11

    iput v2, p0, Lcom/vkontakte/android/NewsView;->offset:I

    .line 1072
    :cond_11
    new-instance v2, Lcom/vkontakte/android/api/WallGet;

    iget v4, p0, Lcom/vkontakte/android/NewsView;->listID:I

    iget v5, p0, Lcom/vkontakte/android/NewsView;->offset:I

    iget-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    if-eqz v1, :cond_12

    :goto_4
    iget v1, p0, Lcom/vkontakte/android/NewsView;->mode:I

    if-ne v1, v6, :cond_13

    const-string v1, "postponed"

    :goto_5
    invoke-direct {v2, v4, v5, v0, v1}, Lcom/vkontakte/android/api/WallGet;-><init>(IIILjava/lang/String;)V

    .line 1073
    new-instance v1, Lcom/vkontakte/android/NewsView$22;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/NewsView$22;-><init>(Lcom/vkontakte/android/NewsView;Z)V

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/api/WallGet;->setCallback(Lcom/vkontakte/android/api/WallGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 1107
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 1072
    iput-object v1, p0, Lcom/vkontakte/android/NewsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    :cond_12
    move v0, v3

    goto :goto_4

    :cond_13
    const-string v1, "suggests"

    goto :goto_5
.end method

.method protected onDataLoaded(Ljava/util/List;Z)V
    .locals 13
    .param p2, "refresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "news":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/NewsEntry;>;"
    const/4 v12, 0x2

    const/16 v9, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1176
    if-nez p1, :cond_0

    .line 1241
    :goto_0
    return-void

    .line 1177
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v2

    .local v2, "firstVisible":I
    const/4 v5, 0x0

    .line 1178
    .local v5, "numAdded":I
    iget-boolean v6, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    if-nez v6, :cond_1

    if-lez v2, :cond_a

    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    .line 1179
    :cond_1
    iget-boolean v6, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    if-nez v6, :cond_c

    .line 1180
    if-eqz p2, :cond_2

    .line 1181
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1182
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1184
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_b

    .line 1198
    :cond_3
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    .line 1200
    const/4 v4, -0x1

    .line 1201
    .local v4, "itemOffset":I
    iget-boolean v6, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    if-eqz v6, :cond_4

    .line 1202
    if-nez v2, :cond_e

    .line 1203
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v6

    if-le v6, v12, :cond_4

    .line 1205
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6, v12}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1215
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->updateList()V

    .line 1216
    const/4 v0, 0x1

    .line 1217
    .local v0, "animate":Z
    if-eqz p2, :cond_6

    iget-boolean v6, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    if-eqz v6, :cond_6

    .line 1218
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    add-int v10, v2, v5

    invoke-virtual {v6, v10, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelectionFromTop(II)V

    .line 1219
    iget-boolean v6, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    if-eqz v6, :cond_f

    if-nez v2, :cond_5

    if-eqz v5, :cond_f

    :cond_5
    move v0, v8

    .line 1220
    :goto_4
    iput-boolean v8, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    .line 1222
    :cond_6
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->clearAnimation()V

    .line 1223
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/EmptyView;->clearAnimation()V

    .line 1224
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1226
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->useFrom()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1227
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_10

    :goto_5
    iput-boolean v7, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    .line 1230
    :goto_6
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-boolean v6, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    if-eqz v6, :cond_13

    move v6, v8

    :goto_7
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1231
    iput-boolean v8, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    .line 1232
    if-eqz p2, :cond_7

    .line 1233
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone(Z)V

    .line 1235
    :cond_7
    if-nez p2, :cond_8

    iget v6, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    if-nez v6, :cond_9

    .line 1236
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v10, 0x3e8

    div-long/2addr v6, v10

    long-to-int v6, v6

    iput v6, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    .line 1238
    :cond_9
    iget-object v7, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_14

    move v6, v9

    :goto_8
    invoke-virtual {v7, v6}, Lcom/vkontakte/android/ui/EmptyView;->setVisibility(I)V

    .line 1239
    iput-boolean v8, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    iput-boolean v8, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    .line 1240
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v6, v9}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    goto/16 :goto_0

    .end local v0    # "animate":Z
    .end local v4    # "itemOffset":I
    :cond_a
    move v6, v8

    .line 1178
    goto/16 :goto_1

    .line 1184
    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    .line 1185
    .local v1, "e":Lcom/vkontakte/android/NewsEntry;
    iget-object v10, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1186
    iget-object v10, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsView;->buildItems(Lcom/vkontakte/android/NewsEntry;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 1189
    .end local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_9
    if-ltz v3, :cond_3

    .line 1190
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {p0, v6}, Lcom/vkontakte/android/NewsView;->containsEntry(Lcom/vkontakte/android/NewsEntry;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 1191
    iget-object v10, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v10, v8, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1192
    iget-object v10, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsView;->buildItems(Lcom/vkontakte/android/NewsEntry;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v10, v8, v6}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1193
    add-int/lit8 v5, v5, 0x1

    .line 1189
    :cond_d
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 1209
    .end local v3    # "i":I
    .restart local v4    # "itemOffset":I
    :cond_e
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_4

    .line 1210
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    goto/16 :goto_3

    .restart local v0    # "animate":Z
    :cond_f
    move v0, v7

    .line 1219
    goto/16 :goto_4

    :cond_10
    move v7, v8

    .line 1227
    goto/16 :goto_5

    .line 1229
    :cond_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_12

    :goto_a
    iput-boolean v7, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    goto/16 :goto_6

    :cond_12
    move v7, v8

    goto :goto_a

    :cond_13
    move v6, v9

    .line 1230
    goto/16 :goto_7

    :cond_14
    move v6, v8

    .line 1238
    goto/16 :goto_8
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->newNewsReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->newNewsReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 392
    :cond_1
    return-void
.end method

.method protected onError(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x12c

    const/4 v2, 0x0

    .line 1244
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-static {v0, v2, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 1246
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    const/4 v1, 0x1

    invoke-static {v0, v1, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 1247
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    .line 1251
    :goto_0
    return-void

    .line 1249
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08006b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 1697
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1674
    invoke-direct {p0}, Lcom/vkontakte/android/NewsView;->updateNewPostsBtn()V

    .line 1675
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 1676
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 1701
    return-void
.end method

.method public onScrolled(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 1818
    return-void
.end method

.method public preloadNew()V
    .locals 3

    .prologue
    .line 740
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ErrorView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 779
    :goto_0
    return-void

    .line 741
    :cond_0
    new-instance v0, Lcom/vkontakte/android/NewsView$16;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewsView$16;-><init>(Lcom/vkontakte/android/NewsView;)V

    .line 778
    const-wide/16 v1, 0x12c

    .line 741
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/NewsView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public prepend(Lcom/vkontakte/android/NewsEntry;)V
    .locals 7
    .param p1, "e"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    const/4 v6, 0x0

    .line 462
    const/4 v2, 0x0

    .local v2, "itemPos":I
    const/4 v0, 0x0

    .line 463
    .local v0, "entryPos":I
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/NewsEntry;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 464
    add-int/lit8 v0, v0, 0x1

    .line 465
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 471
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 472
    iget v3, p0, Lcom/vkontakte/android/NewsView;->offset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/vkontakte/android/NewsView;->offset:I

    .line 473
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/NewsView;->buildItems(Lcom/vkontakte/android/NewsEntry;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 474
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/EmptyView;->setVisibility(I)V

    .line 475
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->updateList()V

    .line 476
    return-void

    .line 465
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    .line 466
    .local v1, "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    iget v5, v1, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postID:I

    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-ne v5, v3, :cond_0

    .line 468
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public refresh(Z)V
    .locals 1
    .param p1, "prepend"    # Z

    .prologue
    .line 1690
    iput-boolean p1, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    .line 1691
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    .line 1692
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refresh()V

    .line 1693
    return-void
.end method

.method public reloadFromCache()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 540
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 541
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/cache/NewsfeedCache;->get(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/NewsView;->onDataLoaded(Ljava/util/List;Z)V

    .line 542
    return-void
.end method

.method public remove(II)V
    .locals 5
    .param p1, "oid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 479
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 480
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 485
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 492
    :goto_1
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->updateList()V

    .line 493
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 494
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/EmptyView;->setVisibility(I)V

    .line 495
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/RefreshableListView;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 496
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->callScrolledToLastItem()V

    .line 497
    :cond_3
    return-void

    .line 481
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    .line 482
    .local v1, "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    iget v3, v1, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postID:I

    if-ne v3, p2, :cond_0

    iget v3, v1, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postOwnerID:I

    if-ne v3, p1, :cond_0

    .line 483
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 485
    .end local v1    # "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 486
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    if-eqz p1, :cond_6

    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v4, p1, :cond_1

    :cond_6
    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-ne v4, p2, :cond_1

    .line 487
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 488
    iget v3, p0, Lcom/vkontakte/android/NewsView;->offset:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/vkontakte/android/NewsView;->offset:I

    goto :goto_1
.end method

.method public replace(Lcom/vkontakte/android/NewsEntry;)V
    .locals 8
    .param p1, "ne"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    .line 515
    const/4 v1, 0x0

    .line 516
    .local v1, "i":I
    const/4 v2, -0x1

    .line 517
    .local v2, "insertAt":I
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 518
    .local v4, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 526
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/NewsView;->buildItems(Lcom/vkontakte/android/NewsEntry;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 527
    const/4 v1, 0x0

    .line 528
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 535
    :goto_2
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->updateList()V

    .line 536
    return-void

    .line 519
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    .line 520
    .local v3, "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    iget v5, v3, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postID:I

    iget v6, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-ne v5, v6, :cond_2

    iget v5, v3, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postOwnerID:I

    iget v6, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v5, v6, :cond_2

    .line 521
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    move v2, v1

    .line 522
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 524
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 528
    .end local v3    # "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 529
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    iget v6, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v7, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v6, v7, :cond_5

    :cond_4
    iget v6, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v7, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-ne v6, v7, :cond_5

    .line 530
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-virtual {v5, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 533
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public scrollToTop()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelection(I)V

    .line 387
    return-void
.end method

.method public setCommentsMode(Z)V
    .locals 4
    .param p1, "comments"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1262
    const/4 v0, 0x3

    iput v0, p0, Lcom/vkontakte/android/NewsView;->mode:I

    .line 1263
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "news"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string v0, "comments_from"

    :goto_0
    const-string v2, "0"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 1264
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "news"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz p1, :cond_1

    const-string v0, "comments_offset"

    :goto_1
    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/NewsView;->offset:I

    .line 1265
    iput v3, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    .line 1266
    const v0, 0x7f03005f

    iput v0, p0, Lcom/vkontakte/android/NewsView;->itemLayout:I

    .line 1267
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v1, 0x7f0802c9

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 1268
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 1269
    return-void

    .line 1263
    :cond_0
    const-string v0, "feed_from"

    goto :goto_0

    .line 1264
    :cond_1
    const-string v0, "feed_offset"

    goto :goto_1
.end method

.method protected setEmptyLabel(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 1255
    return-void
.end method

.method protected setEmptyPadding(I)V
    .locals 4
    .param p1, "p"    # I

    .prologue
    const/high16 v3, 0x40e00000    # 7.0f

    .line 1258
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/vkontakte/android/ui/EmptyView;->setPadding(IIII)V

    .line 1259
    return-void
.end method

.method public setList(I)Z
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0802b7

    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1112
    iget v2, p0, Lcom/vkontakte/android/NewsView;->listID:I

    if-ne p1, v2, :cond_0

    .line 1160
    :goto_0
    return v0

    .line 1113
    :cond_0
    const/16 v2, -0x2328

    if-eq p1, v2, :cond_1

    .line 1114
    iput p1, p0, Lcom/vkontakte/android/NewsView;->listID:I

    .line 1115
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1116
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1117
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1118
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1119
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->updateList()V

    .line 1120
    iput-boolean v0, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    .line 1121
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1122
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/EmptyView;->setVisibility(I)V

    .line 1123
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1124
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->newNewsReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v2, :cond_2

    .line 1125
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->newNewsReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 1126
    iput-object v5, p0, Lcom/vkontakte/android/NewsView;->newNewsReq:Lcom/vkontakte/android/APIRequest;

    .line 1128
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v2, :cond_3

    .line 1129
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 1130
    iput-object v5, p0, Lcom/vkontakte/android/NewsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 1131
    iput-boolean v0, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    .line 1132
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 1134
    :cond_3
    invoke-direct {p0}, Lcom/vkontakte/android/NewsView;->updateNewPostsBtn()V

    .line 1135
    iget v2, p0, Lcom/vkontakte/android/NewsView;->listID:I

    packed-switch v2, :pswitch_data_0

    .line 1156
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v3, 0x7f0802c5

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 1157
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    :goto_1
    move v0, v1

    .line 1160
    goto :goto_0

    .line 1137
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v2, 0x7f0802c1

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 1138
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ui/EmptyView;->setButtonText(I)V

    .line 1139
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    goto :goto_1

    .line 1142
    :pswitch_1
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v3, 0x7f0802c4

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 1143
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    goto :goto_1

    .line 1146
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v2, 0x7f0802c2

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 1147
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ui/EmptyView;->setButtonText(I)V

    .line 1148
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    goto :goto_1

    .line 1151
    :pswitch_3
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v2, 0x7f0802c3

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 1152
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v2, 0x7f0802c0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/EmptyView;->setButtonText(I)V

    .line 1153
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    goto :goto_1

    .line 1135
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSearchQuery(Ljava/lang/String;)V
    .locals 2
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x8

    .line 545
    iput-object p1, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    .line 546
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 552
    :goto_0
    return-void

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/EmptyView;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public update(IIIIIZZ)V
    .locals 4
    .param p1, "oid"    # I
    .param p2, "pid"    # I
    .param p3, "likes"    # I
    .param p4, "comments"    # I
    .param p5, "retweets"    # I
    .param p6, "liked"    # Z
    .param p7, "retweeted"    # Z

    .prologue
    const/4 v3, -0x1

    .line 500
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 512
    :goto_0
    return-void

    .line 500
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 501
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    if-eqz p1, :cond_2

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v2, p1, :cond_0

    :cond_2
    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-ne v2, p2, :cond_0

    .line 502
    iput p3, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 503
    if-eq p4, v3, :cond_3

    iput p4, v0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 504
    :cond_3
    if-eq p5, v3, :cond_4

    iput p5, v0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 506
    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v0, v1, p6}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 507
    if-eq p5, v3, :cond_5

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p7}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 508
    :cond_5
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->updateList()V

    goto :goto_0
.end method

.method public updateList()V
    .locals 2

    .prologue
    .line 1272
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/vkontakte/android/NewsView$23;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewsView$23;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1279
    return-void
.end method

.method public updateList2()V
    .locals 1

    .prologue
    .line 1282
    new-instance v0, Lcom/vkontakte/android/NewsView$24;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewsView$24;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsView;->post(Ljava/lang/Runnable;)Z

    .line 1285
    return-void
.end method

.method protected useFrom()Z
    .locals 2

    .prologue
    .line 1546
    iget v0, p0, Lcom/vkontakte/android/NewsView;->mode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/NewsView;->mode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/vkontakte/android/NewsView;->mode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
