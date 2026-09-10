.class public Lcom/vkontakte/android/NewsView;
.super Landroid/widget/FrameLayout;
.source "NewsView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/NewsView$NewsAdapter;,
        Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;,
        Lcom/vkontakte/android/NewsView$ScrollStopTimerTask;
    }
.end annotation


# instance fields
.field private bigProgress:Landroid/widget/ProgressBar;

.field private commentsFrom:Ljava/lang/String;

.field protected dataLoading:Z

.field private displayComments:Z

.field private faveMode:Z

.field protected footerView:Landroid/widget/FrameLayout;

.field protected imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

.field protected isAdmin:Z

.field private isSearchView:Z

.field protected lastUpdateTime:I

.field list:Lcom/vkontakte/android/ui/RefreshableListView;

.field protected moreAvailable:Z

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

.field private offset:I

.field private onPauseRunnable:Ljava/lang/Runnable;

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

.field private prependNewEntries:Z

.field private refreshingOnStart:Z

.field private searchBar:Landroid/view/View;

.field private searchEdit:Landroid/widget/EditText;

.field private searchQuery:Ljava/lang/String;

.field private timer:Ljava/util/Timer;

.field private viCount:I

.field private viStart:I

.field private visibleViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    .line 50
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->visibleViews:Ljava/util/Vector;

    .line 51
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    .line 53
    iput-object v2, p0, Lcom/vkontakte/android/NewsView;->timer:Ljava/util/Timer;

    .line 58
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->displayComments:Z

    .line 59
    iput v1, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    .line 60
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 61
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->isAdmin:Z

    .line 62
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    .line 63
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    .line 66
    iput-object v2, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    .line 50
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->visibleViews:Ljava/util/Vector;

    .line 51
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    .line 53
    iput-object v2, p0, Lcom/vkontakte/android/NewsView;->timer:Ljava/util/Timer;

    .line 58
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->displayComments:Z

    .line 59
    iput v1, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    .line 60
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 61
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->isAdmin:Z

    .line 62
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    .line 63
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    .line 66
    iput-object v2, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    .line 50
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->visibleViews:Ljava/util/Vector;

    .line 51
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    .line 53
    iput-object v2, p0, Lcom/vkontakte/android/NewsView;->timer:Ljava/util/Timer;

    .line 58
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->displayComments:Z

    .line 59
    iput v1, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    .line 60
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 61
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->isAdmin:Z

    .line 62
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    .line 63
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    .line 66
    iput-object v2, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "noinit"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    .line 50
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->visibleViews:Ljava/util/Vector;

    .line 51
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    .line 53
    iput-object v2, p0, Lcom/vkontakte/android/NewsView;->timer:Ljava/util/Timer;

    .line 58
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->displayComments:Z

    .line 59
    iput v1, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    .line 60
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 61
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->isAdmin:Z

    .line 62
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    .line 63
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    .line 66
    iput-object v2, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    .line 79
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 80
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewsView;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/NewsView;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/vkontakte/android/NewsView;->viStart:I

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/NewsView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/NewsView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/NewsView;Z)V
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/NewsView;Z)V
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/NewsView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/NewsView;I)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/vkontakte/android/NewsView;->offset:I

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/NewsView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/vkontakte/android/NewsView;->onPauseRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/NewsView;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/vkontakte/android/NewsView;->viCount:I

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/NewsView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->visibleViews:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/NewsView;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsView;->displayComments:Z

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/NewsView;)Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsView;->isSearchView:Z

    return v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/NewsView;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsView;->faveMode:Z

    return v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/NewsView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->searchBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/NewsView;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->searchEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/NewsView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    return-void
.end method

.method private containsEntry(Lcom/vkontakte/android/NewsEntry;)Z
    .locals 3
    .param p1, "e"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    .line 596
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 599
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 596
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 597
    .local v0, "en":Lcom/vkontakte/android/NewsEntry;
    invoke-virtual {v0, p1}, Lcom/vkontakte/android/NewsEntry;->equals(Lcom/vkontakte/android/NewsEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected addHeaderViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 200
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsView;->isSearchView:Z

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03003f

    invoke-static {v0, v1, v3}, Lcom/vkontakte/android/NewsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->searchBar:Landroid/view/View;

    .line 202
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->searchBar:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 203
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->searchBar:Landroid/view/View;

    const v1, 0x7f060074

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->searchEdit:Landroid/widget/EditText;

    .line 204
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->searchEdit:Landroid/widget/EditText;

    const v1, 0x7f0901aa

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 206
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->searchEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/vkontakte/android/NewsView$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewsView$3;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 222
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->searchBar:Landroid/view/View;

    const v1, 0x7f060124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/NewsView$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewsView$4;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->searchEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/vkontakte/android/NewsView$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewsView$5;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 268
    :cond_0
    return-void
.end method

.method public deselectAll()V
    .locals 1

    .prologue
    .line 967
    new-instance v0, Lcom/vkontakte/android/NewsView$13;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewsView$13;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsView;->post(Ljava/lang/Runnable;)Z

    .line 974
    return-void
.end method

.method public focusSearchField()V
    .locals 3

    .prologue
    .line 348
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->searchEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 349
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 350
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->searchEdit:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 351
    return-void
.end method

.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 961
    iget v0, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    if-lez v0, :cond_0

    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

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

    iget v1, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDateRelativeNoDiff(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 963
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected init()V
    .locals 11

    .prologue
    const/high16 v6, 0x40e00000    # 7.0f

    const/4 v10, -0x2

    const/16 v9, 0x11

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 93
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/NewsView;->setBackgroundColor(I)V

    .line 94
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/NewsView;->footerView:Landroid/widget/FrameLayout;

    .line 95
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 96
    .local v3, "pb":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020224

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 98
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 99
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->footerView:Landroid/widget/FrameLayout;

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-virtual {v4, v7, v5, v7, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 101
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 102
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 103
    new-instance v4, Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-direct {v4}, Lcom/vkontakte/android/ui/ListImageLoader;-><init>()V

    iput-object v4, p0, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    .line 105
    new-instance v4, Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 106
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->addFooterView(Landroid/view/View;)V

    .line 107
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->addHeaderViews()V

    .line 108
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/RefreshableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v5, Lcom/vkontakte/android/NewsView$NewsAdapter;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NewsView$NewsAdapter;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 111
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 112
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 113
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 114
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 116
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewsView;->addView(Landroid/view/View;)V

    .line 118
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v5, Lcom/vkontakte/android/NewsView$1;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NewsView$1;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v5, Lcom/vkontakte/android/NewsView$2;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NewsView$2;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 174
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/ListImageLoader;->getAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    new-instance v5, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/ListImageLoader;->setAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 176
    :cond_1
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    .line 177
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    const v5, -0x888889

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    const v5, 0x7f090077

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 179
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    const/high16 v5, 0x41880000    # 17.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 180
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 181
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 182
    .local v2, "lparams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 183
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewsView;->addView(Landroid/view/View;)V

    .line 187
    new-instance v4, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    .line 188
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020224

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 190
    .local v1, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 191
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 193
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewsView;->addView(Landroid/view/View;)V

    .line 195
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "news"

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "feed_from"

    const-string v6, "0"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 196
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "news"

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "feed_offset"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/vkontakte/android/NewsView;->offset:I

    .line 197
    return-void
.end method

.method public initFave()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewsView;->faveMode:Z

    .line 287
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 288
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setRefreshEnabled(Z)V

    .line 289
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    .line 290
    return-void
.end method

.method public initWithSearch()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 271
    iput-boolean v4, p0, Lcom/vkontakte/android/NewsView;->isSearchView:Z

    .line 272
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 273
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setRefreshEnabled(Z)V

    .line 274
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    .line 275
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 276
    .local v0, "lparams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 277
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 279
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    const v2, 0x7f0901c0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 280
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 282
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 283
    return-void
.end method

.method public invalidateList()V
    .locals 1

    .prologue
    .line 688
    new-instance v0, Lcom/vkontakte/android/NewsView$12;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewsView$12;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsView;->post(Ljava/lang/Runnable;)Z

    .line 692
    return-void
.end method

.method public loadData(Z)V
    .locals 10
    .param p1, "refresh"    # Z

    .prologue
    const/4 v8, 0x1

    const/16 v6, 0x14

    const/4 v4, 0x0

    const/16 v5, 0xa

    .line 360
    iput-boolean v8, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    .line 361
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-boolean v3, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 363
    iget-boolean v3, p0, Lcom/vkontakte/android/NewsView;->faveMode:Z

    if-eqz v3, :cond_3

    .line 364
    new-instance v7, Lcom/vkontakte/android/api/FaveGetPosts;

    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_0

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    :cond_0
    iget-boolean v3, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    if-eqz v3, :cond_2

    move v3, v5

    :goto_1
    invoke-direct {v7, v4, v3}, Lcom/vkontakte/android/api/FaveGetPosts;-><init>(II)V

    .line 365
    new-instance v3, Lcom/vkontakte/android/NewsView$6;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/NewsView$6;-><init>(Lcom/vkontakte/android/NewsView;Z)V

    invoke-virtual {v7, v3}, Lcom/vkontakte/android/api/FaveGetPosts;->setCallback(Lcom/vkontakte/android/api/FaveGetPosts$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 398
    invoke-virtual {v3, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 593
    :goto_2
    return-void

    .line 361
    :cond_1
    const/16 v3, 0x8

    goto :goto_0

    :cond_2
    move v3, v6

    .line 364
    goto :goto_1

    .line 402
    :cond_3
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 403
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setRefreshEnabled(Z)V

    .line 404
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    .line 405
    new-instance v3, Lcom/vkontakte/android/api/NewsfeedSearch;

    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    iget-object v7, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    iget v8, p0, Lcom/vkontakte/android/NewsView;->offset:I

    iget-boolean v9, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    if-eqz v9, :cond_4

    :goto_3
    invoke-direct {v3, v4, v7, v8, v5}, Lcom/vkontakte/android/api/NewsfeedSearch;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 406
    new-instance v4, Lcom/vkontakte/android/NewsView$7;

    invoke-direct {v4, p0, p1}, Lcom/vkontakte/android/NewsView$7;-><init>(Lcom/vkontakte/android/NewsView;Z)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/api/NewsfeedSearch;->setCallback(Lcom/vkontakte/android/api/NewsfeedSearch$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 441
    invoke-virtual {v3, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    goto :goto_2

    :cond_4
    move v5, v6

    .line 405
    goto :goto_3

    .line 445
    :cond_5
    iget-boolean v3, p0, Lcom/vkontakte/android/NewsView;->displayComments:Z

    if-nez v3, :cond_c

    .line 446
    iget v3, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    if-gtz v3, :cond_6

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/cache/NewsfeedCache;->hasEntries(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 447
    :cond_6
    if-eqz p1, :cond_7

    .line 448
    const-string v3, "0"

    iput-object v3, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 449
    iput v4, p0, Lcom/vkontakte/android/NewsView;->offset:I

    .line 451
    :cond_7
    new-instance v3, Lcom/vkontakte/android/api/NewsfeedGet;

    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    iget v7, p0, Lcom/vkontakte/android/NewsView;->offset:I

    iget-boolean v8, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    if-eqz v8, :cond_8

    :goto_4
    invoke-direct {v3, v4, v7, v5}, Lcom/vkontakte/android/api/NewsfeedGet;-><init>(Ljava/lang/String;II)V

    .line 452
    new-instance v4, Lcom/vkontakte/android/NewsView$8;

    invoke-direct {v4, p0, p1}, Lcom/vkontakte/android/NewsView$8;-><init>(Lcom/vkontakte/android/NewsView;Z)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/api/NewsfeedGet;->setCallback(Lcom/vkontakte/android/api/NewsfeedGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 498
    invoke-virtual {v3, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    goto :goto_2

    :cond_8
    move v5, v6

    .line 451
    goto :goto_4

    .line 500
    :cond_9
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/cache/NewsfeedCache;->get(Landroid/content/Context;)[Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    .line 501
    .local v0, "e":[Lcom/vkontakte/android/NewsEntry;
    array-length v3, v0

    if-gt v3, v5, :cond_b

    .line 502
    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/NewsView;->onDataLoaded([Lcom/vkontakte/android/NewsEntry;Z)V

    .line 509
    :cond_a
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/cache/NewsfeedCache;->getUpdateTime(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    goto :goto_2

    .line 504
    :cond_b
    new-array v2, v5, [Lcom/vkontakte/android/NewsEntry;

    .line 505
    .local v2, "nn":[Lcom/vkontakte/android/NewsEntry;
    invoke-static {v0, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 506
    invoke-virtual {p0, v2, p1}, Lcom/vkontakte/android/NewsView;->onDataLoaded([Lcom/vkontakte/android/NewsEntry;Z)V

    .line 507
    const/16 v1, 0xa

    .local v1, "i":I
    :goto_5
    array-length v3, v0

    if-ge v1, v3, :cond_a

    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 535
    .end local v0    # "e":[Lcom/vkontakte/android/NewsEntry;
    .end local v1    # "i":I
    .end local v2    # "nn":[Lcom/vkontakte/android/NewsEntry;
    :cond_c
    if-eqz p1, :cond_d

    const-string v3, "0"

    iput-object v3, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 536
    :cond_d
    iget v3, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    if-gtz v3, :cond_e

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache;->hasEntries(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 537
    :cond_e
    new-instance v3, Lcom/vkontakte/android/api/NewsfeedGetComments;

    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    if-eqz v7, :cond_f

    :goto_6
    invoke-direct {v3, v4, v5}, Lcom/vkontakte/android/api/NewsfeedGetComments;-><init>(Ljava/lang/String;I)V

    .line 538
    new-instance v4, Lcom/vkontakte/android/NewsView$9;

    invoke-direct {v4, p0, p1}, Lcom/vkontakte/android/NewsView$9;-><init>(Lcom/vkontakte/android/NewsView;Z)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/api/NewsfeedGetComments;->setCallback(Lcom/vkontakte/android/api/NewsfeedGetComments$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 579
    invoke-virtual {v3, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_2

    :cond_f
    move v5, v6

    .line 537
    goto :goto_6

    .line 581
    :cond_10
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache;->get(Landroid/content/Context;)[Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    .line 582
    .restart local v0    # "e":[Lcom/vkontakte/android/NewsEntry;
    array-length v3, v0

    if-gt v3, v5, :cond_12

    .line 583
    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/NewsView;->onDataLoaded([Lcom/vkontakte/android/NewsEntry;Z)V

    .line 590
    :cond_11
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache;->getUpdateTime(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    goto/16 :goto_2

    .line 585
    :cond_12
    new-array v2, v5, [Lcom/vkontakte/android/NewsEntry;

    .line 586
    .restart local v2    # "nn":[Lcom/vkontakte/android/NewsEntry;
    invoke-static {v0, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 587
    invoke-virtual {p0, v2, p1}, Lcom/vkontakte/android/NewsView;->onDataLoaded([Lcom/vkontakte/android/NewsEntry;Z)V

    .line 588
    const/16 v1, 0xa

    .restart local v1    # "i":I
    :goto_7
    array-length v3, v0

    if-ge v1, v3, :cond_11

    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method protected onDataLoaded([Lcom/vkontakte/android/NewsEntry;Z)V
    .locals 13
    .param p1, "news"    # [Lcom/vkontakte/android/NewsEntry;
    .param p2, "refresh"    # Z

    .prologue
    const/4 v12, 0x2

    const/16 v9, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 603
    if-nez p1, :cond_0

    .line 656
    :goto_0
    return-void

    .line 604
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v2

    .local v2, "firstVisible":I
    const/4 v5, 0x0

    .line 605
    .local v5, "numAdded":I
    iget-boolean v6, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    if-nez v6, :cond_1

    if-lez v2, :cond_8

    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    .line 606
    :cond_1
    iget-boolean v6, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    if-nez v6, :cond_a

    .line 607
    if-eqz p2, :cond_2

    .line 608
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 610
    :cond_2
    array-length v10, p1

    move v6, v8

    :goto_2
    if-lt v6, v10, :cond_9

    .line 621
    :cond_3
    const/4 v4, -0x1

    .line 622
    .local v4, "itemOffset":I
    iget-boolean v6, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    if-eqz v6, :cond_4

    .line 623
    if-nez v2, :cond_c

    .line 624
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v6

    if-le v6, v12, :cond_4

    .line 626
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6, v12}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    .line 636
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->updateList()V

    .line 637
    const/4 v0, 0x1

    .line 638
    .local v0, "animate":Z
    if-eqz p2, :cond_6

    iget-boolean v6, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    if-eqz v6, :cond_6

    .line 639
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    add-int v10, v2, v5

    invoke-virtual {v6, v10, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelectionFromTop(II)V

    .line 640
    iget-boolean v6, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    if-eqz v6, :cond_d

    if-nez v2, :cond_5

    if-eqz v5, :cond_d

    :cond_5
    move v0, v8

    .line 641
    :goto_4
    iput-boolean v8, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    .line 643
    :cond_6
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->clearAnimation()V

    .line 644
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->clearAnimation()V

    .line 645
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 646
    array-length v6, p1

    if-lez v6, :cond_e

    :goto_5
    iput-boolean v7, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    .line 647
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-boolean v6, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    if-eqz v6, :cond_f

    move v6, v8

    :goto_6
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 648
    iput-boolean v8, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    .line 649
    if-eqz p2, :cond_7

    .line 650
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone(Z)V

    .line 652
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v10, 0x3e8

    div-long/2addr v6, v10

    long-to-int v6, v6

    iput v6, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    .line 654
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lez v7, :cond_10

    :goto_7
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 655
    iput-boolean v8, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    iput-boolean v8, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    goto/16 :goto_0

    .end local v0    # "animate":Z
    .end local v4    # "itemOffset":I
    :cond_8
    move v6, v8

    .line 605
    goto/16 :goto_1

    .line 610
    :cond_9
    aget-object v1, p1, v6

    .line 611
    .local v1, "e":Lcom/vkontakte/android/NewsEntry;
    iget-object v11, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v11, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 610
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 613
    .end local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_a
    array-length v6, p1

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_8
    if-ltz v3, :cond_3

    .line 614
    aget-object v6, p1, v3

    invoke-direct {p0, v6}, Lcom/vkontakte/android/NewsView;->containsEntry(Lcom/vkontakte/android/NewsEntry;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 615
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    aget-object v10, p1, v3

    invoke-virtual {v6, v8, v10}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 616
    add-int/lit8 v5, v5, 0x1

    .line 613
    :cond_b
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 630
    .end local v3    # "i":I
    .restart local v4    # "itemOffset":I
    :cond_c
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_4

    .line 631
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    goto/16 :goto_3

    .restart local v0    # "animate":Z
    :cond_d
    move v0, v7

    .line 640
    goto/16 :goto_4

    :cond_e
    move v7, v8

    .line 646
    goto :goto_5

    :cond_f
    move v6, v9

    .line 647
    goto :goto_6

    :cond_10
    move v9, v8

    .line 654
    goto :goto_7
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 983
    new-instance v0, Lcom/vkontakte/android/NewsView$14;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewsView$14;-><init>(Lcom/vkontakte/android/NewsView;)V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->onPauseRunnable:Ljava/lang/Runnable;

    .line 987
    const-wide/16 v1, 0x12c

    .line 983
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/NewsView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 988
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 956
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 957
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 991
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->onPauseRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->onPauseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 993
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->onPauseRunnable:Ljava/lang/Runnable;

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->activate()V

    .line 996
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V

    .line 997
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 8
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 696
    iget v2, p0, Lcom/vkontakte/android/NewsView;->viStart:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Lcom/vkontakte/android/NewsView;->viCount:I

    if-ne v2, p3, :cond_0

    .line 722
    :goto_0
    return-void

    .line 697
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->timer:Ljava/util/Timer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->timer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 698
    :cond_1
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/NewsView;->timer:Ljava/util/Timer;

    .line 700
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->timer:Ljava/util/Timer;

    new-instance v3, Lcom/vkontakte/android/NewsView$ScrollStopTimerTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/vkontakte/android/NewsView$ScrollStopTimerTask;-><init>(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsView$ScrollStopTimerTask;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 704
    iput p3, p0, Lcom/vkontakte/android/NewsView;->viCount:I

    .line 705
    iput p2, p0, Lcom/vkontakte/android/NewsView;->viStart:I

    .line 706
    add-int v2, p2, p3

    if-lt v2, p4, :cond_3

    iget-boolean v2, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    if-eqz v2, :cond_3

    :cond_2
    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    iget-boolean v2, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    if-eqz v2, :cond_3

    .line 707
    iget-boolean v2, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    if-eqz v2, :cond_4

    .line 708
    iput-boolean v6, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    .line 709
    iput-boolean v7, p0, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    .line 721
    :cond_3
    :goto_1
    iget v2, p0, Lcom/vkontakte/android/NewsView;->viStart:I

    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/vkontakte/android/NewsView;->viStart:I

    goto :goto_0

    .line 710
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 711
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [Lcom/vkontakte/android/NewsEntry;

    .line 712
    .local v1, "nn":[Lcom/vkontakte/android/NewsEntry;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_5

    .line 713
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 714
    invoke-virtual {p0, v1, v6}, Lcom/vkontakte/android/NewsView;->onDataLoaded([Lcom/vkontakte/android/NewsEntry;Z)V

    .line 715
    iput-boolean v7, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    .line 716
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    goto :goto_1

    .line 712
    :cond_5
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsEntry;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 718
    .end local v0    # "i":I
    .end local v1    # "nn":[Lcom/vkontakte/android/NewsEntry;
    :cond_6
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 726
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 728
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->deselectAll()V

    .line 729
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->searchEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->searchEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 730
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->unfocusSearchField()V

    .line 732
    :cond_1
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

    .line 1001
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    .line 1002
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1003
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1004
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1005
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1006
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1007
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1008
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 1009
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1010
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1024
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_2
    :goto_0
    return-void

    .line 1013
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1014
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1015
    .restart local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1016
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1017
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 1018
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1019
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 1020
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1021
    :cond_5
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public prepend(Lcom/vkontakte/android/NewsEntry;)V
    .locals 2
    .param p1, "e"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 294
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->updateList()V

    .line 295
    return-void
.end method

.method public refresh(Z)V
    .locals 1
    .param p1, "prepend"    # Z

    .prologue
    .line 977
    iput-boolean p1, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    .line 978
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    .line 979
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refresh()V

    .line 980
    return-void
.end method

.method public reloadFromCache()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 334
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/cache/NewsfeedCache;->get(Landroid/content/Context;)[Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/NewsView;->onDataLoaded([Lcom/vkontakte/android/NewsEntry;Z)V

    .line 335
    return-void
.end method

.method public remove(II)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 298
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 305
    :goto_0
    return-void

    .line 298
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 299
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    if-eqz p1, :cond_2

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v2, p1, :cond_0

    :cond_2
    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-ne v2, p2, :cond_0

    .line 300
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 301
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->updateList()V

    goto :goto_0
.end method

.method public replace(Lcom/vkontakte/android/NewsEntry;)V
    .locals 5
    .param p1, "ne"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    .line 321
    const/4 v1, 0x0

    .line 322
    .local v1, "i":I
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 330
    :goto_1
    return-void

    .line 322
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 323
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    iget v3, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v4, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v3, v4, :cond_2

    :cond_1
    iget v3, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v4, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-ne v3, v4, :cond_2

    .line 324
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v2, v1, p1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->updateList()V

    goto :goto_1

    .line 328
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setCommentsMode(Z)V
    .locals 3
    .param p1, "comments"    # Z

    .prologue
    .line 667
    iput-boolean p1, p0, Lcom/vkontakte/android/NewsView;->displayComments:Z

    .line 668
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "news"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "comments_from"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 669
    return-void
.end method

.method protected setEmptyLabel(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 659
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 660
    return-void
.end method

.method protected setEmptyPadding(I)V
    .locals 4
    .param p1, "p"    # I

    .prologue
    const/high16 v3, 0x40e00000    # 7.0f

    .line 663
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 664
    return-void
.end method

.method public setSearchQuery(Ljava/lang/String;)V
    .locals 2
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x8

    .line 338
    iput-object p1, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->searchEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 340
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 345
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public unfocusSearchField()V
    .locals 3

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 355
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->searchEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 356
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->searchBar:Landroid/view/View;

    const v2, 0x7f060123

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 357
    return-void
.end method

.method public update(IIIIZ)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "pid"    # I
    .param p3, "likes"    # I
    .param p4, "comments"    # I
    .param p5, "liked"    # Z

    .prologue
    .line 308
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 318
    :goto_0
    return-void

    .line 308
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 309
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    if-eqz p1, :cond_2

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v2, p1, :cond_0

    :cond_2
    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-ne v2, p2, :cond_0

    .line 310
    iput p3, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 311
    iput p4, v0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 313
    const/16 v1, 0x8

    invoke-virtual {v0, v1, p5}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 314
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->updateList()V

    goto :goto_0
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 672
    new-instance v0, Lcom/vkontakte/android/NewsView$10;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewsView$10;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsView;->post(Ljava/lang/Runnable;)Z

    .line 679
    return-void
.end method

.method public updateList2()V
    .locals 1

    .prologue
    .line 682
    new-instance v0, Lcom/vkontakte/android/NewsView$11;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewsView$11;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsView;->post(Ljava/lang/Runnable;)Z

    .line 685
    return-void
.end method
