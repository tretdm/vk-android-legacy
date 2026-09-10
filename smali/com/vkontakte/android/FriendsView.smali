.class public Lcom/vkontakte/android/FriendsView;
.super Landroid/widget/FrameLayout;
.source "FriendsView.java"

# interfaces
.implements Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/FriendsView$FriendsAdapter;,
        Lcom/vkontakte/android/FriendsView$FriendsPhotosAdapter;,
        Lcom/vkontakte/android/FriendsView$RefreshListener;,
        Lcom/vkontakte/android/FriendsView$Section;,
        Lcom/vkontakte/android/FriendsView$SelectionListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkontakte/android/FriendsView$FriendsAdapter;

.field private currentSearchReq:Lcom/vkontakte/android/APIRequest;

.field private emptyView:Landroid/widget/TextView;

.field private footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private indexer:Lcom/vkontakte/android/SearchIndexer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkontakte/android/SearchIndexer",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

.field private moreAvailable:Z

.field private multiSelect:Z

.field private preloadOnReady:Z

.field private preloadedSearch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private progress:Landroid/widget/ProgressBar;

.field private refreshListener:Lcom/vkontakte/android/FriendsView$RefreshListener;

.field private searchQuery:Ljava/lang/String;

.field private sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/FriendsView$Section;",
            ">;"
        }
    .end annotation
.end field

.field private selListener:Lcom/vkontakte/android/FriendsView$SelectionListener;

.field private selected:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private showHints:Z

.field private showOnline:Z

.field private useSections:Z

.field private users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendsView;->sections:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendsView;->users:Ljava/util/ArrayList;

    .line 37
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendsView;->showOnline:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/FriendsView;->showHints:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/FriendsView;->searchQuery:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendsView;->preloadedSearch:Ljava/util/ArrayList;

    .line 43
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendsView;->preloadOnReady:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/FriendsView;->moreAvailable:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/FriendsView;->useSections:Z

    .line 45
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendsView;->multiSelect:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendsView;->selected:Ljava/util/ArrayList;

    .line 52
    invoke-direct {p0}, Lcom/vkontakte/android/FriendsView;->init()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendsView;->sections:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendsView;->users:Ljava/util/ArrayList;

    .line 37
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendsView;->showOnline:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/FriendsView;->showHints:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/FriendsView;->searchQuery:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendsView;->preloadedSearch:Ljava/util/ArrayList;

    .line 43
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendsView;->preloadOnReady:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/FriendsView;->moreAvailable:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/FriendsView;->useSections:Z

    .line 45
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendsView;->multiSelect:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendsView;->selected:Ljava/util/ArrayList;

    .line 57
    invoke-direct {p0}, Lcom/vkontakte/android/FriendsView;->init()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendsView;->sections:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendsView;->users:Ljava/util/ArrayList;

    .line 37
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendsView;->showOnline:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/FriendsView;->showHints:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/FriendsView;->searchQuery:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendsView;->preloadedSearch:Ljava/util/ArrayList;

    .line 43
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendsView;->preloadOnReady:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/FriendsView;->moreAvailable:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/FriendsView;->useSections:Z

    .line 45
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendsView;->multiSelect:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendsView;->selected:Ljava/util/ArrayList;

    .line 62
    invoke-direct {p0}, Lcom/vkontakte/android/FriendsView;->init()V

    .line 63
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/FriendsView;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/vkontakte/android/FriendsView;->multiSelect:Z

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/FriendsView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->sections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/FriendsView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->preloadedSearch:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/FriendsView;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/vkontakte/android/FriendsView;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/FriendsView;Z)V
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/vkontakte/android/FriendsView;->preloadOnReady:Z

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/FriendsView;Z)V
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/vkontakte/android/FriendsView;->moreAvailable:Z

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/FriendsView;)Lcom/vkontakte/android/ui/LoadMoreFooterView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/FriendsView;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/vkontakte/android/FriendsView;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/FriendsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/FriendsView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->selected:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/FriendsView;)Lcom/vkontakte/android/ui/PinnedHeaderListView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/FriendsView;)Lcom/vkontakte/android/FriendsView$FriendsAdapter;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->adapter:Lcom/vkontakte/android/FriendsView$FriendsAdapter;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/FriendsView;)Lcom/vkontakte/android/FriendsView$SelectionListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->selListener:Lcom/vkontakte/android/FriendsView$SelectionListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/FriendsView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->users:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/FriendsView;)V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/vkontakte/android/FriendsView;->loadMore()V

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/FriendsView;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/vkontakte/android/FriendsView;->preloadOnReady:Z

    return v0
.end method

.method private init()V
    .locals 6

    .prologue
    const v5, 0x7f0b000f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 66
    new-instance v0, Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/FriendsView;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    .line 67
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/FriendsView;->setBackgroundColor(I)V

    .line 68
    new-instance v0, Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/FriendsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    iget-object v1, p0, Lcom/vkontakte/android/FriendsView;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v0, v1, v4, v3}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/FriendsView;->beforeSetListAdapter(Lcom/vkontakte/android/ui/RefreshableListView;)V

    .line 72
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    new-instance v1, Lcom/vkontakte/android/FriendsView$FriendsAdapter;

    invoke-direct {v1, p0, v4}, Lcom/vkontakte/android/FriendsView$FriendsAdapter;-><init>(Lcom/vkontakte/android/FriendsView;Lcom/vkontakte/android/FriendsView$FriendsAdapter;)V

    iput-object v1, p0, Lcom/vkontakte/android/FriendsView;->adapter:Lcom/vkontakte/android/FriendsView$FriendsAdapter;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setSelector(I)V

    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setPadding(IIII)V

    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setScrollBarStyle(I)V

    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x1a1a1b

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setDividerHeight(I)V

    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setHeaderDividersEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/FriendsView;->addView(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    new-instance v1, Lcom/vkontakte/android/FriendsView$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/FriendsView$1;-><init>(Lcom/vkontakte/android/FriendsView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/FriendsView;->emptyView:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->emptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070078

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 113
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->emptyView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 114
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->emptyView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/FriendsView;->addView(Landroid/view/View;)V

    .line 115
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    iget-object v1, p0, Lcom/vkontakte/android/FriendsView;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setEmptyView(Landroid/view/View;)V

    .line 138
    new-instance v0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v1, Lcom/vkontakte/android/FriendsView$FriendsPhotosAdapter;

    invoke-direct {v1, p0, v4}, Lcom/vkontakte/android/FriendsView$FriendsPhotosAdapter;-><init>(Lcom/vkontakte/android/FriendsView;Lcom/vkontakte/android/FriendsView$FriendsPhotosAdapter;)V

    iget-object v2, p0, Lcom/vkontakte/android/FriendsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    new-instance v3, Lcom/vkontakte/android/FriendsView$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/FriendsView$2;-><init>(Lcom/vkontakte/android/FriendsView;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v0, p0, Lcom/vkontakte/android/FriendsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 156
    new-instance v0, Lcom/vkontakte/android/SearchIndexer;

    invoke-direct {v0}, Lcom/vkontakte/android/SearchIndexer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendsView;->indexer:Lcom/vkontakte/android/SearchIndexer;

    .line 157
    return-void
.end method

.method private loadMore()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 334
    iget-boolean v0, p0, Lcom/vkontakte/android/FriendsView;->multiSelect:Z

    if-eqz v0, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->searchQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->preloadedSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 337
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/FriendsView$Section;

    iget-object v0, v0, Lcom/vkontakte/android/FriendsView$Section;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/FriendsView;->preloadedSearch:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 338
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->preloadedSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 339
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsView;->updateList()V

    .line 343
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/vkontakte/android/FriendsView;->moreAvailable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/FriendsView;->multiSelect:Z

    if-nez v0, :cond_0

    .line 344
    new-instance v1, Lcom/vkontakte/android/api/UsersSearch;

    iget-object v2, p0, Lcom/vkontakte/android/FriendsView;->searchQuery:Ljava/lang/String;

    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/FriendsView$Section;

    iget-object v0, v0, Lcom/vkontakte/android/FriendsView$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/FriendsView$Section;

    iget-object v0, v0, Lcom/vkontakte/android/FriendsView$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x64

    :goto_2
    invoke-direct {v1, v2, v3, v0}, Lcom/vkontakte/android/api/UsersSearch;-><init>(Ljava/lang/String;II)V

    .line 345
    new-instance v0, Lcom/vkontakte/android/FriendsView$4;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/FriendsView$4;-><init>(Lcom/vkontakte/android/FriendsView;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/UsersSearch;->setCallback(Lcom/vkontakte/android/api/UsersSearch$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 344
    iput-object v0, p0, Lcom/vkontakte/android/FriendsView;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/FriendsView$Section;

    iget-object v0, v0, Lcom/vkontakte/android/FriendsView$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 341
    iput-boolean v4, p0, Lcom/vkontakte/android/FriendsView;->preloadOnReady:Z

    goto :goto_1

    .line 344
    :cond_4
    const/16 v0, 0x32

    goto :goto_2
.end method


# virtual methods
.method protected beforeSetListAdapter(Lcom/vkontakte/android/ui/RefreshableListView;)V
    .locals 0
    .param p1, "lv"    # Lcom/vkontakte/android/ui/RefreshableListView;

    .prologue
    .line 165
    return-void
.end method

.method public createSections()V
    .locals 17

    .prologue
    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/FriendsView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "friendsOrderNew"

    const-string v14, "firstname"

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 261
    .local v7, "pref":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/FriendsView;->useSections:Z

    if-eqz v12, :cond_a

    const-string v12, "hints"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 262
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0xb

    if-lt v12, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/FriendsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setFastScrollEnabled(Z)V

    .line 263
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v10, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/FriendsView;->users:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 265
    const-string v12, "firstname"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 266
    .local v4, "firstName":Z
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_2

    .line 272
    new-instance v12, Lcom/vkontakte/android/FriendsView$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/vkontakte/android/FriendsView$3;-><init>(Lcom/vkontakte/android/FriendsView;)V

    invoke-static {v10, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 281
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_4

    .line 284
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/FriendsView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 285
    const/4 v3, 0x0

    .line 286
    .local v3, "fc":C
    const/4 v5, 0x0

    .line 287
    .local v5, "offset":I
    const/4 v1, 0x0

    .line 288
    .local v1, "curSection":Lcom/vkontakte/android/FriendsView$Section;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/FriendsView;->showHints:Z

    if-eqz v12, :cond_1

    .line 289
    new-instance v1, Lcom/vkontakte/android/FriendsView$Section;

    .end local v1    # "curSection":Lcom/vkontakte/android/FriendsView$Section;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v12}, Lcom/vkontakte/android/FriendsView$Section;-><init>(Lcom/vkontakte/android/FriendsView;Lcom/vkontakte/android/FriendsView$Section;)V

    .line 290
    .restart local v1    # "curSection":Lcom/vkontakte/android/FriendsView$Section;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/FriendsView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0600da

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/vkontakte/android/FriendsView$Section;->title:Ljava/lang/String;

    .line 291
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v1, Lcom/vkontakte/android/FriendsView$Section;->list:Ljava/util/ArrayList;

    .line 292
    iget-object v12, v1, Lcom/vkontakte/android/FriendsView$Section;->list:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/FriendsView;->users:Ljava/util/ArrayList;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/FriendsView;->users:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x5

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 293
    const-string v12, "*"

    iput-object v12, v1, Lcom/vkontakte/android/FriendsView$Section;->shortTitle:Ljava/lang/String;

    .line 294
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/FriendsView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_5

    .line 318
    .end local v1    # "curSection":Lcom/vkontakte/android/FriendsView$Section;
    .end local v3    # "fc":C
    .end local v4    # "firstName":Z
    .end local v5    # "offset":I
    .end local v10    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :goto_3
    return-void

    .line 266
    .restart local v4    # "firstName":Z
    .restart local v10    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/UserProfile;

    .line 267
    .local v6, "p":Lcom/vkontakte/android/UserProfile;
    if-eqz v4, :cond_3

    .line 268
    new-instance v13, Ljava/lang/StringBuilder;

    iget-object v14, v6, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v6, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    goto/16 :goto_0

    .line 270
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    iget-object v14, v6, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v6, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    goto/16 :goto_0

    .line 281
    .end local v6    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/UserProfile;

    .line 282
    .restart local v6    # "p":Lcom/vkontakte/android/UserProfile;
    const/4 v13, 0x0

    iput-object v13, v6, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    goto/16 :goto_1

    .line 296
    .end local v6    # "p":Lcom/vkontakte/android/UserProfile;
    .restart local v1    # "curSection":Lcom/vkontakte/android/FriendsView$Section;
    .restart local v3    # "fc":C
    .restart local v5    # "offset":I
    :cond_5
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/UserProfile;

    .line 298
    .local v9, "user":Lcom/vkontakte/android/UserProfile;
    if-eqz v4, :cond_7

    :try_start_0
    iget-object v12, v9, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    :goto_4
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v3, :cond_6

    .line 299
    if-eqz v4, :cond_8

    iget-object v12, v9, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    :goto_5
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 300
    if-eqz v1, :cond_9

    iget-object v12, v1, Lcom/vkontakte/android/FriendsView$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    :goto_6
    add-int/2addr v5, v12

    .line 301
    new-instance v2, Lcom/vkontakte/android/FriendsView$Section;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v12}, Lcom/vkontakte/android/FriendsView$Section;-><init>(Lcom/vkontakte/android/FriendsView;Lcom/vkontakte/android/FriendsView$Section;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .end local v1    # "curSection":Lcom/vkontakte/android/FriendsView$Section;
    .local v2, "curSection":Lcom/vkontakte/android/FriendsView$Section;
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/vkontakte/android/FriendsView$Section;->title:Ljava/lang/String;

    .line 303
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v2, Lcom/vkontakte/android/FriendsView$Section;->list:Ljava/util/ArrayList;

    .line 304
    iput v5, v2, Lcom/vkontakte/android/FriendsView$Section;->startPos:I

    .line 305
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/FriendsView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 307
    .end local v2    # "curSection":Lcom/vkontakte/android/FriendsView$Section;
    .restart local v1    # "curSection":Lcom/vkontakte/android/FriendsView$Section;
    :cond_6
    :try_start_2
    iget-object v12, v1, Lcom/vkontakte/android/FriendsView$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 308
    :catch_0
    move-exception v11

    .local v11, "x":Ljava/lang/Exception;
    :goto_7
    const-string v12, "vk"

    invoke-static {v12, v11}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 298
    .end local v11    # "x":Ljava/lang/Exception;
    :cond_7
    :try_start_3
    iget-object v12, v9, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    goto :goto_4

    .line 299
    :cond_8
    iget-object v12, v9, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 300
    :cond_9
    const/4 v12, 0x0

    goto :goto_6

    .line 312
    .end local v1    # "curSection":Lcom/vkontakte/android/FriendsView$Section;
    .end local v3    # "fc":C
    .end local v4    # "firstName":Z
    .end local v5    # "offset":I
    .end local v9    # "user":Lcom/vkontakte/android/UserProfile;
    .end local v10    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/FriendsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setFastScrollEnabled(Z)V

    .line 313
    new-instance v8, Lcom/vkontakte/android/FriendsView$Section;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v12}, Lcom/vkontakte/android/FriendsView$Section;-><init>(Lcom/vkontakte/android/FriendsView;Lcom/vkontakte/android/FriendsView$Section;)V

    .line 314
    .local v8, "s":Lcom/vkontakte/android/FriendsView$Section;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/FriendsView;->users:Ljava/util/ArrayList;

    iput-object v12, v8, Lcom/vkontakte/android/FriendsView$Section;->list:Ljava/util/ArrayList;

    .line 315
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/FriendsView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 316
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/FriendsView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 308
    .end local v8    # "s":Lcom/vkontakte/android/FriendsView$Section;
    .restart local v2    # "curSection":Lcom/vkontakte/android/FriendsView$Section;
    .restart local v3    # "fc":C
    .restart local v4    # "firstName":Z
    .restart local v5    # "offset":I
    .restart local v9    # "user":Lcom/vkontakte/android/UserProfile;
    .restart local v10    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :catch_1
    move-exception v11

    move-object v1, v2

    .end local v2    # "curSection":Lcom/vkontakte/android/FriendsView$Section;
    .restart local v1    # "curSection":Lcom/vkontakte/android/FriendsView$Section;
    goto :goto_7
.end method

.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedUsers()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v3, p0, Lcom/vkontakte/android/FriendsView;->selected:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 177
    return-object v1

    .line 169
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 170
    .local v2, "uid":I
    iget-object v3, p0, Lcom/vkontakte/android/FriendsView;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 171
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    iget v5, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v5, v2, :cond_2

    .line 172
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 552
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->refreshListener:Lcom/vkontakte/android/FriendsView$RefreshListener;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->refreshListener:Lcom/vkontakte/android/FriendsView$RefreshListener;

    invoke-interface {v0}, Lcom/vkontakte/android/FriendsView$RefreshListener;->onRefresh()V

    .line 548
    :goto_0
    return-void

    .line 547
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkontakte/android/data/Friends;->reload(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 556
    return-void
.end method

.method public onScrolled(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 568
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
            "Lcom/vkontakte/android/UserProfile;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 190
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 191
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->indexer:Lcom/vkontakte/android/SearchIndexer;

    iget-object v1, p0, Lcom/vkontakte/android/FriendsView;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/SearchIndexer;->bind(Ljava/util/List;)V

    .line 192
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->indexer:Lcom/vkontakte/android/SearchIndexer;

    invoke-virtual {v0}, Lcom/vkontakte/android/SearchIndexer;->build()V

    .line 193
    iput-boolean p2, p0, Lcom/vkontakte/android/FriendsView;->showHints:Z

    .line 194
    iget-boolean v0, p0, Lcom/vkontakte/android/FriendsView;->showOnline:Z

    if-eqz v0, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsView;->updateOnline()V

    .line 198
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->refreshDone()V

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsView;->updateList()V

    .line 200
    iget-object v1, p0, Lcom/vkontakte/android/FriendsView;->emptyView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/vkontakte/android/FriendsView;->showOnline:Z

    if-eqz v0, :cond_3

    const v0, 0x7f06006b

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 201
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->refreshDone()V

    .line 203
    :cond_1
    return-void

    .line 197
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsView;->createSections()V

    goto :goto_0

    .line 200
    :cond_3
    const v0, 0x7f06006a

    goto :goto_1
.end method

.method public setMultiSelection()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/FriendsView;->multiSelect:Z

    .line 161
    return-void
.end method

.method public setRefreshListener(Lcom/vkontakte/android/FriendsView$RefreshListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/FriendsView$RefreshListener;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/vkontakte/android/FriendsView;->refreshListener:Lcom/vkontakte/android/FriendsView$RefreshListener;

    .line 412
    return-void
.end method

.method public setSelectedUsers(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v1, p0, Lcom/vkontakte/android/FriendsView;->selected:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 182
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsView;->updateList()V

    .line 184
    iget-object v1, p0, Lcom/vkontakte/android/FriendsView;->selListener:Lcom/vkontakte/android/FriendsView$SelectionListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/FriendsView;->selListener:Lcom/vkontakte/android/FriendsView$SelectionListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/vkontakte/android/FriendsView$SelectionListener;->onItemSelected(Lcom/vkontakte/android/UserProfile;)V

    .line 185
    :cond_0
    return-void

    .line 182
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    iget-object v2, p0, Lcom/vkontakte/android/FriendsView;->selected:Ljava/util/ArrayList;

    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setSelectionListener(Lcom/vkontakte/android/FriendsView$SelectionListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/FriendsView$SelectionListener;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/vkontakte/android/FriendsView;->selListener:Lcom/vkontakte/android/FriendsView$SelectionListener;

    .line 408
    return-void
.end method

.method public setShowOnline(Z)V
    .locals 2
    .param p1, "s"    # Z

    .prologue
    .line 244
    iput-boolean p1, p0, Lcom/vkontakte/android/FriendsView;->showOnline:Z

    .line 245
    if-eqz p1, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsView;->updateOnline()V

    .line 247
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setFastScrollEnabled(Z)V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsView;->createSections()V

    goto :goto_0
.end method

.method public setUserOnline(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "online"    # I

    .prologue
    .line 396
    iget-object v1, p0, Lcom/vkontakte/android/FriendsView;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 404
    :goto_0
    return-void

    .line 396
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 397
    .local v0, "u":Lcom/vkontakte/android/UserProfile;
    iget v2, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v2, p1, :cond_0

    .line 398
    iput p2, v0, Lcom/vkontakte/android/UserProfile;->online:I

    .line 399
    iget-boolean v1, p0, Lcom/vkontakte/android/FriendsView;->showOnline:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsView;->updateOnline()V

    goto :goto_0

    .line 400
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsView;->updateList()V

    goto :goto_0
.end method

.method public setUserSections(Z)V
    .locals 0
    .param p1, "use"    # Z

    .prologue
    .line 254
    iput-boolean p1, p0, Lcom/vkontakte/android/FriendsView;->useSections:Z

    .line 255
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsView;->createSections()V

    .line 256
    return-void
.end method

.method public updateFilter(Ljava/lang/String;)V
    .locals 7
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 206
    iget-object v3, p0, Lcom/vkontakte/android/FriendsView;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v3, :cond_0

    .line 207
    iget-object v3, p0, Lcom/vkontakte/android/FriendsView;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v3}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 208
    iput-object v6, p0, Lcom/vkontakte/android/FriendsView;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    .line 210
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/FriendsView;->preloadedSearch:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 211
    iput-boolean v4, p0, Lcom/vkontakte/android/FriendsView;->moreAvailable:Z

    .line 212
    iput-boolean v5, p0, Lcom/vkontakte/android/FriendsView;->preloadOnReady:Z

    .line 213
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 214
    :cond_1
    iput-object v6, p0, Lcom/vkontakte/android/FriendsView;->searchQuery:Ljava/lang/String;

    .line 215
    iget-object v3, p0, Lcom/vkontakte/android/FriendsView;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 216
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsView;->createSections()V

    .line 217
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsView;->updateList()V

    .line 218
    iget-object v3, p0, Lcom/vkontakte/android/FriendsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setSelection(I)V

    .line 241
    :goto_0
    return-void

    .line 221
    :cond_2
    iget-boolean v3, p0, Lcom/vkontakte/android/FriendsView;->multiSelect:Z

    if-nez v3, :cond_3

    .line 222
    iget-object v3, p0, Lcom/vkontakte/android/FriendsView;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 223
    :cond_3
    iput-object p1, p0, Lcom/vkontakte/android/FriendsView;->searchQuery:Ljava/lang/String;

    .line 224
    iget-object v3, p0, Lcom/vkontakte/android/FriendsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setFastScrollEnabled(Z)V

    .line 225
    iget-object v3, p0, Lcom/vkontakte/android/FriendsView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 226
    new-instance v2, Lcom/vkontakte/android/FriendsView$Section;

    invoke-direct {v2, p0, v6}, Lcom/vkontakte/android/FriendsView$Section;-><init>(Lcom/vkontakte/android/FriendsView;Lcom/vkontakte/android/FriendsView$Section;)V

    .line 227
    .local v2, "search":Lcom/vkontakte/android/FriendsView$Section;
    iget-object v3, p0, Lcom/vkontakte/android/FriendsView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vkontakte/android/FriendsView$Section;->title:Ljava/lang/String;

    .line 229
    iget-object v3, p0, Lcom/vkontakte/android/FriendsView;->indexer:Lcom/vkontakte/android/SearchIndexer;

    invoke-virtual {v3, p1}, Lcom/vkontakte/android/SearchIndexer;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 231
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/vkontakte/android/FriendsView$Section;->list:Ljava/util/ArrayList;

    .line 232
    iget-object v3, v2, Lcom/vkontakte/android/FriendsView$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 234
    new-instance v0, Lcom/vkontakte/android/FriendsView$Section;

    invoke-direct {v0, p0, v6}, Lcom/vkontakte/android/FriendsView$Section;-><init>(Lcom/vkontakte/android/FriendsView;Lcom/vkontakte/android/FriendsView$Section;)V

    .line 235
    .local v0, "gsearch":Lcom/vkontakte/android/FriendsView$Section;
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vkontakte/android/FriendsView$Section;->title:Ljava/lang/String;

    .line 236
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/vkontakte/android/FriendsView$Section;->list:Ljava/util/ArrayList;

    .line 237
    iget-object v3, p0, Lcom/vkontakte/android/FriendsView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsView;->updateList()V

    .line 240
    iget-object v3, p0, Lcom/vkontakte/android/FriendsView;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setSelection(I)V

    goto :goto_0
.end method

.method public updateList()V
    .locals 3

    .prologue
    .line 383
    new-instance v0, Lcom/vkontakte/android/FriendsView$5;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/FriendsView$5;-><init>(Lcom/vkontakte/android/FriendsView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/FriendsView;->post(Ljava/lang/Runnable;)Z

    .line 388
    new-instance v0, Lcom/vkontakte/android/FriendsView$6;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/FriendsView$6;-><init>(Lcom/vkontakte/android/FriendsView;)V

    .line 392
    const-wide/16 v1, 0x64

    .line 388
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/FriendsView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 393
    return-void
.end method

.method public updateOnline()V
    .locals 4

    .prologue
    .line 321
    iget-boolean v2, p0, Lcom/vkontakte/android/FriendsView;->showOnline:Z

    if-nez v2, :cond_0

    .line 331
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/FriendsView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 323
    new-instance v0, Lcom/vkontakte/android/FriendsView$Section;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/vkontakte/android/FriendsView$Section;-><init>(Lcom/vkontakte/android/FriendsView;Lcom/vkontakte/android/FriendsView$Section;)V

    .line 324
    .local v0, "s":Lcom/vkontakte/android/FriendsView$Section;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/vkontakte/android/FriendsView$Section;->list:Ljava/util/ArrayList;

    .line 325
    iget-object v2, p0, Lcom/vkontakte/android/FriendsView;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 329
    iget-object v2, p0, Lcom/vkontakte/android/FriendsView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsView;->updateList()V

    goto :goto_0

    .line 325
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 326
    .local v1, "user":Lcom/vkontakte/android/UserProfile;
    iget v3, v1, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v3, :cond_1

    .line 327
    iget-object v3, v0, Lcom/vkontakte/android/FriendsView$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
