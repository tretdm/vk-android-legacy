.class public Lcom/vkontakte/android/GroupsView;
.super Landroid/widget/FrameLayout;
.source "GroupsView.java"

# interfaces
.implements Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/GroupsView$FriendsAdapter;,
        Lcom/vkontakte/android/GroupsView$FriendsPhotosAdapter;,
        Lcom/vkontakte/android/GroupsView$Section;,
        Lcom/vkontakte/android/GroupsView$SelectionListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkontakte/android/GroupsView$FriendsAdapter;

.field private currentSearchReq:Lcom/vkontakte/android/APIRequest;

.field private emptyView:Landroid/widget/TextView;

.field private footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

.field private groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

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

.field private list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

.field private moreAvailable:Z

.field private preloadOnReady:Z

.field private preloadedSearch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private progress:Landroid/widget/ProgressBar;

.field private searchQuery:Ljava/lang/String;

.field private sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/GroupsView$Section;",
            ">;"
        }
    .end annotation
.end field

.field private selListener:Lcom/vkontakte/android/GroupsView$SelectionListener;

.field private showHints:Z

.field private showOnline:Z

.field private useSections:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsView;->sections:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsView;->groups:Ljava/util/ArrayList;

    .line 40
    iput-boolean v2, p0, Lcom/vkontakte/android/GroupsView;->showOnline:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/GroupsView;->showHints:Z

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/GroupsView;->searchQuery:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsView;->preloadedSearch:Ljava/util/ArrayList;

    .line 46
    iput-boolean v2, p0, Lcom/vkontakte/android/GroupsView;->preloadOnReady:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/GroupsView;->moreAvailable:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/GroupsView;->useSections:Z

    .line 52
    invoke-direct {p0}, Lcom/vkontakte/android/GroupsView;->init()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsView;->sections:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsView;->groups:Ljava/util/ArrayList;

    .line 40
    iput-boolean v2, p0, Lcom/vkontakte/android/GroupsView;->showOnline:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/GroupsView;->showHints:Z

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/GroupsView;->searchQuery:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsView;->preloadedSearch:Ljava/util/ArrayList;

    .line 46
    iput-boolean v2, p0, Lcom/vkontakte/android/GroupsView;->preloadOnReady:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/GroupsView;->moreAvailable:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/GroupsView;->useSections:Z

    .line 57
    invoke-direct {p0}, Lcom/vkontakte/android/GroupsView;->init()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsView;->sections:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsView;->groups:Ljava/util/ArrayList;

    .line 40
    iput-boolean v2, p0, Lcom/vkontakte/android/GroupsView;->showOnline:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/GroupsView;->showHints:Z

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/GroupsView;->searchQuery:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsView;->preloadedSearch:Ljava/util/ArrayList;

    .line 46
    iput-boolean v2, p0, Lcom/vkontakte/android/GroupsView;->preloadOnReady:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/GroupsView;->moreAvailable:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/GroupsView;->useSections:Z

    .line 62
    invoke-direct {p0}, Lcom/vkontakte/android/GroupsView;->init()V

    .line 63
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/GroupsView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->sections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/GroupsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/GroupsView;Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/vkontakte/android/GroupsView;->preloadOnReady:Z

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/GroupsView;Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/vkontakte/android/GroupsView;->moreAvailable:Z

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/GroupsView;)Lcom/vkontakte/android/ui/LoadMoreFooterView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/GroupsView;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/vkontakte/android/GroupsView;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/GroupsView;)Lcom/vkontakte/android/ui/PinnedHeaderListView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/GroupsView;)Lcom/vkontakte/android/GroupsView$FriendsAdapter;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->adapter:Lcom/vkontakte/android/GroupsView$FriendsAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/GroupsView;)Lcom/vkontakte/android/GroupsView$SelectionListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->selListener:Lcom/vkontakte/android/GroupsView$SelectionListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/GroupsView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->groups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/GroupsView;)V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/vkontakte/android/GroupsView;->loadMore()V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/GroupsView;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/vkontakte/android/GroupsView;->preloadOnReady:Z

    return v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/GroupsView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->preloadedSearch:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/GroupsView;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/vkontakte/android/GroupsView;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const v5, 0x7f0b000f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 66
    new-instance v0, Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsView;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    .line 67
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/GroupsView;->setBackgroundColor(I)V

    .line 68
    new-instance v0, Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    iget-object v1, p0, Lcom/vkontakte/android/GroupsView;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v0, v1, v4, v3}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    new-instance v1, Lcom/vkontakte/android/GroupsView$FriendsAdapter;

    invoke-direct {v1, p0, v4}, Lcom/vkontakte/android/GroupsView$FriendsAdapter;-><init>(Lcom/vkontakte/android/GroupsView;Lcom/vkontakte/android/GroupsView$FriendsAdapter;)V

    iput-object v1, p0, Lcom/vkontakte/android/GroupsView;->adapter:Lcom/vkontakte/android/GroupsView$FriendsAdapter;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setSelector(I)V

    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setPadding(IIII)V

    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setScrollBarStyle(I)V

    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x1a1a1b

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setDividerHeight(I)V

    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setHeaderDividersEnabled(Z)V

    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/GroupsView;->addView(Landroid/view/View;)V

    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    new-instance v1, Lcom/vkontakte/android/GroupsView$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/GroupsView$1;-><init>(Lcom/vkontakte/android/GroupsView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsView;->emptyView:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->emptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070078

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 105
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->emptyView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 106
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->emptyView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/GroupsView;->addView(Landroid/view/View;)V

    .line 107
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    iget-object v1, p0, Lcom/vkontakte/android/GroupsView;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setEmptyView(Landroid/view/View;)V

    .line 109
    new-instance v0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v1, Lcom/vkontakte/android/GroupsView$FriendsPhotosAdapter;

    invoke-direct {v1, p0, v4}, Lcom/vkontakte/android/GroupsView$FriendsPhotosAdapter;-><init>(Lcom/vkontakte/android/GroupsView;Lcom/vkontakte/android/GroupsView$FriendsPhotosAdapter;)V

    iget-object v2, p0, Lcom/vkontakte/android/GroupsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    new-instance v3, Lcom/vkontakte/android/GroupsView$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/GroupsView$2;-><init>(Lcom/vkontakte/android/GroupsView;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 127
    new-instance v0, Lcom/vkontakte/android/SearchIndexer;

    invoke-direct {v0}, Lcom/vkontakte/android/SearchIndexer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsView;->indexer:Lcom/vkontakte/android/SearchIndexer;

    .line 128
    return-void
.end method

.method private loadMore()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 216
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->searchQuery:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    if-nez v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->preloadedSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/GroupsView$Section;

    iget-object v0, v0, Lcom/vkontakte/android/GroupsView$Section;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/GroupsView;->preloadedSearch:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 219
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->preloadedSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 220
    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsView;->updateList()V

    .line 224
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/vkontakte/android/GroupsView;->moreAvailable:Z

    if-nez v0, :cond_3

    .line 261
    :cond_1
    :goto_1
    return-void

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/GroupsView$Section;

    iget-object v0, v0, Lcom/vkontakte/android/GroupsView$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 222
    iput-boolean v4, p0, Lcom/vkontakte/android/GroupsView;->preloadOnReady:Z

    goto :goto_0

    .line 225
    :cond_3
    new-instance v1, Lcom/vkontakte/android/api/GroupsSearch;

    iget-object v2, p0, Lcom/vkontakte/android/GroupsView;->searchQuery:Ljava/lang/String;

    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/GroupsView$Section;

    iget-object v0, v0, Lcom/vkontakte/android/GroupsView$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/GroupsView$Section;

    iget-object v0, v0, Lcom/vkontakte/android/GroupsView$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x64

    :goto_2
    invoke-direct {v1, v2, v3, v0}, Lcom/vkontakte/android/api/GroupsSearch;-><init>(Ljava/lang/String;II)V

    .line 226
    new-instance v0, Lcom/vkontakte/android/GroupsView$4;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/GroupsView$4;-><init>(Lcom/vkontakte/android/GroupsView;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/GroupsSearch;->setCallback(Lcom/vkontakte/android/api/GroupsSearch$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 225
    iput-object v0, p0, Lcom/vkontakte/android/GroupsView;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_1

    :cond_4
    const/16 v0, 0x32

    goto :goto_2
.end method


# virtual methods
.method public createSections()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 186
    iget-boolean v5, p0, Lcom/vkontakte/android/GroupsView;->showHints:Z

    if-eqz v5, :cond_4

    .line 187
    iget-object v5, p0, Lcom/vkontakte/android/GroupsView;->groups:Ljava/util/ArrayList;

    new-instance v6, Lcom/vkontakte/android/GroupsView$3;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/GroupsView$3;-><init>(Lcom/vkontakte/android/GroupsView;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v2, v5

    .line 194
    .local v2, "now":I
    new-instance v0, Lcom/vkontakte/android/GroupsView$Section;

    invoke-direct {v0, p0, v9}, Lcom/vkontakte/android/GroupsView$Section;-><init>(Lcom/vkontakte/android/GroupsView;Lcom/vkontakte/android/GroupsView$Section;)V

    .line 195
    .local v0, "future":Lcom/vkontakte/android/GroupsView$Section;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/vkontakte/android/GroupsView$Section;->list:Ljava/util/ArrayList;

    .line 196
    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060159

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/vkontakte/android/GroupsView$Section;->title:Ljava/lang/String;

    .line 197
    new-instance v3, Lcom/vkontakte/android/GroupsView$Section;

    invoke-direct {v3, p0, v9}, Lcom/vkontakte/android/GroupsView$Section;-><init>(Lcom/vkontakte/android/GroupsView;Lcom/vkontakte/android/GroupsView$Section;)V

    .line 198
    .local v3, "past":Lcom/vkontakte/android/GroupsView$Section;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lcom/vkontakte/android/GroupsView$Section;->list:Ljava/util/ArrayList;

    .line 199
    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0601be

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/GroupsView$Section;->title:Ljava/lang/String;

    .line 200
    iget-object v5, p0, Lcom/vkontakte/android/GroupsView;->groups:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 204
    iget-object v5, p0, Lcom/vkontakte/android/GroupsView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 205
    iget-object v5, v0, Lcom/vkontakte/android/GroupsView$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/vkontakte/android/GroupsView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_0
    iget-object v5, v3, Lcom/vkontakte/android/GroupsView$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/vkontakte/android/GroupsView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .end local v0    # "future":Lcom/vkontakte/android/GroupsView$Section;
    .end local v2    # "now":I
    .end local v3    # "past":Lcom/vkontakte/android/GroupsView$Section;
    :cond_1
    :goto_1
    return-void

    .line 200
    .restart local v0    # "future":Lcom/vkontakte/android/GroupsView$Section;
    .restart local v2    # "now":I
    .restart local v3    # "past":Lcom/vkontakte/android/GroupsView$Section;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/Group;

    .line 201
    .local v1, "g":Lcom/vkontakte/android/api/Group;
    iget v6, v1, Lcom/vkontakte/android/api/Group;->startTime:I

    if-le v6, v2, :cond_3

    iget-object v6, v0, Lcom/vkontakte/android/GroupsView$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    :cond_3
    iget-object v6, v3, Lcom/vkontakte/android/GroupsView$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    .end local v0    # "future":Lcom/vkontakte/android/GroupsView$Section;
    .end local v1    # "g":Lcom/vkontakte/android/api/Group;
    .end local v2    # "now":I
    .end local v3    # "past":Lcom/vkontakte/android/GroupsView$Section;
    :cond_4
    new-instance v4, Lcom/vkontakte/android/GroupsView$Section;

    invoke-direct {v4, p0, v9}, Lcom/vkontakte/android/GroupsView$Section;-><init>(Lcom/vkontakte/android/GroupsView;Lcom/vkontakte/android/GroupsView$Section;)V

    .line 209
    .local v4, "s":Lcom/vkontakte/android/GroupsView$Section;
    iget-object v5, p0, Lcom/vkontakte/android/GroupsView;->groups:Ljava/util/ArrayList;

    iput-object v5, v4, Lcom/vkontakte/android/GroupsView$Section;->list:Ljava/util/ArrayList;

    .line 210
    iget-object v5, p0, Lcom/vkontakte/android/GroupsView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 211
    iget-object v5, p0, Lcom/vkontakte/android/GroupsView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 438
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkontakte/android/data/Groups;->reload(Z)V

    .line 422
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 442
    return-void
.end method

.method public onScrolled(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 434
    return-void
.end method

.method public setData(Ljava/util/ArrayList;Z)V
    .locals 2
    .param p2, "showHints"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/Group;>;"
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 133
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 134
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->indexer:Lcom/vkontakte/android/SearchIndexer;

    iget-object v1, p0, Lcom/vkontakte/android/GroupsView;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/SearchIndexer;->bind(Ljava/util/List;)V

    .line 135
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->indexer:Lcom/vkontakte/android/SearchIndexer;

    invoke-virtual {v0}, Lcom/vkontakte/android/SearchIndexer;->build()V

    .line 136
    iput-boolean p2, p0, Lcom/vkontakte/android/GroupsView;->showHints:Z

    .line 137
    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsView;->createSections()V

    .line 138
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/GroupsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->refreshDone()V

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsView;->updateList()V

    .line 140
    iget-object v1, p0, Lcom/vkontakte/android/GroupsView;->emptyView:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const v0, 0x7f060117

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 141
    return-void

    .line 140
    :cond_1
    const v0, 0x7f060116

    goto :goto_0
.end method

.method public setSelectionListener(Lcom/vkontakte/android/GroupsView$SelectionListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/GroupsView$SelectionListener;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/vkontakte/android/GroupsView;->selListener:Lcom/vkontakte/android/GroupsView$SelectionListener;

    .line 278
    return-void
.end method

.method public setUserSections(Z)V
    .locals 0
    .param p1, "use"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/vkontakte/android/GroupsView;->useSections:Z

    .line 182
    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsView;->createSections()V

    .line 183
    return-void
.end method

.method public updateFilter(Ljava/lang/String;)V
    .locals 8
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 144
    iget-object v3, p0, Lcom/vkontakte/android/GroupsView;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/vkontakte/android/GroupsView;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v3}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 146
    iput-object v7, p0, Lcom/vkontakte/android/GroupsView;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    .line 148
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/GroupsView;->preloadedSearch:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 149
    iput-boolean v4, p0, Lcom/vkontakte/android/GroupsView;->moreAvailable:Z

    .line 150
    iput-boolean v6, p0, Lcom/vkontakte/android/GroupsView;->preloadOnReady:Z

    .line 151
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 152
    :cond_1
    iput-object v7, p0, Lcom/vkontakte/android/GroupsView;->searchQuery:Ljava/lang/String;

    .line 153
    iget-object v3, p0, Lcom/vkontakte/android/GroupsView;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v3, v6}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 154
    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsView;->createSections()V

    .line 155
    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsView;->updateList()V

    .line 156
    iget-object v3, p0, Lcom/vkontakte/android/GroupsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v3, v6}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setSelection(I)V

    .line 178
    :goto_0
    return-void

    .line 159
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/GroupsView;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 160
    iput-object p1, p0, Lcom/vkontakte/android/GroupsView;->searchQuery:Ljava/lang/String;

    .line 161
    iget-object v3, p0, Lcom/vkontakte/android/GroupsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v3, v6}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setFastScrollEnabled(Z)V

    .line 162
    iget-object v3, p0, Lcom/vkontakte/android/GroupsView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 163
    new-instance v2, Lcom/vkontakte/android/GroupsView$Section;

    invoke-direct {v2, p0, v7}, Lcom/vkontakte/android/GroupsView$Section;-><init>(Lcom/vkontakte/android/GroupsView;Lcom/vkontakte/android/GroupsView$Section;)V

    .line 164
    .local v2, "search":Lcom/vkontakte/android/GroupsView$Section;
    iget-object v3, p0, Lcom/vkontakte/android/GroupsView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vkontakte/android/GroupsView$Section;->title:Ljava/lang/String;

    .line 166
    iget-object v3, p0, Lcom/vkontakte/android/GroupsView;->indexer:Lcom/vkontakte/android/SearchIndexer;

    invoke-virtual {v3, p1}, Lcom/vkontakte/android/SearchIndexer;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 167
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/api/Group;>;"
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "searchResults="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/vkontakte/android/GroupsView$Section;->list:Ljava/util/ArrayList;

    .line 169
    iget-object v3, v2, Lcom/vkontakte/android/GroupsView$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 171
    new-instance v0, Lcom/vkontakte/android/GroupsView$Section;

    invoke-direct {v0, p0, v7}, Lcom/vkontakte/android/GroupsView$Section;-><init>(Lcom/vkontakte/android/GroupsView;Lcom/vkontakte/android/GroupsView$Section;)V

    .line 172
    .local v0, "gsearch":Lcom/vkontakte/android/GroupsView$Section;
    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vkontakte/android/GroupsView$Section;->title:Ljava/lang/String;

    .line 173
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/vkontakte/android/GroupsView$Section;->list:Ljava/util/ArrayList;

    .line 174
    iget-object v3, p0, Lcom/vkontakte/android/GroupsView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsView;->updateList()V

    .line 177
    iget-object v3, p0, Lcom/vkontakte/android/GroupsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v3, v6}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setSelection(I)V

    goto :goto_0
.end method

.method public updateList()V
    .locals 3

    .prologue
    .line 264
    new-instance v0, Lcom/vkontakte/android/GroupsView$5;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/GroupsView$5;-><init>(Lcom/vkontakte/android/GroupsView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/GroupsView;->post(Ljava/lang/Runnable;)Z

    .line 269
    new-instance v0, Lcom/vkontakte/android/GroupsView$6;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/GroupsView$6;-><init>(Lcom/vkontakte/android/GroupsView;)V

    .line 273
    const-wide/16 v1, 0x64

    .line 269
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/GroupsView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 274
    return-void
.end method
