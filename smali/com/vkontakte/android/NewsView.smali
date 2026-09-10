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
.field private static viewsPrecreated:Z


# instance fields
.field protected bigProgress:Landroid/widget/ProgressBar;

.field private clearForNew:Z

.field protected commentsFrom:Ljava/lang/String;

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field protected dataLoading:Z

.field private displayComments:Z

.field protected errorView:Lcom/vkontakte/android/ui/ErrorView;

.field private faveMode:Z

.field protected footerView:Landroid/widget/FrameLayout;

.field private highlight:Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;

.field protected imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private isSearchView:Z

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

.field protected moreAvailable:Z

.field private newFrom:Ljava/lang/String;

.field protected newNews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private newNewsReq:Lcom/vkontakte/android/APIRequest;

.field private newOffset:I

.field private newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

.field protected news:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected noNewsView:Landroid/widget/TextView;

.field protected offset:I

.field private onPauseRunnable:Ljava/lang/Runnable;

.field private photosMode:Z

.field protected preloadOnReady:Z

.field protected preloadedNews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
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
    .line 104
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/NewsView;->viewsPrecreated:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/Vector;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    .line 78
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    .line 83
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->displayComments:Z

    .line 84
    iput v1, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    .line 85
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    .line 87
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    .line 93
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->photosMode:Z

    .line 94
    const v0, 0x7f030047

    iput v0, p0, Lcom/vkontakte/android/NewsView;->itemLayout:I

    .line 96
    iput v1, p0, Lcom/vkontakte/android/NewsView;->listID:I

    .line 98
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->clearForNew:Z

    .line 108
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/Vector;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    .line 78
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    .line 83
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->displayComments:Z

    .line 84
    iput v1, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    .line 85
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    .line 87
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    .line 93
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->photosMode:Z

    .line 94
    const v0, 0x7f030047

    iput v0, p0, Lcom/vkontakte/android/NewsView;->itemLayout:I

    .line 96
    iput v1, p0, Lcom/vkontakte/android/NewsView;->listID:I

    .line 98
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->clearForNew:Z

    .line 113
    iput p2, p0, Lcom/vkontakte/android/NewsView;->itemLayout:I

    .line 114
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/Vector;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    .line 78
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    .line 83
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->displayComments:Z

    .line 84
    iput v1, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    .line 85
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    .line 87
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    .line 93
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->photosMode:Z

    .line 94
    const v0, 0x7f030047

    iput v0, p0, Lcom/vkontakte/android/NewsView;->itemLayout:I

    .line 96
    iput v1, p0, Lcom/vkontakte/android/NewsView;->listID:I

    .line 98
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->clearForNew:Z

    .line 124
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/Vector;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    .line 78
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    .line 83
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->displayComments:Z

    .line 84
    iput v1, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    .line 85
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    .line 87
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    .line 93
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->photosMode:Z

    .line 94
    const v0, 0x7f030047

    iput v0, p0, Lcom/vkontakte/android/NewsView;->itemLayout:I

    .line 96
    iput v1, p0, Lcom/vkontakte/android/NewsView;->listID:I

    .line 98
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->clearForNew:Z

    .line 129
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "noinit"    # Z

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/Vector;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    .line 78
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    .line 83
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->displayComments:Z

    .line 84
    iput v1, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    .line 85
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    .line 87
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    .line 93
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->photosMode:Z

    .line 94
    const v0, 0x7f030047

    iput v0, p0, Lcom/vkontakte/android/NewsView;->itemLayout:I

    .line 96
    iput v1, p0, Lcom/vkontakte/android/NewsView;->listID:I

    .line 98
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->clearForNew:Z

    .line 119
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 120
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewsView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/NewsView;)Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsView;->photosMode:Z

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/NewsView;I)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/vkontakte/android/NewsView;->newOffset:I

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/NewsView;Z)V
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/vkontakte/android/NewsView;->clearForNew:Z

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/NewsView;)V
    .locals 0

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/vkontakte/android/NewsView;->updateNewPostsBtn()V

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/vkontakte/android/NewsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/NewsView;)Lcom/vkontakte/android/APIRequest;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->newNewsReq:Lcom/vkontakte/android/APIRequest;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/NewsView;)Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsView;->isSearchView:Z

    return v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/NewsView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/NewsView;Ljava/lang/String;Lcom/vkontakte/android/NewsEntry;)V
    .locals 0

    .prologue
    .line 1218
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/NewsView;->performPostAction(Ljava/lang/String;Lcom/vkontakte/android/NewsEntry;)V

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsEntry;)V
    .locals 0

    .prologue
    .line 1345
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsView;->deletePost(Lcom/vkontakte/android/NewsEntry;)V

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1283
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/NewsView;->saveRepostComment(Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2()Z
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/vkontakte/android/NewsView;->viewsPrecreated:Z

    return v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1265
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/NewsView;->editRepostComment(Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/NewsView;Landroid/view/View;Lcom/vkontakte/android/NewsEntry;)V
    .locals 0

    .prologue
    .line 1170
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/NewsView;->showItemOptions(Landroid/view/View;Lcom/vkontakte/android/NewsEntry;)V

    return-void
.end method

.method static synthetic access$3(Z)V
    .locals 0

    .prologue
    .line 104
    sput-boolean p0, Lcom/vkontakte/android/NewsView;->viewsPrecreated:Z

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/NewsView;)Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->highlight:Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/NewsView;)V
    .locals 0

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/vkontakte/android/NewsView;->showNew()V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/NewsView;)Lcom/vkontakte/android/ui/OverlayTextView;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/NewsView;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/vkontakte/android/NewsView;->listID:I

    return v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/vkontakte/android/NewsView;->newNewsReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/NewsView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/vkontakte/android/NewsView;->newFrom:Ljava/lang/String;

    return-void
.end method

.method private containsEntry(Lcom/vkontakte/android/NewsEntry;)Z
    .locals 3
    .param p1, "e"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    .line 1058
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1061
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1058
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 1059
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
    .line 1346
    new-instance v0, Lcom/vkontakte/android/api/WallDelete;

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v2, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v3, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/WallDelete;-><init>(III)V

    .line 1347
    new-instance v1, Lcom/vkontakte/android/NewsView$30;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/NewsView$30;-><init>(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsEntry;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallDelete;->setCallback(Lcom/vkontakte/android/api/WallDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1366
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1367
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1368
    return-void
.end method

.method private editRepostComment(Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;)V
    .locals 4
    .param p1, "e"    # Lcom/vkontakte/android/NewsEntry;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 1266
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1267
    .local v0, "edit":Landroid/widget/EditText;
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1268
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 1269
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1270
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1271
    const v2, 0x7f060011

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1272
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1273
    const v2, 0x7f060086

    new-instance v3, Lcom/vkontakte/android/NewsView$27;

    invoke-direct {v3, p0, p1, v0}, Lcom/vkontakte/android/NewsView$27;-><init>(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsEntry;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1279
    const v2, 0x7f060027

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1280
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1281
    return-void
.end method

.method private hideSource(Lcom/vkontakte/android/NewsEntry;)V
    .locals 2
    .param p1, "de"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    .line 1315
    new-instance v0, Lcom/vkontakte/android/api/NewsfeedAddBan;

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/NewsfeedAddBan;-><init>(I)V

    .line 1316
    new-instance v1, Lcom/vkontakte/android/NewsView$29;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/NewsView$29;-><init>(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsEntry;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/NewsfeedAddBan;->setCallback(Lcom/vkontakte/android/api/NewsfeedAddBan$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1341
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1342
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1343
    return-void
.end method

.method private performPostAction(Ljava/lang/String;Lcom/vkontakte/android/NewsEntry;)V
    .locals 8
    .param p1, "act"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    .line 1219
    const-string v3, "hide"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1220
    invoke-direct {p0, p2}, Lcom/vkontakte/android/NewsView;->hideSource(Lcom/vkontakte/android/NewsEntry;)V

    .line 1222
    :cond_0
    const-string v3, "link"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1223
    const-string v2, "http://vk.com/"

    .line 1224
    .local v2, "ln":Ljava/lang/String;
    iget v3, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    if-nez v3, :cond_5

    .line 1225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "wall"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1233
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1234
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1235
    .local v0, "cm":Landroid/text/ClipboardManager;
    invoke-virtual {v0, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1236
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0601b2

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1238
    .end local v0    # "cm":Landroid/text/ClipboardManager;
    .end local v2    # "ln":Ljava/lang/String;
    :cond_2
    const-string v3, "orig"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1239
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "vkontakte://vk.com/wall"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p2, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1241
    :cond_3
    const-string v3, "edit"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1242
    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1243
    iget-object v3, p2, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-direct {p0, p2, v3}, Lcom/vkontakte/android/NewsView;->editRepostComment(Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;)V

    .line 1263
    :cond_4
    :goto_1
    return-void

    .line 1226
    .restart local v2    # "ln":Ljava/lang/String;
    :cond_5
    iget v3, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 1227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1228
    goto/16 :goto_0

    :cond_6
    iget v3, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 1229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "photo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1230
    goto/16 :goto_0

    :cond_7
    iget v3, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 1231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "topic"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 1246
    .end local v2    # "ln":Ljava/lang/String;
    :cond_8
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1247
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "edit"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1248
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1250
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_9
    const-string v3, "del"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1251
    new-instance v3, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1252
    const v4, 0x7f060063

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1253
    const v4, 0x7f060064

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1254
    const v4, 0x7f060034

    new-instance v5, Lcom/vkontakte/android/NewsView$26;

    invoke-direct {v5, p0, p2}, Lcom/vkontakte/android/NewsView$26;-><init>(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsEntry;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1260
    const v4, 0x7f060035

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1261
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1
.end method

.method private saveRepostComment(Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;)V
    .locals 3
    .param p1, "e"    # Lcom/vkontakte/android/NewsEntry;
    .param p2, "newComment"    # Ljava/lang/String;

    .prologue
    .line 1284
    new-instance v0, Lcom/vkontakte/android/api/WallEdit;

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v2, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-direct {v0, v1, v2, p2}, Lcom/vkontakte/android/api/WallEdit;-><init>(IILjava/lang/String;)V

    .line 1285
    new-instance v1, Lcom/vkontakte/android/NewsView$28;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/NewsView$28;-><init>(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallEdit;->setCallback(Lcom/vkontakte/android/api/WallEdit$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1310
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 1311
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 1312
    return-void
.end method

.method private showItemOptions(Landroid/view/View;Lcom/vkontakte/android/NewsEntry;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "e"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    const/4 v10, 0x0

    .line 1171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1172
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1173
    .local v0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->canHideFromFeed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1174
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060172

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1175
    const-string v4, "hide"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1177
    :cond_0
    const/16 v4, 0x20

    invoke-virtual {p2, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    if-lez v4, :cond_1

    .line 1178
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060214

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1179
    const-string v4, "orig"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1181
    :cond_1
    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_2

    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_2

    .line 1182
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0601b0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1183
    const-string v4, "link"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1185
    :cond_2
    const/16 v4, 0x40

    invoke-virtual {p2, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eq v4, v5, :cond_3

    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->userID:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-ne v4, v5, :cond_4

    .line 1186
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060062

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1187
    const-string v4, "del"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    :cond_4
    const/16 v4, 0x80

    invoke-virtual {p2, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->time_l:I

    const v5, 0x15180

    add-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    .line 1190
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1191
    const-string v4, "edit"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1193
    :cond_5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_7

    .line 1194
    new-instance v3, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1195
    .local v3, "pm":Landroid/widget/PopupMenu;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_6

    .line 1198
    new-instance v4, Lcom/vkontakte/android/NewsView$24;

    invoke-direct {v4, p0, v0, p2}, Lcom/vkontakte/android/NewsView$24;-><init>(Lcom/vkontakte/android/NewsView;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1205
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    .line 1216
    .end local v1    # "i":I
    .end local v3    # "pm":Landroid/widget/PopupMenu;
    :goto_1
    return-void

    .line 1196
    .restart local v1    # "i":I
    .restart local v3    # "pm":Landroid/widget/PopupMenu;
    :cond_6
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v5, v10, v1, v10, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1207
    .end local v1    # "i":I
    .end local v3    # "pm":Landroid/widget/PopupMenu;
    :cond_7
    new-instance v5, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1208
    new-array v4, v10, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    new-instance v6, Lcom/vkontakte/android/NewsView$25;

    invoke-direct {v6, p0, v0, p2}, Lcom/vkontakte/android/NewsView$25;-><init>(Lcom/vkontakte/android/NewsView;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;)V

    invoke-virtual {v5, v4, v6}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1214
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method private showNew()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 634
    iget-boolean v3, p0, Lcom/vkontakte/android/NewsView;->clearForNew:Z

    if-eqz v3, :cond_2

    .line 635
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 636
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 637
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 638
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/Vector;

    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v6, v5}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 639
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 640
    .local v2, "nitems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 642
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v6, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 643
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v3, v7, :cond_0

    .line 644
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/Vector;

    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {v4, v7, v5}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 645
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->updateList()V

    .line 646
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v4, Lcom/vkontakte/android/NewsView$11;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/NewsView$11;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->post(Ljava/lang/Runnable;)Z

    .line 652
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "news"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 653
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 654
    const-string v4, "feed_from"

    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->newFrom:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 655
    const-string v4, "feed_offset"

    iget v5, p0, Lcom/vkontakte/android/NewsView;->newOffset:I

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 656
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 657
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->newFrom:Ljava/lang/String;

    iput-object v3, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 658
    iget v3, p0, Lcom/vkontakte/android/NewsView;->newOffset:I

    iput v3, p0, Lcom/vkontakte/android/NewsView;->offset:I

    .line 659
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 660
    .local v1, "forCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 661
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 662
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/vkontakte/android/NewsView$12;

    invoke-direct {v4, p0, v1}, Lcom/vkontakte/android/NewsView$12;-><init>(Lcom/vkontakte/android/NewsView;Ljava/util/ArrayList;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 666
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 667
    invoke-direct {p0}, Lcom/vkontakte/android/NewsView;->updateNewPostsBtn()V

    .line 702
    :goto_1
    return-void

    .line 640
    .end local v1    # "forCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 641
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsView;->buildItems(Lcom/vkontakte/android/NewsEntry;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 669
    .end local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    .end local v2    # "nitems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/Vector;

    invoke-virtual {v3, v6, v4}, Ljava/util/Vector;->addAll(ILjava/util/Collection;)Z

    .line 670
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .restart local v2    # "nitems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 673
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v6, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 674
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->updateList()V

    .line 684
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v4, Lcom/vkontakte/android/NewsView$13;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/NewsView$13;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->post(Ljava/lang/Runnable;)Z

    .line 690
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 691
    .restart local v1    # "forCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 692
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 693
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/vkontakte/android/NewsView$14;

    invoke-direct {v4, p0, v1}, Lcom/vkontakte/android/NewsView$14;-><init>(Lcom/vkontakte/android/NewsView;Ljava/util/ArrayList;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 699
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 700
    invoke-direct {p0}, Lcom/vkontakte/android/NewsView;->updateNewPostsBtn()V

    goto :goto_1

    .line 671
    .end local v1    # "forCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 672
    .restart local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsView;->buildItems(Lcom/vkontakte/android/NewsEntry;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method private updateNewPostsBtn()V
    .locals 15

    .prologue
    const/high16 v14, -0x3de40000    # -39.0f

    const/4 v5, 0x1

    const-wide/16 v12, 0x12c

    const/4 v6, 0x0

    const/4 v11, 0x0

    .line 549
    iget-object v7, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/OverlayTextView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    move v2, v5

    .line 550
    .local v2, "curState":Z
    :goto_0
    iget-object v7, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lez v7, :cond_2

    move v4, v5

    .line 551
    .local v4, "newState":Z
    :goto_1
    iget-object v7, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 552
    iget-boolean v7, p0, Lcom/vkontakte/android/NewsView;->clearForNew:Z

    if-eqz v7, :cond_3

    .line 553
    iget-object v7, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    const v8, 0x7f060209

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/OverlayTextView;->setText(I)V

    .line 558
    :cond_0
    :goto_2
    if-ne v2, v4, :cond_4

    .line 631
    :goto_3
    return-void

    .end local v2    # "curState":Z
    .end local v4    # "newState":Z
    :cond_1
    move v2, v6

    .line 549
    goto :goto_0

    .restart local v2    # "curState":Z
    :cond_2
    move v4, v6

    .line 550
    goto :goto_1

    .line 555
    .restart local v4    # "newState":Z
    :cond_3
    iget-object v7, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    const v8, 0x7f0d0059

    iget-object v9, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/OverlayTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 559
    :cond_4
    if-eqz v4, :cond_5

    .line 560
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v7, 0x421c0000    # 39.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v0, v11, v11, v11, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 561
    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 562
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 563
    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 571
    new-instance v5, Lcom/vkontakte/android/NewsView$9;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NewsView$9;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 593
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 594
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/OverlayTextView;->setVisibility(I)V

    .line 595
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-static {v14}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v1, v11, v11, v5, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 596
    .local v1, "ba":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v1, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 597
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 598
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    invoke-virtual {v5, v1}, Lcom/vkontakte/android/ui/OverlayTextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    .line 600
    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    .end local v1    # "ba":Landroid/view/animation/TranslateAnimation;
    :cond_5
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v7, -0x1

    invoke-direct {v3, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 601
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 602
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v5, 0x421c0000    # 39.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v0, v11, v11, v5, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 604
    .restart local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 605
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 606
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 607
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-static {v14}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v1, v11, v11, v11, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 608
    .restart local v1    # "ba":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v1, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 609
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 610
    new-instance v5, Lcom/vkontakte/android/NewsView$10;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NewsView$10;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 629
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    invoke-virtual {v5, v1}, Lcom/vkontakte/android/ui/OverlayTextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_3
.end method


# virtual methods
.method protected addHeaderViews()V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.method public beforeDestroy()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 747
    iget-boolean v1, p0, Lcom/vkontakte/android/NewsView;->displayComments:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/vkontakte/android/NewsView;->faveMode:Z

    if-nez v1, :cond_1

    .line 748
    sget-object v1, Lcom/vkontakte/android/data/Posts;->feed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 749
    sget-object v1, Lcom/vkontakte/android/data/Posts;->feed:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 750
    sget-object v1, Lcom/vkontakte/android/data/Posts;->preloadedFeed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 751
    sget-object v1, Lcom/vkontakte/android/data/Posts;->preloadedFeed:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 752
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v1

    sput v1, Lcom/vkontakte/android/data/Posts;->feedItem:I

    .line 753
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

    .line 754
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    sput-object v0, Lcom/vkontakte/android/data/Posts;->feedFrom:Ljava/lang/String;

    .line 755
    iget v0, p0, Lcom/vkontakte/android/NewsView;->offset:I

    sput v0, Lcom/vkontakte/android/data/Posts;->feedOffset:I

    .line 756
    const-string v0, "vk"

    const-string v1, "before destroy"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    :cond_1
    return-void
.end method

.method protected buildAttachItems(Ljava/util/List;IILcom/vkontakte/android/NewsEntry;)Ljava/util/List;
    .locals 23
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
    .line 1521
    .local p1, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/Attachment;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1522
    .local v20, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1523
    .local v22, "tAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ThumbAttachment;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1524
    .local v14, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioAttachment;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1525
    .local v17, "other":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1526
    .local v15, "common":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    const/16 v21, 0x0

    .line 1527
    .local v21, "sig":Lcom/vkontakte/android/SignatureLinkAttachment;
    const/16 v19, 0x0

    .line 1528
    .local v19, "repost":Lcom/vkontakte/android/RepostAttachment;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1537
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1538
    new-instance v3, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vkontakte/android/NewsView;->photosMode:Z

    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-direct {v3, v0, v1, v4}, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;-><init>(Lcom/vkontakte/android/NewsEntry;Ljava/util/List;Z)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1540
    :cond_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1541
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Lcom/vkontakte/android/AudioFile;

    move-object/from16 v18, v0

    .line 1542
    .local v18, "pl":[Lcom/vkontakte/android/AudioFile;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v16

    if-lt v0, v3, :cond_f

    .line 1545
    const/16 v16, 0x0

    .line 1546
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_10

    .line 1553
    .end local v16    # "i":I
    .end local v18    # "pl":[Lcom/vkontakte/android/AudioFile;
    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1554
    new-instance v3, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem;

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v17

    invoke-direct {v3, v0, v1, v2}, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem;-><init>(IILjava/util/ArrayList;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1556
    :cond_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 1557
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_11

    .line 1561
    :cond_4
    if-eqz v21, :cond_5

    .line 1562
    new-instance v3, Lcom/vkontakte/android/ui/posts/SignaturePostDisplayItem;

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v21

    invoke-direct {v3, v0, v1, v2}, Lcom/vkontakte/android/ui/posts/SignaturePostDisplayItem;-><init>(IILcom/vkontakte/android/SignatureLinkAttachment;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1564
    :cond_5
    if-eqz v19, :cond_6

    .line 1565
    new-instance v3, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/vkontakte/android/RepostAttachment;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/vkontakte/android/RepostAttachment;->photo:Ljava/lang/String;

    move-object/from16 v0, v19

    iget v8, v0, Lcom/vkontakte/android/RepostAttachment;->ownerID:I

    move-object/from16 v0, v19

    iget v9, v0, Lcom/vkontakte/android/RepostAttachment;->time:I

    move-object/from16 v0, v19

    iget v10, v0, Lcom/vkontakte/android/RepostAttachment;->postID:I

    move-object/from16 v0, v19

    iget v11, v0, Lcom/vkontakte/android/RepostAttachment;->type:I

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v3 .. v11}, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;-><init>(IILjava/lang/String;Ljava/lang/String;IIII)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1567
    :cond_6
    return-object v20

    .line 1528
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkontakte/android/Attachment;

    .line 1529
    .local v13, "att":Lcom/vkontakte/android/Attachment;
    if-eqz v13, :cond_0

    .line 1530
    instance-of v3, v13, Lcom/vkontakte/android/ThumbAttachment;

    if-eqz v3, :cond_8

    check-cast v13, Lcom/vkontakte/android/ThumbAttachment;

    .end local v13    # "att":Lcom/vkontakte/android/Attachment;
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1531
    .restart local v13    # "att":Lcom/vkontakte/android/Attachment;
    :cond_8
    instance-of v3, v13, Lcom/vkontakte/android/AudioAttachment;

    if-eqz v3, :cond_9

    check-cast v13, Lcom/vkontakte/android/AudioAttachment;

    .end local v13    # "att":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1532
    .restart local v13    # "att":Lcom/vkontakte/android/Attachment;
    :cond_9
    instance-of v3, v13, Lcom/vkontakte/android/SignatureLinkAttachment;

    if-eqz v3, :cond_a

    move-object/from16 v21, v13

    check-cast v21, Lcom/vkontakte/android/SignatureLinkAttachment;

    goto/16 :goto_0

    .line 1533
    :cond_a
    instance-of v3, v13, Lcom/vkontakte/android/RepostAttachment;

    if-eqz v3, :cond_b

    move-object/from16 v19, v13

    check-cast v19, Lcom/vkontakte/android/RepostAttachment;

    goto/16 :goto_0

    .line 1534
    :cond_b
    instance-of v3, v13, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v3, :cond_c

    move-object v3, v13

    check-cast v3, Lcom/vkontakte/android/ImageAttachment;

    invoke-interface {v3}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    :cond_c
    instance-of v3, v13, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v3, :cond_e

    move-object v3, v13

    check-cast v3, Lcom/vkontakte/android/GeoAttachment;

    iget v3, v3, Lcom/vkontakte/android/GeoAttachment;->id:I

    if-gtz v3, :cond_e

    :cond_d
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1535
    :cond_e
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1543
    .end local v13    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v16    # "i":I
    .restart local v18    # "pl":[Lcom/vkontakte/android/AudioFile;
    :cond_f
    new-instance v4, Lcom/vkontakte/android/AudioFile;

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/AudioAttachment;

    invoke-direct {v4, v3}, Lcom/vkontakte/android/AudioFile;-><init>(Lcom/vkontakte/android/AudioAttachment;)V

    aput-object v4, v18, v16

    .line 1542
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 1546
    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vkontakte/android/AudioAttachment;

    .line 1547
    .local v12, "aa":Lcom/vkontakte/android/AudioAttachment;
    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/vkontakte/android/AudioAttachment;->playlist:[Lcom/vkontakte/android/AudioFile;

    .line 1548
    move/from16 v0, v16

    iput v0, v12, Lcom/vkontakte/android/AudioAttachment;->playlistPos:I

    .line 1549
    new-instance v4, Lcom/vkontakte/android/ui/posts/AudioPostDisplayItem;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v0, v1, v12}, Lcom/vkontakte/android/ui/posts/AudioPostDisplayItem;-><init>(IILcom/vkontakte/android/AudioAttachment;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1550
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 1557
    .end local v12    # "aa":Lcom/vkontakte/android/AudioAttachment;
    .end local v16    # "i":I
    .end local v18    # "pl":[Lcom/vkontakte/android/AudioFile;
    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vkontakte/android/Attachment;

    .line 1558
    .local v12, "aa":Lcom/vkontakte/android/Attachment;
    new-instance v4, Lcom/vkontakte/android/ui/posts/CommonAttachmentPostDisplayItem;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v0, v1, v12}, Lcom/vkontakte/android/ui/posts/CommonAttachmentPostDisplayItem;-><init>(IILcom/vkontakte/android/Attachment;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3
.end method

.method protected buildItems(Lcom/vkontakte/android/NewsEntry;)Ljava/util/List;
    .locals 12
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
    .line 1571
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1572
    .local v11, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    new-instance v10, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;

    iget-boolean v0, p0, Lcom/vkontakte/android/NewsView;->photosMode:Z

    invoke-direct {v10, p1, v0}, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;-><init>(Lcom/vkontakte/android/NewsEntry;Z)V

    .line 1573
    .local v10, "hdr":Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;
    new-instance v0, Lcom/vkontakte/android/NewsView$32;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/NewsView$32;-><init>(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsEntry;)V

    iput-object v0, v10, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->menuClickListener:Landroid/view/View$OnClickListener;

    .line 1579
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1581
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1582
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1583
    new-instance v0, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v2, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v3, p1, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;-><init>(IILjava/lang/CharSequence;Z)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1585
    :cond_0
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1586
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v2, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/vkontakte/android/NewsView;->buildAttachItems(Ljava/util/List;IILcom/vkontakte/android/NewsEntry;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1588
    :cond_1
    new-instance v0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v2, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v3, p1, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    iget-object v4, p1, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    iget v5, p1, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    iget v6, p1, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    iget v7, p1, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    iget v8, p1, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    invoke-direct/range {v0 .. v8}, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;-><init>(IILjava/lang/String;Ljava/lang/String;IIII)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1591
    :cond_2
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 1592
    new-instance v0, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v2, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v3, p1, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    const/16 v4, 0x10

    invoke-virtual {p1, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;-><init>(IILjava/lang/CharSequence;Z)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1594
    :cond_3
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v2, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/vkontakte/android/NewsView;->buildAttachItems(Ljava/util/List;IILcom/vkontakte/android/NewsEntry;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1596
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    .line 1597
    new-instance v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;

    iget-boolean v1, p0, Lcom/vkontakte/android/NewsView;->displayComments:Z

    invoke-direct {v0, p1, v1}, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;-><init>(Lcom/vkontakte/android/NewsEntry;Z)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1600
    :cond_4
    iget-object v0, p1, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1601
    new-instance v0, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem;

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v2, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v3, p1, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    iget-object v4, p1, Lcom/vkontakte/android/NewsEntry;->lastCommentUserName:Ljava/lang/String;

    iget-object v5, p1, Lcom/vkontakte/android/NewsEntry;->lastCommentUserPhoto:Ljava/lang/String;

    iget v6, p1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    iget v7, p1, Lcom/vkontakte/android/NewsEntry;->lastCommentTime:I

    invoke-direct/range {v0 .. v7}, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1604
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    const/4 v1, 0x1

    iput v1, v0, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->bgType:I

    .line 1605
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    const/4 v1, 0x2

    iput v1, v0, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->bgType:I

    .line 1607
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6

    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_7

    .line 1608
    :cond_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1613
    :cond_7
    return-object v11

    .line 1608
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    .line 1609
    .local v9, "di":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->clickable:Z

    goto :goto_0
.end method

.method protected canHideFromFeed()Z
    .locals 1

    .prologue
    .line 1371
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsView;->displayComments:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/NewsView;->isSearchView:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/NewsView;->faveMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected createAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 415
    new-instance v0, Lcom/vkontakte/android/NewsView$NewsAdapter;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewsView$NewsAdapter;-><init>(Lcom/vkontakte/android/NewsView;)V

    return-object v0
.end method

.method protected createImageLoaderAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .locals 2

    .prologue
    .line 419
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
    .line 427
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1501
    iget v0, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    if-lez v0, :cond_0

    .line 1502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

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

    iget v1, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDateRelativeNoDiff(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1503
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getList()I
    .locals 1

    .prologue
    .line 1054
    iget v0, p0, Lcom/vkontakte/android/NewsView;->listID:I

    return v0
.end method

.method protected getPostsOffset()I
    .locals 1

    .prologue
    .line 1382
    const/4 v0, 0x0

    return v0
.end method

.method protected init()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x2

    const v8, -0x1c1b1a

    const/16 v10, 0x11

    const/4 v9, 0x0

    .line 133
    new-instance v5, Lcom/vkontakte/android/NewsView$1;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NewsView$1;-><init>(Lcom/vkontakte/android/NewsView;)V

    .line 148
    const-wide/16 v6, 0x3e8

    .line 133
    invoke-virtual {p0, v5, v6, v7}, Lcom/vkontakte/android/NewsView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/NewsView;->setBackgroundColor(I)V

    .line 150
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/NewsView;->footerView:Landroid/widget/FrameLayout;

    .line 151
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 152
    .local v3, "pb":Landroid/widget/ProgressBar;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-direct {v0, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 153
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 154
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->footerView:Landroid/widget/FrameLayout;

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    const/high16 v7, 0x40e00000    # 7.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-virtual {v5, v9, v6, v9, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 156
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 157
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 159
    new-instance v5, Lcom/vkontakte/android/NewsView$2;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/vkontakte/android/NewsView$2;-><init>(Lcom/vkontakte/android/NewsView;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 176
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->addFooterView(Landroid/view/View;)V

    .line 177
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->addHeaderViews()V

    .line 178
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/RefreshableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->createAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    :cond_0
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 181
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->setDividerHeight(I)V

    .line 182
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->setHeaderDividersEnabled(Z)V

    .line 183
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xa

    if-gt v5, v6, :cond_1

    .line 184
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 185
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 188
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setTopColor(I)V

    .line 190
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v9, v9, v9, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->setPadding(IIII)V

    .line 191
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 192
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 193
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 194
    .local v4, "selector":Landroid/graphics/drawable/StateListDrawable;
    new-array v5, v12, [I

    const v6, 0x10100a7

    aput v6, v5, v9

    new-instance v6, Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;

    invoke-direct {v6}, Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;-><init>()V

    iput-object v6, p0, Lcom/vkontakte/android/NewsView;->highlight:Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 195
    sget-object v5, Landroid/util/StateSet;->WILD_CARD:[I

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 196
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_2

    .line 197
    const/16 v5, 0x12c

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/StateListDrawable;->setExitFadeDuration(I)V

    .line 199
    :cond_2
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 200
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v12}, Lcom/vkontakte/android/ui/RefreshableListView;->setDrawSelectorOnTop(Z)V

    .line 201
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v6, Lcom/vkontakte/android/NewsView$3;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/NewsView$3;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 238
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewsView;->addView(Landroid/view/View;)V

    .line 240
    new-instance v5, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->createImageLoaderAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v8, Lcom/vkontakte/android/NewsView$4;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewsView$4;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-direct {v5, v6, v7, v8}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v5, p0, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 272
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v6, Lcom/vkontakte/android/NewsView$5;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/NewsView$5;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 301
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v6, Lcom/vkontakte/android/NewsView$6;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/NewsView$6;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 354
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    .line 355
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    const v6, -0x888889

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 356
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    const v6, 0x7f060068

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 357
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    const/high16 v6, 0x41880000    # 17.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 358
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 359
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v2, v5, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 360
    .local v2, "lparams":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 361
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewsView;->addView(Landroid/view/View;)V

    .line 365
    new-instance v5, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    .line 366
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 367
    .local v1, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 368
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 370
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewsView;->addView(Landroid/view/View;)V

    .line 372
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "news"

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "feed_from"

    const-string v7, "0"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 373
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "news"

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "feed_offset"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/NewsView;->offset:I

    .line 375
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f03002e

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/vkontakte/android/NewsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/ui/ErrorView;

    iput-object v5, p0, Lcom/vkontakte/android/NewsView;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    .line 376
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    new-instance v6, Lcom/vkontakte/android/NewsView$7;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/NewsView$7;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 385
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewsView;->addView(Landroid/view/View;)V

    .line 387
    new-instance v5, Lcom/vkontakte/android/ui/OverlayTextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/vkontakte/android/ui/OverlayTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    .line 388
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    const-string v6, "qweqwe"

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/OverlayTextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    const v6, -0xc06020

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/OverlayTextView;->setTextColor(I)V

    .line 390
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/OverlayTextView;->setTextSize(F)V

    .line 391
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    const v6, 0x7f0200a9

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/OverlayTextView;->setBackgroundResource(I)V

    .line 392
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    invoke-virtual {v5, v10}, Lcom/vkontakte/android/ui/OverlayTextView;->setGravity(I)V

    .line 393
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/OverlayTextView;->setVisibility(I)V

    .line 394
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    const v6, 0x7f0200da

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlay(I)V

    .line 395
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    invoke-virtual {v5, v12}, Lcom/vkontakte/android/ui/OverlayTextView;->setPadOverlay(Z)V

    .line 396
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    new-instance v6, Lcom/vkontakte/android/NewsView$8;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/NewsView$8;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/OverlayTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    const/16 v8, 0x30

    invoke-direct {v6, v7, v11, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v5, v6}, Lcom/vkontakte/android/NewsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    return-void
.end method

.method public initFave()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewsView;->faveMode:Z

    .line 449
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 450
    iput v1, p0, Lcom/vkontakte/android/NewsView;->offset:I

    .line 451
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 452
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setRefreshEnabled(Z)V

    .line 453
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    .line 454
    return-void
.end method

.method public initPhotos()V
    .locals 3

    .prologue
    const v2, 0x7f0201a3

    const v1, -0xe5e5e6

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewsView;->photosMode:Z

    .line 458
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 459
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/NewsView;->offset:I

    .line 460
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 462
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 463
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 464
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setTopColor(I)V

    .line 465
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const v1, 0x7f0201e2

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setProgressResource(I)V

    .line 466
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v2, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->setArrowResource(II)V

    .line 467
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const v1, -0x414040

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setTextColor(I)V

    .line 468
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020220

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 469
    return-void
.end method

.method public initWithSearch()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 431
    iput v3, p0, Lcom/vkontakte/android/NewsView;->offset:I

    .line 432
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 433
    const-string v1, "0"

    iput-object v1, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 434
    iput-boolean v4, p0, Lcom/vkontakte/android/NewsView;->isSearchView:Z

    .line 435
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setRefreshEnabled(Z)V

    .line 436
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    .line 437
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 438
    .local v0, "lparams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 439
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 441
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    const v2, 0x7f060155

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 442
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 444
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 445
    return-void
.end method

.method public invalidateList()V
    .locals 1

    .prologue
    .line 1375
    new-instance v0, Lcom/vkontakte/android/NewsView$31;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewsView$31;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsView;->post(Ljava/lang/Runnable;)Z

    .line 1379
    return-void
.end method

.method public loadData(Z)V
    .locals 7
    .param p1, "refresh"    # Z

    .prologue
    const/16 v3, 0x14

    const/16 v6, 0xa

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 761
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    if-eqz v0, :cond_0

    .line 1028
    :goto_0
    return-void

    .line 762
    :cond_0
    const-string v0, "vk"

    const-string v2, "Load data!"

    invoke-static {v0, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iput-boolean v4, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    .line 764
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 766
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsView;->faveMode:Z

    if-eqz v0, :cond_4

    .line 767
    if-eqz p1, :cond_1

    iput v1, p0, Lcom/vkontakte/android/NewsView;->offset:I

    .line 769
    :cond_1
    new-instance v0, Lcom/vkontakte/android/api/FaveGetPosts;

    iget v1, p0, Lcom/vkontakte/android/NewsView;->offset:I

    iget-boolean v2, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    if-eqz v2, :cond_3

    .local v6, "count":I
    :goto_2
    invoke-direct {v0, v1, v6}, Lcom/vkontakte/android/api/FaveGetPosts;-><init>(II)V

    .line 770
    new-instance v1, Lcom/vkontakte/android/NewsView$16;

    invoke-direct {v1, p0, v6, p1}, Lcom/vkontakte/android/NewsView$16;-><init>(Lcom/vkontakte/android/NewsView;IZ)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FaveGetPosts;->setCallback(Lcom/vkontakte/android/api/FaveGetPosts$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 805
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 769
    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 764
    .end local v6    # "count":I
    :cond_2
    const/16 v0, 0x8

    goto :goto_1

    :cond_3
    move v6, v3

    .line 769
    goto :goto_2

    .line 809
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 810
    if-eqz p1, :cond_5

    .line 811
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 812
    iput v1, p0, Lcom/vkontakte/android/NewsView;->offset:I

    .line 814
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setRefreshEnabled(Z)V

    .line 815
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    .line 816
    new-instance v0, Lcom/vkontakte/android/api/NewsfeedSearch;

    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    iget v4, p0, Lcom/vkontakte/android/NewsView;->offset:I

    iget-boolean v5, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    if-eqz v5, :cond_6

    :goto_3
    invoke-direct {v0, v1, v2, v4, v6}, Lcom/vkontakte/android/api/NewsfeedSearch;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 817
    new-instance v1, Lcom/vkontakte/android/NewsView$17;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/NewsView$17;-><init>(Lcom/vkontakte/android/NewsView;Z)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/NewsfeedSearch;->setCallback(Lcom/vkontakte/android/api/NewsfeedSearch$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 855
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 816
    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    :cond_6
    move v6, v3

    goto :goto_3

    .line 859
    :cond_7
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsView;->displayComments:Z

    if-nez v0, :cond_e

    .line 860
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->newNewsReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_8

    .line 861
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->newNewsReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 862
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->newNewsReq:Lcom/vkontakte/android/APIRequest;

    .line 864
    :cond_8
    iget v0, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    if-gtz v0, :cond_9

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/cache/NewsfeedCache;->hasEntries(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/vkontakte/android/NewsView;->photosMode:Z

    if-eqz v0, :cond_c

    .line 865
    :cond_9
    if-eqz p1, :cond_a

    .line 866
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 867
    iput v1, p0, Lcom/vkontakte/android/NewsView;->offset:I

    .line 869
    :cond_a
    new-instance v0, Lcom/vkontakte/android/api/NewsfeedGet;

    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    iget v2, p0, Lcom/vkontakte/android/NewsView;->offset:I

    iget-boolean v4, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    if-eqz v4, :cond_b

    move v3, v6

    :cond_b
    iget-boolean v4, p0, Lcom/vkontakte/android/NewsView;->photosMode:Z

    iget v5, p0, Lcom/vkontakte/android/NewsView;->listID:I

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/NewsfeedGet;-><init>(Ljava/lang/String;IIZI)V

    .line 870
    new-instance v1, Lcom/vkontakte/android/NewsView$18;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/NewsView$18;-><init>(Lcom/vkontakte/android/NewsView;Z)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/NewsfeedGet;->setCallback(Lcom/vkontakte/android/api/NewsfeedGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 927
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 869
    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 930
    :cond_c
    sget-object v0, Lcom/vkontakte/android/data/Posts;->feed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 931
    sget-object v0, Lcom/vkontakte/android/data/Posts;->feed:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/NewsView;->onDataLoaded(Ljava/util/List;Z)V

    .line 932
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    sget-object v1, Lcom/vkontakte/android/data/Posts;->preloadedFeed:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 933
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    sget v1, Lcom/vkontakte/android/data/Posts;->feedItem:I

    sget v2, Lcom/vkontakte/android/data/Posts;->feedItemOffset:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelectionFromTop(II)V

    .line 934
    sget-object v0, Lcom/vkontakte/android/data/Posts;->feedFrom:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 935
    sget v0, Lcom/vkontakte/android/data/Posts;->feedOffset:I

    iput v0, p0, Lcom/vkontakte/android/NewsView;->offset:I

    goto/16 :goto_0

    .line 937
    :cond_d
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/NewsView$19;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/NewsView$19;-><init>(Lcom/vkontakte/android/NewsView;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 954
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 958
    :cond_e
    if-eqz p1, :cond_f

    const-string v0, "0"

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 959
    :cond_f
    iget v0, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    if-gtz v0, :cond_10

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache;->hasEntries(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1c20

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    .line 960
    :cond_10
    new-instance v0, Lcom/vkontakte/android/api/NewsfeedGetComments;

    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    iget v2, p0, Lcom/vkontakte/android/NewsView;->offset:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/NewsfeedGetComments;-><init>(Ljava/lang/String;I)V

    .line 961
    new-instance v1, Lcom/vkontakte/android/NewsView$20;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/NewsView$20;-><init>(Lcom/vkontakte/android/NewsView;Z)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/NewsfeedGetComments;->setCallback(Lcom/vkontakte/android/api/NewsfeedGetComments$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1005
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 960
    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 1007
    :cond_11
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/NewsView$21;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/NewsView$21;-><init>(Lcom/vkontakte/android/NewsView;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1025
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
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

    .line 1065
    const-string v6, "vk"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "on data loaded, news="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", thread="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    if-nez p1, :cond_0

    .line 1126
    :goto_0
    return-void

    .line 1067
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v2

    .local v2, "firstVisible":I
    const/4 v5, 0x0

    .line 1068
    .local v5, "numAdded":I
    iget-boolean v6, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    if-nez v6, :cond_1

    if-lez v2, :cond_8

    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    .line 1069
    :cond_1
    iget-boolean v6, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    if-nez v6, :cond_a

    .line 1070
    if-eqz p2, :cond_2

    .line 1071
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 1072
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1074
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_9

    .line 1088
    :cond_3
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    .line 1090
    const/4 v4, -0x1

    .line 1091
    .local v4, "itemOffset":I
    iget-boolean v6, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    if-eqz v6, :cond_4

    .line 1092
    if-nez v2, :cond_c

    .line 1093
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v6

    if-le v6, v12, :cond_4

    .line 1095
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6, v12}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1105
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->updateList()V

    .line 1106
    const/4 v0, 0x1

    .line 1107
    .local v0, "animate":Z
    if-eqz p2, :cond_6

    iget-boolean v6, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    if-eqz v6, :cond_6

    .line 1108
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    add-int v10, v2, v5

    invoke-virtual {v6, v10, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelectionFromTop(II)V

    .line 1109
    iget-boolean v6, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    if-eqz v6, :cond_d

    if-nez v2, :cond_5

    if-eqz v5, :cond_d

    :cond_5
    move v0, v8

    .line 1110
    :goto_4
    iput-boolean v8, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    .line 1112
    :cond_6
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->clearAnimation()V

    .line 1113
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->clearAnimation()V

    .line 1114
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1116
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_e

    :goto_5
    iput-boolean v7, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    .line 1117
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-boolean v6, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    if-eqz v6, :cond_f

    move v6, v8

    :goto_6
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1118
    iput-boolean v8, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    .line 1119
    if-eqz p2, :cond_7

    .line 1120
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone(Z)V

    .line 1122
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v10, 0x3e8

    div-long/2addr v6, v10

    long-to-int v6, v6

    iput v6, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    .line 1124
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lez v7, :cond_10

    :goto_7
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1125
    iput-boolean v8, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    iput-boolean v8, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    goto/16 :goto_0

    .end local v0    # "animate":Z
    .end local v4    # "itemOffset":I
    :cond_8
    move v6, v8

    .line 1068
    goto/16 :goto_1

    .line 1074
    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    .line 1075
    .local v1, "e":Lcom/vkontakte/android/NewsEntry;
    iget-object v10, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v10, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1076
    iget-object v10, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsView;->buildItems(Lcom/vkontakte/android/NewsEntry;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 1079
    .end local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_8
    if-ltz v3, :cond_3

    .line 1080
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {p0, v6}, Lcom/vkontakte/android/NewsView;->containsEntry(Lcom/vkontakte/android/NewsEntry;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 1081
    iget-object v10, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v10, v8, v6}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 1082
    iget-object v10, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsView;->buildItems(Lcom/vkontakte/android/NewsEntry;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v10, v8, v6}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1083
    add-int/lit8 v5, v5, 0x1

    .line 1079
    :cond_b
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 1099
    .end local v3    # "i":I
    .restart local v4    # "itemOffset":I
    :cond_c
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_4

    .line 1100
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    goto/16 :goto_3

    .restart local v0    # "animate":Z
    :cond_d
    move v0, v7

    .line 1109
    goto/16 :goto_4

    :cond_e
    move v7, v8

    .line 1116
    goto/16 :goto_5

    :cond_f
    move v6, v9

    .line 1117
    goto/16 :goto_6

    :cond_10
    move v9, v8

    .line 1124
    goto :goto_7
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->newNewsReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->newNewsReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 412
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

    .line 1129
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-static {v0, v2, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 1131
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    const/4 v1, 0x1

    invoke-static {v0, v1, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 1132
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    .line 1136
    :goto_0
    return-void

    .line 1134
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060051

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 1514
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1495
    invoke-direct {p0}, Lcom/vkontakte/android/NewsView;->updateNewPostsBtn()V

    .line 1496
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 1497
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 1518
    return-void
.end method

.method public onScrolled(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 1621
    return-void
.end method

.method public preloadNew()V
    .locals 3

    .prologue
    .line 705
    new-instance v0, Lcom/vkontakte/android/NewsView$15;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewsView$15;-><init>(Lcom/vkontakte/android/NewsView;)V

    .line 743
    const-wide/16 v1, 0x12c

    .line 705
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/NewsView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 744
    return-void
.end method

.method public prepend(Lcom/vkontakte/android/NewsEntry;)V
    .locals 3
    .param p1, "e"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    const/4 v2, 0x0

    .line 472
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v0, v2, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 473
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/NewsView;->buildItems(Lcom/vkontakte/android/NewsEntry;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 474
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->updateList()V

    .line 475
    return-void
.end method

.method public refresh(Z)V
    .locals 1
    .param p1, "prepend"    # Z

    .prologue
    .line 1507
    iput-boolean p1, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    .line 1508
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    .line 1509
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refresh()V

    .line 1510
    return-void
.end method

.method public reloadFromCache()V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 534
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 535
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/cache/NewsfeedCache;->get(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/NewsView;->onDataLoaded(Ljava/util/List;Z)V

    .line 536
    return-void
.end method

.method public remove(II)V
    .locals 5
    .param p1, "oid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 478
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 479
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 484
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 490
    :goto_1
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->updateList()V

    .line 491
    return-void

    .line 480
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    .line 481
    .local v1, "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    iget v3, v1, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postID:I

    if-ne v3, p2, :cond_0

    iget v3, v1, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postOwnerID:I

    if-ne v3, p1, :cond_0

    .line 482
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 484
    .end local v1    # "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 485
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    if-eqz p1, :cond_4

    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v4, p1, :cond_1

    :cond_4
    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-ne v4, p2, :cond_1

    .line 486
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public replace(Lcom/vkontakte/android/NewsEntry;)V
    .locals 8
    .param p1, "ne"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    .line 509
    const/4 v1, 0x0

    .line 510
    .local v1, "i":I
    const/4 v2, -0x1

    .line 511
    .local v2, "insertAt":I
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 512
    .local v4, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 520
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/NewsView;->buildItems(Lcom/vkontakte/android/NewsEntry;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 521
    const/4 v1, 0x0

    .line 522
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 529
    :goto_2
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->updateList()V

    .line 530
    return-void

    .line 513
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    .line 514
    .local v3, "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    iget v5, v3, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postID:I

    iget v6, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-ne v5, v6, :cond_2

    iget v5, v3, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postOwnerID:I

    iget v6, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v5, v6, :cond_2

    .line 515
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    move v2, v1

    .line 516
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 518
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 522
    .end local v3    # "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 523
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

    .line 524
    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v5, v1, p1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 527
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public scrollToTop()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelection(I)V

    .line 407
    return-void
.end method

.method public setCommentsMode(Z)V
    .locals 4
    .param p1, "comments"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1147
    iput-boolean p1, p0, Lcom/vkontakte/android/NewsView;->displayComments:Z

    .line 1148
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

    .line 1149
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

    .line 1150
    iput v3, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    .line 1151
    const v0, 0x7f030048

    iput v0, p0, Lcom/vkontakte/android/NewsView;->itemLayout:I

    .line 1152
    return-void

    .line 1148
    :cond_0
    const-string v0, "feed_from"

    goto :goto_0

    .line 1149
    :cond_1
    const-string v0, "feed_offset"

    goto :goto_1
.end method

.method protected setEmptyLabel(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1140
    return-void
.end method

.method protected setEmptyPadding(I)V
    .locals 4
    .param p1, "p"    # I

    .prologue
    const/high16 v3, 0x40e00000    # 7.0f

    .line 1143
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1144
    return-void
.end method

.method public setList(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 1031
    iget v1, p0, Lcom/vkontakte/android/NewsView;->listID:I

    if-ne p1, v1, :cond_0

    .line 1050
    :goto_0
    return v0

    .line 1032
    :cond_0
    iput p1, p0, Lcom/vkontakte/android/NewsView;->listID:I

    .line 1033
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1034
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 1035
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1036
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->updateList()V

    .line 1037
    iput-boolean v0, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    .line 1038
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1039
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1040
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1041
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->newNewsReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_1

    .line 1042
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->newNewsReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 1043
    iput-object v3, p0, Lcom/vkontakte/android/NewsView;->newNewsReq:Lcom/vkontakte/android/APIRequest;

    .line 1045
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_2

    .line 1046
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 1047
    iput-object v3, p0, Lcom/vkontakte/android/NewsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 1049
    :cond_2
    invoke-direct {p0}, Lcom/vkontakte/android/NewsView;->updateNewPostsBtn()V

    .line 1050
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSearchQuery(Ljava/lang/String;)V
    .locals 2
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x8

    .line 539
    iput-object p1, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    .line 540
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 546
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public update(IIIIIZZ)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "pid"    # I
    .param p3, "likes"    # I
    .param p4, "comments"    # I
    .param p5, "retweets"    # I
    .param p6, "liked"    # Z
    .param p7, "retweeted"    # Z

    .prologue
    .line 494
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 506
    :goto_0
    return-void

    .line 494
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 495
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    if-eqz p1, :cond_2

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v2, p1, :cond_0

    :cond_2
    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-ne v2, p2, :cond_0

    .line 496
    iput p3, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 497
    iput p4, v0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 498
    iput p5, v0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 500
    const/16 v1, 0x8

    invoke-virtual {v0, v1, p6}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 501
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p7}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 502
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->updateList()V

    goto :goto_0
.end method

.method public updateList()V
    .locals 2

    .prologue
    .line 1155
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/vkontakte/android/NewsView$22;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewsView$22;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1162
    return-void
.end method

.method public updateList2()V
    .locals 1

    .prologue
    .line 1165
    new-instance v0, Lcom/vkontakte/android/NewsView$23;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewsView$23;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsView;->post(Ljava/lang/Runnable;)Z

    .line 1168
    return-void
.end method
