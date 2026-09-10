.class public Lcom/vkontakte/android/SearchUsersView;
.super Landroid/widget/FrameLayout;
.source "SearchUsersView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/SearchUsersView$ScrollStopTimerTask;,
        Lcom/vkontakte/android/SearchUsersView$SearchUserPhotosAdapter;,
        Lcom/vkontakte/android/SearchUsersView$SearchUsersAdapter;
    }
.end annotation


# instance fields
.field private currentQuery:Ljava/lang/String;

.field private dataLoading:Z

.field private footerView:Landroid/widget/FrameLayout;

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

.field private list:Landroid/widget/ListView;

.field private moreAvailable:Z

.field private noResultsView:Landroid/widget/TextView;

.field private preloadOnReady:Z

.field private preloadedUsers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private preloading:Z

.field private searchBar:Landroid/view/View;

.field private searchEdit:Landroid/widget/EditText;

.field private timer:Ljava/util/Timer;

.field private users:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private viCount:I

.field private viStart:I

.field private visibleIDs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->users:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->preloadedUsers:Ljava/util/Vector;

    .line 45
    iput-boolean v1, p0, Lcom/vkontakte/android/SearchUsersView;->moreAvailable:Z

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->currentQuery:Ljava/lang/String;

    .line 47
    iput-boolean v1, p0, Lcom/vkontakte/android/SearchUsersView;->dataLoading:Z

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->timer:Ljava/util/Timer;

    .line 50
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->visibleViews:Ljava/util/Vector;

    .line 51
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->visibleIDs:Ljava/util/Vector;

    .line 53
    iput-boolean v1, p0, Lcom/vkontakte/android/SearchUsersView;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/SearchUsersView;->preloadOnReady:Z

    .line 57
    invoke-direct {p0}, Lcom/vkontakte/android/SearchUsersView;->init()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->users:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->preloadedUsers:Ljava/util/Vector;

    .line 45
    iput-boolean v1, p0, Lcom/vkontakte/android/SearchUsersView;->moreAvailable:Z

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->currentQuery:Ljava/lang/String;

    .line 47
    iput-boolean v1, p0, Lcom/vkontakte/android/SearchUsersView;->dataLoading:Z

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->timer:Ljava/util/Timer;

    .line 50
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->visibleViews:Ljava/util/Vector;

    .line 51
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->visibleIDs:Ljava/util/Vector;

    .line 53
    iput-boolean v1, p0, Lcom/vkontakte/android/SearchUsersView;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/SearchUsersView;->preloadOnReady:Z

    .line 62
    invoke-direct {p0}, Lcom/vkontakte/android/SearchUsersView;->init()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->users:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->preloadedUsers:Ljava/util/Vector;

    .line 45
    iput-boolean v1, p0, Lcom/vkontakte/android/SearchUsersView;->moreAvailable:Z

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->currentQuery:Ljava/lang/String;

    .line 47
    iput-boolean v1, p0, Lcom/vkontakte/android/SearchUsersView;->dataLoading:Z

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->timer:Ljava/util/Timer;

    .line 50
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->visibleViews:Ljava/util/Vector;

    .line 51
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->visibleIDs:Ljava/util/Vector;

    .line 53
    iput-boolean v1, p0, Lcom/vkontakte/android/SearchUsersView;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/SearchUsersView;->preloadOnReady:Z

    .line 67
    invoke-direct {p0}, Lcom/vkontakte/android/SearchUsersView;->init()V

    .line 68
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/SearchUsersView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->users:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/SearchUsersView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->visibleViews:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/SearchUsersView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->preloadedUsers:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/SearchUsersView;Z)V
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/vkontakte/android/SearchUsersView;->preloading:Z

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/SearchUsersView;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/vkontakte/android/SearchUsersView;->preloadOnReady:Z

    return v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/SearchUsersView;Z)V
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/vkontakte/android/SearchUsersView;->preloadOnReady:Z

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/SearchUsersView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->currentQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/SearchUsersView;Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/vkontakte/android/SearchUsersView;->moreAvailable:Z

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/SearchUsersView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->footerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/SearchUsersView;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/vkontakte/android/SearchUsersView;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/SearchUsersView;Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/vkontakte/android/SearchUsersView;->dataLoading:Z

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/SearchUsersView;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/SearchUsersView;)Lcom/vkontakte/android/ui/ListImageLoader;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    return-object v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/SearchUsersView;I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/vkontakte/android/SearchUsersView;->viCount:I

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/SearchUsersView;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/vkontakte/android/SearchUsersView;->viStart:I

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/SearchUsersView;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/vkontakte/android/SearchUsersView;->viCount:I

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/SearchUsersView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/vkontakte/android/SearchUsersView;->doSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/SearchUsersView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->searchBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/SearchUsersView;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->searchEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/SearchUsersView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->noResultsView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/SearchUsersView;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/vkontakte/android/SearchUsersView;->preloading:Z

    return v0
.end method

.method private doSearch(Ljava/lang/String;)V
    .locals 3
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/vkontakte/android/SearchUsersView;->dataLoading:Z

    if-eqz v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->noResultsView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iput-object p1, p0, Lcom/vkontakte/android/SearchUsersView;->currentQuery:Ljava/lang/String;

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/SearchUsersView;->dataLoading:Z

    .line 162
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->footerView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 163
    new-instance v1, Lcom/vkontakte/android/api/UsersSearch;

    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->users:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    iget-boolean v0, p0, Lcom/vkontakte/android/SearchUsersView;->preloading:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x32

    :goto_1
    invoke-direct {v1, p1, v2, v0}, Lcom/vkontakte/android/api/UsersSearch;-><init>(Ljava/lang/String;II)V

    .line 164
    new-instance v0, Lcom/vkontakte/android/SearchUsersView$5;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/SearchUsersView$5;-><init>(Lcom/vkontakte/android/SearchUsersView;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/UsersSearch;->setCallback(Lcom/vkontakte/android/api/UsersSearch$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 205
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 163
    :cond_1
    const/16 v0, 0x64

    goto :goto_1
.end method

.method private init()V
    .locals 10

    .prologue
    const/high16 v5, 0x40e00000    # 7.0f

    const/16 v9, 0x11

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 71
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/SearchUsersView;->setBackgroundColor(I)V

    .line 72
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/SearchUsersView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->footerView:Landroid/widget/FrameLayout;

    .line 73
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/SearchUsersView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 74
    .local v2, "pb":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/vkontakte/android/SearchUsersView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020206

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 76
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 77
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->footerView:Landroid/widget/FrameLayout;

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {v3, v7, v4, v7, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 79
    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 81
    invoke-virtual {p0}, Lcom/vkontakte/android/SearchUsersView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030037

    invoke-static {v3, v4, v6}, Lcom/vkontakte/android/SearchUsersView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->searchBar:Landroid/view/View;

    .line 82
    new-instance v3, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/SearchUsersView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->list:Landroid/widget/ListView;

    .line 83
    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->searchBar:Landroid/view/View;

    invoke-static {v3}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 84
    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->list:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/vkontakte/android/SearchUsersView;->searchBar:Landroid/view/View;

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 85
    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->list:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/vkontakte/android/SearchUsersView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 86
    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->list:Landroid/widget/ListView;

    new-instance v4, Lcom/vkontakte/android/SearchUsersView$SearchUsersAdapter;

    invoke-direct {v4, p0, v6}, Lcom/vkontakte/android/SearchUsersView$SearchUsersAdapter;-><init>(Lcom/vkontakte/android/SearchUsersView;Lcom/vkontakte/android/SearchUsersView$SearchUsersAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->list:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->list:Landroid/widget/ListView;

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 89
    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->list:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 90
    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->list:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 91
    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->list:Landroid/widget/ListView;

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SearchUsersView;->addView(Landroid/view/View;)V

    .line 93
    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->searchBar:Landroid/view/View;

    const v4, 0x7f06006a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->searchEdit:Landroid/widget/EditText;

    .line 94
    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->searchEdit:Landroid/widget/EditText;

    const v4, 0x7f0900f8

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 95
    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->searchEdit:Landroid/widget/EditText;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 96
    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->searchEdit:Landroid/widget/EditText;

    new-instance v4, Lcom/vkontakte/android/SearchUsersView$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/SearchUsersView$1;-><init>(Lcom/vkontakte/android/SearchUsersView;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 108
    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->searchEdit:Landroid/widget/EditText;

    new-instance v4, Lcom/vkontakte/android/SearchUsersView$2;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/SearchUsersView$2;-><init>(Lcom/vkontakte/android/SearchUsersView;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 124
    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->searchBar:Landroid/view/View;

    const v4, 0x7f060123

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/SearchUsersView$3;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/SearchUsersView$3;-><init>(Lcom/vkontakte/android/SearchUsersView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->footerView:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 133
    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->list:Landroid/widget/ListView;

    new-instance v4, Lcom/vkontakte/android/SearchUsersView$4;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/SearchUsersView$4;-><init>(Lcom/vkontakte/android/SearchUsersView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 142
    new-instance v3, Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-direct {v3}, Lcom/vkontakte/android/ui/ListImageLoader;-><init>()V

    iput-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    .line 143
    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    new-instance v4, Lcom/vkontakte/android/SearchUsersView$SearchUserPhotosAdapter;

    invoke-direct {v4, p0, v6}, Lcom/vkontakte/android/SearchUsersView$SearchUserPhotosAdapter;-><init>(Lcom/vkontakte/android/SearchUsersView;Lcom/vkontakte/android/SearchUsersView$SearchUserPhotosAdapter;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/ListImageLoader;->setAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 145
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/SearchUsersView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->noResultsView:Landroid/widget/TextView;

    .line 146
    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->noResultsView:Landroid/widget/TextView;

    const v4, -0x888889

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->noResultsView:Landroid/widget/TextView;

    const v4, 0x7f0900fa

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 148
    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->noResultsView:Landroid/widget/TextView;

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 149
    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->noResultsView:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 150
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v8, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 151
    .local v1, "lparams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 152
    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->noResultsView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView;->noResultsView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SearchUsersView;->addView(Landroid/view/View;)V

    .line 154
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v4, 0x1

    .line 210
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 211
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->timer:Ljava/util/Timer;

    .line 212
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/SearchUsersView$ScrollStopTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/SearchUsersView$ScrollStopTimerTask;-><init>(Lcom/vkontakte/android/SearchUsersView;Lcom/vkontakte/android/SearchUsersView$ScrollStopTimerTask;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 213
    iput p3, p0, Lcom/vkontakte/android/SearchUsersView;->viCount:I

    .line 214
    iput p2, p0, Lcom/vkontakte/android/SearchUsersView;->viStart:I

    .line 215
    add-int v0, p2, p3

    if-ne v0, p4, :cond_3

    iget-boolean v0, p0, Lcom/vkontakte/android/SearchUsersView;->dataLoading:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/vkontakte/android/SearchUsersView;->preloading:Z

    if-eqz v0, :cond_3

    :cond_1
    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    iget-boolean v0, p0, Lcom/vkontakte/android/SearchUsersView;->moreAvailable:Z

    if-eqz v0, :cond_3

    .line 216
    iget-boolean v0, p0, Lcom/vkontakte/android/SearchUsersView;->dataLoading:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/vkontakte/android/SearchUsersView;->preloading:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/vkontakte/android/SearchUsersView;->moreAvailable:Z

    if-eqz v0, :cond_3

    .line 217
    iget-boolean v0, p0, Lcom/vkontakte/android/SearchUsersView;->preloading:Z

    if-eqz v0, :cond_4

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/SearchUsersView;->preloading:Z

    .line 219
    iput-boolean v4, p0, Lcom/vkontakte/android/SearchUsersView;->preloadOnReady:Z

    .line 231
    :cond_3
    :goto_0
    return-void

    .line 220
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->preloadedUsers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 221
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->users:Ljava/util/Vector;

    iget-object v1, p0, Lcom/vkontakte/android/SearchUsersView;->preloadedUsers:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 222
    invoke-virtual {p0}, Lcom/vkontakte/android/SearchUsersView;->updateList()V

    .line 223
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->preloadedUsers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 224
    iput-boolean v4, p0, Lcom/vkontakte/android/SearchUsersView;->preloading:Z

    .line 225
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->currentQuery:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vkontakte/android/SearchUsersView;->doSearch(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView;->currentQuery:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vkontakte/android/SearchUsersView;->doSearch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 235
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/vkontakte/android/SearchUsersView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 237
    iget-object v1, p0, Lcom/vkontakte/android/SearchUsersView;->visibleViews:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 241
    :cond_0
    return-void

    .line 237
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 238
    .local v0, "view":Landroid/view/View;
    check-cast v0, Lcom/vkontakte/android/HLRelativeLayout;

    .end local v0    # "view":Landroid/view/View;
    invoke-virtual {v0}, Lcom/vkontakte/android/HLRelativeLayout;->deselect()V

    goto :goto_0
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 244
    new-instance v0, Lcom/vkontakte/android/SearchUsersView$6;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/SearchUsersView$6;-><init>(Lcom/vkontakte/android/SearchUsersView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/SearchUsersView;->post(Ljava/lang/Runnable;)Z

    .line 247
    return-void
.end method
