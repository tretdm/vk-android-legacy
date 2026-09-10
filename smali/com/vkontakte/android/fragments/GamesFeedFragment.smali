.class public Lcom/vkontakte/android/fragments/GamesFeedFragment;
.super Lcom/vkontakte/android/fragments/PreloadingListFragment;
.source "GamesFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter;,
        Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/fragments/PreloadingListFragment",
        "<",
        "Lcom/vkontakte/android/data/GameFeedEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private from:Ljava/lang/String;

.field private profileClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/vkontakte/android/fragments/PreloadingListFragment;-><init>(I)V

    .line 37
    new-instance v0, Lcom/vkontakte/android/fragments/GamesFeedFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/GamesFeedFragment$1;-><init>(Lcom/vkontakte/android/fragments/GamesFeedFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment;->profileClickListener:Landroid/view/View$OnClickListener;

    .line 49
    return-void
.end method

.method static synthetic access$002(Lcom/vkontakte/android/fragments/GamesFeedFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GamesFeedFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$102(Lcom/vkontakte/android/fragments/GamesFeedFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GamesFeedFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment;->from:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/vkontakte/android/fragments/GamesFeedFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GamesFeedFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment;->profileClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method protected cancelLoading()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 96
    :cond_0
    return-void
.end method

.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 60
    new-instance v1, Lcom/vkontakte/android/api/AppsGetActivity;

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-direct {v1, v0, p2}, Lcom/vkontakte/android/api/AppsGetActivity;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/vkontakte/android/fragments/GamesFeedFragment$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/GamesFeedFragment$2;-><init>(Lcom/vkontakte/android/fragments/GamesFeedFragment;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/AppsGetActivity;->setCallback(Lcom/vkontakte/android/api/AppsGetActivity$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GamesFeedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 76
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment;->from:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getAdapter()Landroid/widget/ListAdapter;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment;->adapter:Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;-><init>(Lcom/vkontakte/android/fragments/GamesFeedFragment;Lcom/vkontakte/android/fragments/GamesFeedFragment$1;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment;->adapter:Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment;->adapter:Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;

    return-object v0
.end method

.method protected getImageLoaderAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedImagesAdapter;-><init>(Lcom/vkontakte/android/fragments/GamesFeedFragment;Lcom/vkontakte/android/fragments/GamesFeedFragment$1;)V

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->onAttach(Landroid/app/Activity;)V

    .line 54
    const v0, 0x7f0d0110

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 55
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GamesFeedFragment;->loadData()V

    .line 56
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GamesFeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 102
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 103
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment;->list:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment;->list:Landroid/widget/ListView;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 105
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 107
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/data/GameFeedEntry;

    iget-object v0, v0, Lcom/vkontakte/android/data/GameFeedEntry;->app:Lcom/vkontakte/android/data/ApiApplication;

    iget-object v0, v0, Lcom/vkontakte/android/data/ApiApplication;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GamesFeedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/data/GameFeedEntry;

    iget-object v3, v3, Lcom/vkontakte/android/data/GameFeedEntry;->app:Lcom/vkontakte/android/data/ApiApplication;

    iget v3, v3, Lcom/vkontakte/android/data/ApiApplication;->id:I

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GamesFeedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "source"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "activity_full"

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/data/Games;->open(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method
