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

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    .line 45
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->visibleViews:Ljava/util/Vector;

    .line 46
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    .line 48
    iput-object v2, p0, Lcom/vkontakte/android/NewsView;->timer:Ljava/util/Timer;

    .line 53
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->displayComments:Z

    .line 54
    iput v1, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    .line 55
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 56
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->isAdmin:Z

    .line 57
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    .line 58
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    .line 61
    iput-object v2, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    .line 45
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->visibleViews:Ljava/util/Vector;

    .line 46
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    .line 48
    iput-object v2, p0, Lcom/vkontakte/android/NewsView;->timer:Ljava/util/Timer;

    .line 53
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->displayComments:Z

    .line 54
    iput v1, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    .line 55
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 56
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->isAdmin:Z

    .line 57
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    .line 58
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    .line 61
    iput-object v2, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 77
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

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    .line 45
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->visibleViews:Ljava/util/Vector;

    .line 46
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    .line 48
    iput-object v2, p0, Lcom/vkontakte/android/NewsView;->timer:Ljava/util/Timer;

    .line 53
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->displayComments:Z

    .line 54
    iput v1, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    .line 55
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 56
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->isAdmin:Z

    .line 57
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    .line 58
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    .line 61
    iput-object v2, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "noinit"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    .line 45
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->visibleViews:Ljava/util/Vector;

    .line 46
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    .line 48
    iput-object v2, p0, Lcom/vkontakte/android/NewsView;->timer:Ljava/util/Timer;

    .line 53
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->displayComments:Z

    .line 54
    iput v1, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    .line 55
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 56
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->isAdmin:Z

    .line 57
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    .line 58
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    .line 61
    iput-object v2, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    .line 71
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 72
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewsView;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/NewsView;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/vkontakte/android/NewsView;->viStart:I

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/NewsView;Z)V
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/NewsView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/NewsView;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsView;->isSearchView:Z

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/NewsView;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/vkontakte/android/NewsView;->viCount:I

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/NewsView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->visibleViews:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/NewsView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->searchBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/NewsView;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->searchEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/NewsView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/NewsView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/NewsView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/NewsView;Z)V
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    return-void
.end method

.method private containsEntry(Lcom/vkontakte/android/NewsEntry;)Z
    .locals 3
    .param p1, "e"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    .line 471
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 474
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 471
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 472
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

    .line 148
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsView;->isSearchView:Z

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030037

    invoke-static {v0, v1, v3}, Lcom/vkontakte/android/NewsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->searchBar:Landroid/view/View;

    .line 150
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->searchBar:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 151
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->searchBar:Landroid/view/View;

    const v1, 0x7f06006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->searchEdit:Landroid/widget/EditText;

    .line 152
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->searchEdit:Landroid/widget/EditText;

    const v1, 0x7f0901a9

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 154
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->searchEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/vkontakte/android/NewsView$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewsView$2;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 170
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->searchBar:Landroid/view/View;

    const v1, 0x7f060123

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/NewsView$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewsView$3;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->searchEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/vkontakte/android/NewsView$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewsView$4;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 216
    :cond_0
    return-void
.end method

.method public deselectAll()V
    .locals 1

    .prologue
    .line 842
    new-instance v0, Lcom/vkontakte/android/NewsView$11;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewsView$11;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsView;->post(Ljava/lang/Runnable;)Z

    .line 849
    return-void
.end method

.method public focusSearchField()V
    .locals 3

    .prologue
    .line 277
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->searchEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 278
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 279
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->searchEdit:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 280
    return-void
.end method

.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 836
    iget v0, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    if-lez v0, :cond_0

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090051

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

    .line 838
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09012f

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

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 85
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewsView;->setBackgroundColor(I)V

    .line 86
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/NewsView;->footerView:Landroid/widget/FrameLayout;

    .line 87
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 88
    .local v3, "pb":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020206

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 90
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 91
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->footerView:Landroid/widget/FrameLayout;

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-virtual {v4, v8, v5, v8, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 93
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 94
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 95
    new-instance v4, Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-direct {v4}, Lcom/vkontakte/android/ui/ListImageLoader;-><init>()V

    iput-object v4, p0, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    .line 97
    new-instance v4, Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 98
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v5, p0, Lcom/vkontakte/android/NewsView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->addFooterView(Landroid/view/View;)V

    .line 99
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->addHeaderViews()V

    .line 100
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/RefreshableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v5, Lcom/vkontakte/android/NewsView$NewsAdapter;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NewsView$NewsAdapter;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 102
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 103
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 104
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 105
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 106
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 108
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewsView;->addView(Landroid/view/View;)V

    .line 110
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v5, Lcom/vkontakte/android/NewsView$1;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NewsView$1;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/ListImageLoader;->getAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    new-instance v5, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/ListImageLoader;->setAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 127
    :cond_1
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    .line 128
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    const v5, -0x888889

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    const v5, 0x7f090076

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    const/high16 v5, 0x41880000    # 17.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 131
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 132
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 133
    .local v2, "lparams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 134
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewsView;->addView(Landroid/view/View;)V

    .line 138
    new-instance v4, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    .line 139
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020206

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 141
    .local v1, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 142
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 144
    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewsView;->addView(Landroid/view/View;)V

    .line 145
    return-void
.end method

.method public initWithSearch()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 219
    iput-boolean v4, p0, Lcom/vkontakte/android/NewsView;->isSearchView:Z

    .line 220
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 221
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setRefreshEnabled(Z)V

    .line 222
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    .line 223
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 224
    .local v0, "lparams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 225
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 227
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    const v2, 0x7f0901bf

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 228
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 230
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 231
    return-void
.end method

.method public invalidateList()V
    .locals 1

    .prologue
    .line 562
    new-instance v0, Lcom/vkontakte/android/NewsView$10;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewsView$10;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsView;->post(Ljava/lang/Runnable;)Z

    .line 566
    return-void
.end method

.method public loadData(Z)V
    .locals 9
    .param p1, "refresh"    # Z

    .prologue
    const/16 v6, 0x14

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xa

    .line 289
    iput-boolean v8, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    .line 290
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-boolean v3, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 293
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setRefreshEnabled(Z)V

    .line 294
    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    .line 295
    new-instance v7, Lcom/vkontakte/android/api/NewsfeedSearch;

    iget-object v8, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

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
    invoke-direct {v7, v8, v4, v3}, Lcom/vkontakte/android/api/NewsfeedSearch;-><init>(Ljava/lang/String;II)V

    .line 296
    new-instance v3, Lcom/vkontakte/android/NewsView$5;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/NewsView$5;-><init>(Lcom/vkontakte/android/NewsView;Z)V

    invoke-virtual {v7, v3}, Lcom/vkontakte/android/api/NewsfeedSearch;->setCallback(Lcom/vkontakte/android/api/NewsfeedSearch$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 329
    invoke-virtual {v3, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 468
    :goto_2
    return-void

    .line 290
    :cond_1
    const/16 v3, 0x8

    goto :goto_0

    :cond_2
    move v3, v6

    .line 295
    goto :goto_1

    .line 333
    :cond_3
    iget-boolean v3, p0, Lcom/vkontakte/android/NewsView;->displayComments:Z

    if-nez v3, :cond_a

    .line 334
    iget v3, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    if-gtz v3, :cond_4

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/cache/NewsfeedCache;->hasEntries(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 335
    :cond_4
    new-instance v7, Lcom/vkontakte/android/api/NewsfeedGet;

    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_5

    if-nez p1, :cond_5

    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->time_l:I

    add-int/lit8 v4, v3, -0x1

    :cond_5
    iget-boolean v3, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    if-eqz v3, :cond_6

    :goto_3
    invoke-direct {v7, v4, v5}, Lcom/vkontakte/android/api/NewsfeedGet;-><init>(II)V

    .line 336
    new-instance v3, Lcom/vkontakte/android/NewsView$6;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/NewsView$6;-><init>(Lcom/vkontakte/android/NewsView;Z)V

    invoke-virtual {v7, v3}, Lcom/vkontakte/android/api/NewsfeedGet;->setCallback(Lcom/vkontakte/android/api/NewsfeedGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 373
    invoke-virtual {v3, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    goto :goto_2

    :cond_6
    move v5, v6

    .line 335
    goto :goto_3

    .line 375
    :cond_7
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/cache/NewsfeedCache;->get(Landroid/content/Context;)[Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    .line 376
    .local v0, "e":[Lcom/vkontakte/android/NewsEntry;
    array-length v3, v0

    if-gt v3, v5, :cond_9

    .line 377
    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/NewsView;->onDataLoaded([Lcom/vkontakte/android/NewsEntry;Z)V

    .line 384
    :cond_8
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/cache/NewsfeedCache;->getUpdateTime(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    goto :goto_2

    .line 379
    :cond_9
    new-array v2, v5, [Lcom/vkontakte/android/NewsEntry;

    .line 380
    .local v2, "nn":[Lcom/vkontakte/android/NewsEntry;
    invoke-static {v0, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 381
    invoke-virtual {p0, v2, p1}, Lcom/vkontakte/android/NewsView;->onDataLoaded([Lcom/vkontakte/android/NewsEntry;Z)V

    .line 382
    const/16 v1, 0xa

    .local v1, "i":I
    :goto_4
    array-length v3, v0

    if-ge v1, v3, :cond_8

    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 410
    .end local v0    # "e":[Lcom/vkontakte/android/NewsEntry;
    .end local v1    # "i":I
    .end local v2    # "nn":[Lcom/vkontakte/android/NewsEntry;
    :cond_a
    if-eqz p1, :cond_b

    const-string v3, "0"

    iput-object v3, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 411
    :cond_b
    iget v3, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    if-gtz v3, :cond_c

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache;->hasEntries(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 412
    :cond_c
    new-instance v3, Lcom/vkontakte/android/api/NewsfeedGetComments;

    iget-object v4, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    if-eqz v7, :cond_d

    :goto_5
    invoke-direct {v3, v4, v5}, Lcom/vkontakte/android/api/NewsfeedGetComments;-><init>(Ljava/lang/String;I)V

    .line 413
    new-instance v4, Lcom/vkontakte/android/NewsView$7;

    invoke-direct {v4, p0, p1}, Lcom/vkontakte/android/NewsView$7;-><init>(Lcom/vkontakte/android/NewsView;Z)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/api/NewsfeedGetComments;->setCallback(Lcom/vkontakte/android/api/NewsfeedGetComments$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 454
    invoke-virtual {v3, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_2

    :cond_d
    move v5, v6

    .line 412
    goto :goto_5

    .line 456
    :cond_e
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache;->get(Landroid/content/Context;)[Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    .line 457
    .restart local v0    # "e":[Lcom/vkontakte/android/NewsEntry;
    array-length v3, v0

    if-gt v3, v5, :cond_10

    .line 458
    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/NewsView;->onDataLoaded([Lcom/vkontakte/android/NewsEntry;Z)V

    .line 465
    :cond_f
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache;->getUpdateTime(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    goto/16 :goto_2

    .line 460
    :cond_10
    new-array v2, v5, [Lcom/vkontakte/android/NewsEntry;

    .line 461
    .restart local v2    # "nn":[Lcom/vkontakte/android/NewsEntry;
    invoke-static {v0, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 462
    invoke-virtual {p0, v2, p1}, Lcom/vkontakte/android/NewsView;->onDataLoaded([Lcom/vkontakte/android/NewsEntry;Z)V

    .line 463
    const/16 v1, 0xa

    .restart local v1    # "i":I
    :goto_6
    array-length v3, v0

    if-ge v1, v3, :cond_f

    iget-object v3, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6
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

    .line 478
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v2

    .local v2, "firstVisible":I
    const/4 v5, 0x0

    .line 479
    .local v5, "numAdded":I
    iget-boolean v6, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    if-nez v6, :cond_0

    if-lez v2, :cond_7

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    .line 480
    :cond_0
    iget-boolean v6, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    if-nez v6, :cond_9

    .line 481
    if-eqz p2, :cond_1

    .line 482
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 484
    :cond_1
    array-length v10, p1

    move v6, v8

    :goto_1
    if-lt v6, v10, :cond_8

    .line 495
    :cond_2
    const/4 v4, -0x1

    .line 496
    .local v4, "itemOffset":I
    iget-boolean v6, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    if-eqz v6, :cond_3

    .line 497
    if-nez v2, :cond_b

    .line 498
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v6

    if-le v6, v12, :cond_3

    .line 500
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6, v12}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    .line 510
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->updateList()V

    .line 511
    const/4 v0, 0x1

    .line 512
    .local v0, "animate":Z
    if-eqz p2, :cond_5

    iget-boolean v6, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    if-eqz v6, :cond_5

    .line 513
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    add-int v10, v2, v5

    invoke-virtual {v6, v10, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelectionFromTop(II)V

    .line 514
    iget-boolean v6, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    if-eqz v6, :cond_c

    if-nez v2, :cond_4

    if-eqz v5, :cond_c

    :cond_4
    move v0, v8

    .line 515
    :goto_3
    iput-boolean v8, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    .line 517
    :cond_5
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->clearAnimation()V

    .line 518
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->clearAnimation()V

    .line 519
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 520
    array-length v6, p1

    if-lez v6, :cond_d

    :goto_4
    iput-boolean v7, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    .line 521
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-boolean v6, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    if-eqz v6, :cond_e

    move v6, v8

    :goto_5
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 522
    iput-boolean v8, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    .line 523
    if-eqz p2, :cond_6

    .line 524
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone(Z)V

    .line 526
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v10, 0x3e8

    div-long/2addr v6, v10

    long-to-int v6, v6

    iput v6, p0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    .line 528
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lez v7, :cond_f

    :goto_6
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 529
    iput-boolean v8, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    iput-boolean v8, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    .line 530
    return-void

    .end local v0    # "animate":Z
    .end local v4    # "itemOffset":I
    :cond_7
    move v6, v8

    .line 479
    goto/16 :goto_0

    .line 484
    :cond_8
    aget-object v1, p1, v6

    .line 485
    .local v1, "e":Lcom/vkontakte/android/NewsEntry;
    iget-object v11, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v11, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 484
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 487
    .end local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_9
    array-length v6, p1

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_7
    if-ltz v3, :cond_2

    .line 488
    aget-object v6, p1, v3

    invoke-direct {p0, v6}, Lcom/vkontakte/android/NewsView;->containsEntry(Lcom/vkontakte/android/NewsEntry;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 489
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    aget-object v10, p1, v3

    invoke-virtual {v6, v8, v10}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 490
    add-int/lit8 v5, v5, 0x1

    .line 487
    :cond_a
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    .line 504
    .end local v3    # "i":I
    .restart local v4    # "itemOffset":I
    :cond_b
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 505
    iget-object v6, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    goto/16 :goto_2

    .restart local v0    # "animate":Z
    :cond_c
    move v0, v7

    .line 514
    goto/16 :goto_3

    :cond_d
    move v7, v8

    .line 520
    goto :goto_4

    :cond_e
    move v6, v9

    .line 521
    goto :goto_5

    :cond_f
    move v9, v8

    .line 528
    goto :goto_6
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 858
    new-instance v0, Lcom/vkontakte/android/NewsView$12;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewsView$12;-><init>(Lcom/vkontakte/android/NewsView;)V

    .line 861
    const-wide/16 v1, 0x12c

    .line 858
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/NewsView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 862
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 831
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 832
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 865
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->activate()V

    .line 866
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    iget v1, p0, Lcom/vkontakte/android/NewsView;->viStart:I

    iget v2, p0, Lcom/vkontakte/android/NewsView;->viCount:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V

    .line 867
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

    .line 570
    iget v2, p0, Lcom/vkontakte/android/NewsView;->viStart:I

    if-ne v2, p2, :cond_1

    iget v2, p0, Lcom/vkontakte/android/NewsView;->viCount:I

    if-ne v2, p3, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->timer:Ljava/util/Timer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->timer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 572
    :cond_2
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/NewsView;->timer:Ljava/util/Timer;

    .line 573
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->timer:Ljava/util/Timer;

    new-instance v3, Lcom/vkontakte/android/NewsView$ScrollStopTimerTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/vkontakte/android/NewsView$ScrollStopTimerTask;-><init>(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsView$ScrollStopTimerTask;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 574
    iput p3, p0, Lcom/vkontakte/android/NewsView;->viCount:I

    .line 575
    iput p2, p0, Lcom/vkontakte/android/NewsView;->viStart:I

    .line 576
    add-int v2, p2, p3

    if-lt v2, p4, :cond_0

    iget-boolean v2, p0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    if-eqz v2, :cond_0

    :cond_3
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    iget-boolean v2, p0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    if-eqz v2, :cond_0

    .line 577
    iget-boolean v2, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    if-eqz v2, :cond_4

    .line 578
    iput-boolean v6, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    .line 579
    iput-boolean v7, p0, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    goto :goto_0

    .line 580
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 581
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [Lcom/vkontakte/android/NewsEntry;

    .line 582
    .local v1, "nn":[Lcom/vkontakte/android/NewsEntry;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_5

    .line 583
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 584
    invoke-virtual {p0, v1, v6}, Lcom/vkontakte/android/NewsView;->onDataLoaded([Lcom/vkontakte/android/NewsEntry;Z)V

    .line 585
    iput-boolean v7, p0, Lcom/vkontakte/android/NewsView;->preloading:Z

    .line 586
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    goto :goto_0

    .line 582
    :cond_5
    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsEntry;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 588
    .end local v0    # "i":I
    .end local v1    # "nn":[Lcom/vkontakte/android/NewsEntry;
    :cond_6
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 595
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 597
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->deselectAll()V

    .line 598
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->searchEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->searchEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->unfocusSearchField()V

    .line 601
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

    .line 871
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    .line 872
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 873
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 874
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 875
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 876
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 877
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 878
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 879
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 880
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 894
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_2
    :goto_0
    return-void

    .line 883
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 884
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 885
    .restart local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 886
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 887
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 888
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 889
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 890
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 891
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
    .line 234
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 235
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->updateList()V

    .line 236
    return-void
.end method

.method public refresh(Z)V
    .locals 1
    .param p1, "prepend"    # Z

    .prologue
    .line 852
    iput-boolean p1, p0, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    .line 853
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    .line 854
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refresh()V

    .line 855
    return-void
.end method

.method public reloadFromCache()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 263
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/cache/NewsfeedCache;->get(Landroid/content/Context;)[Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/NewsView;->onDataLoaded([Lcom/vkontakte/android/NewsEntry;Z)V

    .line 264
    return-void
.end method

.method public remove(II)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 239
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 246
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 240
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    if-eqz p1, :cond_2

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v2, p1, :cond_0

    :cond_2
    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-ne v2, p2, :cond_0

    .line 241
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->updateList()V

    goto :goto_0
.end method

.method public setCommentsMode(Z)V
    .locals 3
    .param p1, "comments"    # Z

    .prologue
    .line 541
    iput-boolean p1, p0, Lcom/vkontakte/android/NewsView;->displayComments:Z

    .line 542
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "comments_from"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 543
    return-void
.end method

.method protected setEmptyLabel(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 533
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 534
    return-void
.end method

.method protected setEmptyPadding(I)V
    .locals 4
    .param p1, "p"    # I

    .prologue
    const/high16 v3, 0x40e00000    # 7.0f

    .line 537
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 538
    return-void
.end method

.method public setSearchQuery(Ljava/lang/String;)V
    .locals 2
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x8

    .line 267
    iput-object p1, p0, Lcom/vkontakte/android/NewsView;->searchQuery:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->searchEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 269
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public unfocusSearchField()V
    .locals 3

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 284
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->searchEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 285
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->searchBar:Landroid/view/View;

    const v2, 0x7f060122

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 286
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
    .line 249
    iget-object v1, p0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 259
    :goto_0
    return-void

    .line 249
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 250
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    if-eqz p1, :cond_2

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v2, p1, :cond_0

    :cond_2
    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-ne v2, p2, :cond_0

    .line 251
    iput p3, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 252
    iput p4, v0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 254
    const/16 v1, 0x8

    invoke-virtual {v0, v1, p5}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 255
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsView;->updateList()V

    goto :goto_0
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 546
    new-instance v0, Lcom/vkontakte/android/NewsView$8;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewsView$8;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsView;->post(Ljava/lang/Runnable;)Z

    .line 553
    return-void
.end method

.method public updateList2()V
    .locals 1

    .prologue
    .line 556
    new-instance v0, Lcom/vkontakte/android/NewsView$9;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewsView$9;-><init>(Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsView;->post(Ljava/lang/Runnable;)Z

    .line 559
    return-void
.end method
