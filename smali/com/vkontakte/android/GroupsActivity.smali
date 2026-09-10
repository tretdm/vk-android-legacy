.class public Lcom/vkontakte/android/GroupsActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "GroupsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;,
        Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;

.field private events:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private groups:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

.field private groupsWrap:Landroid/widget/FrameLayout;

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private indexer:Lcom/vkontakte/android/SearchIndexer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkontakte/android/SearchIndexer",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private isSearch:Z

.field private listClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private localSearchQuery:Ljava/lang/String;

.field private localSearchResults:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private preloadedSearchResults:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private progress:Landroid/widget/ProgressBar;

.field private searchBar:Landroid/view/View;

.field private searchEmptyView:Landroid/widget/TextView;

.field private searchFooterView:Landroid/widget/FrameLayout;

.field protected searchLoading:Z

.field protected searchMoreAvailable:Z

.field protected searchPreloadOnReady:Z

.field protected searchPreloading:Z

.field private searchProgress:Landroid/widget/ProgressBar;

.field private searchQuery:Ljava/lang/String;

.field private searchResults:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->groups:Ljava/util/Vector;

    .line 50
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->events:Ljava/util/Vector;

    .line 51
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->searchResults:Ljava/util/Vector;

    .line 52
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->preloadedSearchResults:Ljava/util/Vector;

    .line 53
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->localSearchResults:Ljava/util/Vector;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/GroupsActivity;->isSearch:Z

    .line 63
    iput-boolean v1, p0, Lcom/vkontakte/android/GroupsActivity;->searchLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/GroupsActivity;->searchMoreAvailable:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/GroupsActivity;->searchPreloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/GroupsActivity;->searchPreloadOnReady:Z

    .line 66
    new-instance v0, Lcom/vkontakte/android/SearchIndexer;

    invoke-direct {v0}, Lcom/vkontakte/android/SearchIndexer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->indexer:Lcom/vkontakte/android/SearchIndexer;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->localSearchQuery:Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/vkontakte/android/GroupsActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/GroupsActivity$1;-><init>(Lcom/vkontakte/android/GroupsActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->listClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/ui/RefreshableListView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->events:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/GroupsActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->searchFooterView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->preloadedSearchResults:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/GroupsActivity;)V
    .locals 0

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/vkontakte/android/GroupsActivity;->updateList()V

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/GroupsActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/vkontakte/android/GroupsActivity;->searchQuery:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/GroupsActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->searchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/GroupsActivity;)V
    .locals 0

    .prologue
    .line 461
    invoke-direct {p0}, Lcom/vkontakte/android/GroupsActivity;->loadSearch()V

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/GroupsActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/SearchIndexer;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->indexer:Lcom/vkontakte/android/SearchIndexer;

    return-object v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/GroupsActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/GroupsActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->searchEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->groups:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/GroupsActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->searchProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->localSearchResults:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->searchResults:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/GroupsActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->localSearchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->adapter:Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/GroupsActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->searchBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/GroupsActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 527
    invoke-direct {p0, p1}, Lcom/vkontakte/android/GroupsActivity;->updateLocalSearch(Ljava/lang/String;)V

    return-void
.end method

.method private createEmptyView(ILjava/lang/String;)Landroid/widget/TextView;
    .locals 4
    .param p1, "stringID"    # I
    .param p2, "fmtArg"    # Ljava/lang/String;

    .prologue
    .line 335
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 336
    .local v0, "text":Landroid/widget/TextView;
    const v1, -0x888889

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 337
    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 338
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 339
    if-nez p2, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 342
    :goto_0
    invoke-static {v0}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 343
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    return-object v0

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private createListView()Lcom/vkontakte/android/ui/RefreshableListView;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 312
    new-instance v0, Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;)V

    .line 313
    .local v0, "list":Lcom/vkontakte/android/ui/RefreshableListView;
    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 314
    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 316
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setDividerHeight(I)V

    .line 317
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 319
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setRefreshEnabled(Z)V

    .line 320
    new-instance v1, Lcom/vkontakte/android/GroupsActivity$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/GroupsActivity$7;-><init>(Lcom/vkontakte/android/GroupsActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 331
    return-object v0
.end method

.method private deselectAll()V
    .locals 3

    .prologue
    .line 520
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 525
    return-void

    .line 521
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 522
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/vkontakte/android/HLLinearLayout;

    if-eqz v2, :cond_1

    .line 523
    check-cast v1, Lcom/vkontakte/android/HLLinearLayout;

    .end local v1    # "v":Landroid/view/View;
    invoke-virtual {v1}, Lcom/vkontakte/android/HLLinearLayout;->deselect()V

    .line 520
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadList()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 348
    new-instance v2, Lcom/vkontakte/android/api/GroupsGet;

    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "uid"

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/vkontakte/android/api/GroupsGet;-><init>(I)V

    .line 349
    new-instance v3, Lcom/vkontakte/android/GroupsActivity$8;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/GroupsActivity$8;-><init>(Lcom/vkontakte/android/GroupsActivity;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/api/GroupsGet;->setCallback(Lcom/vkontakte/android/api/GroupsGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 419
    invoke-virtual {v2, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 421
    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "uid"

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "uid"

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-ne v2, v3, :cond_3

    invoke-static {p0}, Lcom/vkontakte/android/cache/GroupsCache;->hasEntries(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 422
    :cond_0
    invoke-static {p0}, Lcom/vkontakte/android/cache/GroupsCache;->get(Landroid/content/Context;)Ljava/util/Vector;

    move-result-object v0

    .line 437
    .local v0, "cache":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Group;>;"
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 446
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity;->events:Ljava/util/Vector;

    new-instance v3, Lcom/vkontakte/android/GroupsActivity$9;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/GroupsActivity$9;-><init>(Lcom/vkontakte/android/GroupsActivity;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 451
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity;->events:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-le v2, v8, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity;->events:Ljava/util/Vector;

    invoke-virtual {v2, v8}, Ljava/util/Vector;->setSize(I)V

    .line 452
    :cond_2
    invoke-direct {p0}, Lcom/vkontakte/android/GroupsActivity;->updateList()V

    .line 453
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity;->progress:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 455
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setVisibility(I)V

    .line 456
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity;->indexer:Lcom/vkontakte/android/SearchIndexer;

    iget-object v3, p0, Lcom/vkontakte/android/GroupsActivity;->groups:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/SearchIndexer;->bind(Ljava/util/List;)V

    .line 457
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity;->indexer:Lcom/vkontakte/android/SearchIndexer;

    invoke-virtual {v2}, Lcom/vkontakte/android/SearchIndexer;->build()V

    .line 459
    .end local v0    # "cache":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Group;>;"
    :cond_3
    return-void

    .line 437
    .restart local v0    # "cache":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Group;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/Group;

    .line 438
    .local v1, "g":Lcom/vkontakte/android/api/Group;
    iget-object v3, p0, Lcom/vkontakte/android/GroupsActivity;->groups:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 439
    iget v3, v1, Lcom/vkontakte/android/api/Group;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 440
    iget v3, v1, Lcom/vkontakte/android/api/Group;->startTime:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    if-le v3, v4, :cond_1

    .line 441
    iget-object v3, p0, Lcom/vkontakte/android/GroupsActivity;->events:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadSearch()V
    .locals 4

    .prologue
    .line 462
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->searchEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->searchResults:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 464
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/GroupsActivity;->searchLoading:Z

    .line 465
    new-instance v1, Lcom/vkontakte/android/api/GroupsSearch;

    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity;->searchQuery:Ljava/lang/String;

    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->searchResults:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    iget-boolean v0, p0, Lcom/vkontakte/android/GroupsActivity;->searchPreloading:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x32

    :goto_0
    invoke-direct {v1, v2, v3, v0}, Lcom/vkontakte/android/api/GroupsSearch;-><init>(Ljava/lang/String;II)V

    .line 466
    new-instance v0, Lcom/vkontakte/android/GroupsActivity$10;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/GroupsActivity$10;-><init>(Lcom/vkontakte/android/GroupsActivity;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/GroupsSearch;->setCallback(Lcom/vkontakte/android/api/GroupsSearch$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 509
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 510
    return-void

    .line 465
    :cond_1
    const/16 v0, 0x64

    goto :goto_0
.end method

.method private updateList()V
    .locals 4

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 513
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity;->adapter:Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;

    invoke-virtual {v2}, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->notifyDataSetChanged()V

    .line 514
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity;->searchEmptyView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/GroupsActivity;->adapter:Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;

    invoke-virtual {v3}, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->getCount()I

    move-result v3

    if-gtz v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getVisibility()I

    move-result v3

    if-ne v3, v0, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity;->adapter:Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;

    invoke-virtual {v2}, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    .line 517
    return-void

    :cond_2
    move v0, v1

    .line 514
    goto :goto_0
.end method

.method private updateLocalSearch(Ljava/lang/String;)V
    .locals 3
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 528
    iput-object p1, p0, Lcom/vkontakte/android/GroupsActivity;->localSearchQuery:Ljava/lang/String;

    .line 529
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->localSearchResults:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 530
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->localSearchResults:Ljava/util/Vector;

    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity;->indexer:Lcom/vkontakte/android/SearchIndexer;

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/SearchIndexer;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->searchResults:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 533
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->preloadedSearchResults:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 534
    iput-boolean v2, p0, Lcom/vkontakte/android/GroupsActivity;->searchMoreAvailable:Z

    .line 535
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->searchFooterView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 536
    invoke-direct {p0}, Lcom/vkontakte/android/GroupsActivity;->updateList()V

    .line 537
    return-void
.end method


# virtual methods
.method public focusSearchField()V
    .locals 3

    .prologue
    const v2, 0x7f06006a

    .line 298
    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity;->searchBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 299
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/GroupsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 300
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity;->searchBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 301
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, -0x2

    const/high16 v11, 0x41f00000    # 30.0f

    const/high16 v10, 0x40e00000    # 7.0f

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 81
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "uid"

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    if-ne v5, v7, :cond_1

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/vkontakte/android/GroupsActivity;->isSearch:Z

    .line 86
    invoke-direct {p0}, Lcom/vkontakte/android/GroupsActivity;->createListView()Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 87
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->setVisibility(I)V

    .line 88
    iget-boolean v5, p0, Lcom/vkontakte/android/GroupsActivity;->isSearch:Z

    if-eqz v5, :cond_0

    .line 89
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->searchFooterView:Landroid/widget/FrameLayout;

    .line 90
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 91
    .local v1, "pb":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f020206

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-direct {v0, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 93
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 94
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 96
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->searchFooterView:Landroid/widget/FrameLayout;

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-virtual {v5, v6, v7, v6, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 97
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->searchFooterView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 99
    const v5, 0x7f030037

    invoke-static {p0, v5, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->searchBar:Landroid/view/View;

    .line 104
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v7, p0, Lcom/vkontakte/android/GroupsActivity;->searchBar:Landroid/view/View;

    invoke-virtual {v5, v7, v9, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 105
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v7, p0, Lcom/vkontakte/android/GroupsActivity;->searchFooterView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v7, v9, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 107
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->searchBar:Landroid/view/View;

    const v6, 0x7f06006a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 108
    .local v3, "searchEdit":Landroid/widget/EditText;
    const v5, 0x7f0901c4

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 110
    new-instance v5, Lcom/vkontakte/android/GroupsActivity$2;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/GroupsActivity$2;-><init>(Lcom/vkontakte/android/GroupsActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 126
    new-instance v5, Lcom/vkontakte/android/GroupsActivity$3;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/GroupsActivity$3;-><init>(Lcom/vkontakte/android/GroupsActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 136
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->searchBar:Landroid/view/View;

    const v6, 0x7f060123

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/GroupsActivity$4;

    invoke-direct {v6, p0, v3}, Lcom/vkontakte/android/GroupsActivity$4;-><init>(Lcom/vkontakte/android/GroupsActivity;Landroid/widget/EditText;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    new-instance v5, Lcom/vkontakte/android/GroupsActivity$5;

    invoke-direct {v5, p0, v3}, Lcom/vkontakte/android/GroupsActivity$5;-><init>(Lcom/vkontakte/android/GroupsActivity;Landroid/widget/EditText;)V

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 190
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "pb":Landroid/widget/ProgressBar;
    .end local v3    # "searchEdit":Landroid/widget/EditText;
    :cond_0
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v6, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;-><init>(Lcom/vkontakte/android/GroupsActivity;)V

    iput-object v6, p0, Lcom/vkontakte/android/GroupsActivity;->adapter:Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 193
    new-instance v5, Landroid/widget/ProgressBar;

    invoke-direct {v5, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->progress:Landroid/widget/ProgressBar;

    .line 194
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020206

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 196
    .local v2, "pparams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 197
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    new-instance v5, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v6, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;

    invoke-direct {v6, p0, v9}, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;-><init>(Lcom/vkontakte/android/GroupsActivity;Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;)V

    iget-object v7, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v8, Lcom/vkontakte/android/GroupsActivity$6;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/GroupsActivity$6;-><init>(Lcom/vkontakte/android/GroupsActivity;)V

    invoke-direct {v5, v6, v7, v8}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/ListView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 275
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->groupsWrap:Landroid/widget/FrameLayout;

    .line 276
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->groupsWrap:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 277
    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "uid"

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    if-ne v5, v6, :cond_2

    .line 278
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->groupsWrap:Landroid/widget/FrameLayout;

    const v6, 0x7f09016c

    invoke-direct {p0, v6, v9}, Lcom/vkontakte/android/GroupsActivity;->createEmptyView(ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    .local v4, "tView":Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 282
    :goto_1
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->groupsWrap:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkontakte/android/GroupsActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 283
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->groupsWrap:Landroid/widget/FrameLayout;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 284
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->groupsWrap:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/GroupsActivity;->setContentView(Landroid/view/View;)V

    .line 285
    iput-object v4, p0, Lcom/vkontakte/android/GroupsActivity;->searchEmptyView:Landroid/widget/TextView;

    .line 287
    invoke-direct {p0}, Lcom/vkontakte/android/GroupsActivity;->loadList()V

    .line 288
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->indexer:Lcom/vkontakte/android/SearchIndexer;

    iget-object v6, p0, Lcom/vkontakte/android/GroupsActivity;->groups:Ljava/util/Vector;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/SearchIndexer;->bind(Ljava/util/List;)V

    .line 289
    return-void

    .end local v2    # "pparams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "tView":Landroid/widget/TextView;
    :cond_1
    move v5, v6

    .line 83
    goto/16 :goto_0

    .line 280
    .restart local v2    # "pparams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->groupsWrap:Landroid/widget/FrameLayout;

    const v6, 0x7f09016f

    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "name0"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/vkontakte/android/GroupsActivity;->createEmptyView(ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    .restart local v4    # "tView":Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 712
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onPause()V

    .line 713
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v1, Lcom/vkontakte/android/GroupsActivity$11;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/GroupsActivity$11;-><init>(Lcom/vkontakte/android/GroupsActivity;)V

    .line 716
    const-wide/16 v2, 0x12c

    .line 713
    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 717
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 720
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onResume()V

    .line 721
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 722
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 723
    return-void
.end method

.method public unfocusSearchField()V
    .locals 3

    .prologue
    .line 292
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/GroupsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 293
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity;->searchBar:Landroid/view/View;

    const v2, 0x7f06006a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 294
    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity;->searchBar:Landroid/view/View;

    const v2, 0x7f060122

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 295
    return-void
.end method
