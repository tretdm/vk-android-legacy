.class public Lcom/vkontakte/android/fragments/NewsSearchFragment;
.super Lcom/vkontakte/android/fragments/PostListFragment;
.source "NewsSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/NewsSearchFragment$SearchRunner;
    }
.end annotation


# instance fields
.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private delayedSearch:Ljava/lang/Runnable;

.field private from:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private query:Ljava/lang/String;

.field private searchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostListFragment;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->handler:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/NewsSearchFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NewsSearchFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->query:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/vkontakte/android/fragments/NewsSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NewsSearchFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->query:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/NewsSearchFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NewsSearchFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->delayedSearch:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vkontakte/android/fragments/NewsSearchFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NewsSearchFragment;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->delayedSearch:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/NewsSearchFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NewsSearchFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/NewsSearchFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NewsSearchFragment;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->searchDelayed()V

    return-void
.end method

.method static synthetic access$502(Lcom/vkontakte/android/fragments/NewsSearchFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NewsSearchFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$602(Lcom/vkontakte/android/fragments/NewsSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NewsSearchFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->from:Ljava/lang/String;

    return-object p1
.end method

.method private searchDelayed()V
    .locals 4

    .prologue
    .line 224
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->delayedSearch:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->delayedSearch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 228
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->delayedSearch:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    return-void

    .line 227
    :cond_0
    new-instance v0, Lcom/vkontakte/android/fragments/NewsSearchFragment$SearchRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/fragments/NewsSearchFragment$SearchRunner;-><init>(Lcom/vkontakte/android/fragments/NewsSearchFragment;Lcom/vkontakte/android/fragments/NewsSearchFragment$1;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->delayedSearch:Ljava/lang/Runnable;

    goto :goto_0
.end method


# virtual methods
.method protected cancelLoading()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 200
    :cond_0
    return-void
.end method

.method protected doLoadData(II)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->query:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->query:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->cancelLoading()V

    .line 157
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "domain"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    new-instance v0, Lcom/vkontakte/android/api/NewsfeedSearch;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->query:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "domain"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/vkontakte/android/api/NewsfeedSearch;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    new-instance v1, Lcom/vkontakte/android/fragments/NewsSearchFragment$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/NewsSearchFragment$3;-><init>(Lcom/vkontakte/android/fragments/NewsSearchFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/NewsfeedSearch;->setCallback(Lcom/vkontakte/android/api/NewsfeedSearch$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 175
    :cond_2
    new-instance v1, Lcom/vkontakte/android/api/NewsfeedSearch;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->query:Ljava/lang/String;

    if-nez p1, :cond_3

    const-string v0, ""

    :goto_1
    invoke-direct {v1, v2, v0, p2}, Lcom/vkontakte/android/api/NewsfeedSearch;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lcom/vkontakte/android/fragments/NewsSearchFragment$4;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/NewsSearchFragment$4;-><init>(Lcom/vkontakte/android/fragments/NewsSearchFragment;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/NewsfeedSearch;->setCallback(Lcom/vkontakte/android/api/NewsfeedSearch$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->from:Ljava/lang/String;

    goto :goto_1
.end method

.method protected getEmptyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    const v0, 0x7f0d0189

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getReferer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    const-string v0, "news"

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 8
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const v7, 0x7f0d0278

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 50
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 51
    invoke-virtual {p1, v7}, Landroid/app/Activity;->setTitle(I)V

    .line 53
    new-instance v3, Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->searchView:Landroid/widget/SearchView;

    .line 54
    iget-object v3, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->searchView:Landroid/widget/SearchView;

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v3, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v5}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 57
    :try_start_0
    const-class v3, Landroid/widget/SearchView;

    const-string v4, "mSearchButton"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 58
    .local v1, "searchField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 59
    iget-object v3, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 60
    .local v0, "searchBtn":Landroid/widget/ImageView;
    const v3, 0x7f02008d

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    const-class v3, Landroid/widget/SearchView;

    const-string v4, "mSearchPlate"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 62
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 63
    iget-object v3, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 64
    .local v2, "searchPlate":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, -0x7f000001

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHintTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "searchBtn":Landroid/widget/ImageView;
    .end local v1    # "searchField":Ljava/lang/reflect/Field;
    .end local v2    # "searchPlate":Landroid/widget/LinearLayout;
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->searchView:Landroid/widget/SearchView;

    new-instance v4, Lcom/vkontakte/android/fragments/NewsSearchFragment$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/NewsSearchFragment$1;-><init>(Lcom/vkontakte/android/fragments/NewsSearchFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 97
    iget-object v3, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->searchView:Landroid/widget/SearchView;

    new-instance v4, Lcom/vkontakte/android/fragments/NewsSearchFragment$2;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/NewsSearchFragment$2;-><init>(Lcom/vkontakte/android/fragments/NewsSearchFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 103
    iget-object v3, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->searchView:Landroid/widget/SearchView;

    const v4, 0x7ffffff5

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setMaxWidth(I)V

    .line 104
    iget-object v3, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 113
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/PostListFragment;->onAttach(Landroid/app/Activity;)V

    .line 115
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 116
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 117
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->setHasOptionsMenu(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "q"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "q"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->query:Ljava/lang/String;

    .line 120
    iget-object v3, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->searchView:Landroid/widget/SearchView;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->query:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 123
    :cond_0
    return-void

    .line 65
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "s"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/PostListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->setRefreshEnabled(Z)V

    .line 45
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 204
    invoke-super {p0, p1, p2, p3}, Lcom/vkontakte/android/fragments/PostListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 206
    .local v1, "view":Landroid/view/View;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 207
    .local v0, "lparams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x30

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 208
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/ui/EmptyView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/EmptyView;->setGravity(I)V

    .line 210
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {v2, v4, v3, v4, v4}, Lcom/vkontakte/android/ui/EmptyView;->setPadding(IIII)V

    .line 211
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "q"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 212
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v2, v4}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setVisibility(I)V

    .line 213
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment;->progress:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 216
    :cond_1
    return-object v1
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 128
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 129
    invoke-super {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->onDetach()V

    .line 130
    return-void
.end method

.method public onScrollStarted()V
    .locals 3

    .prologue
    .line 145
    invoke-super {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->onScrollStarted()V

    .line 146
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 148
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 149
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 151
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 134
    const-string v0, "no_autoload"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/PostListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 136
    return-void
.end method
