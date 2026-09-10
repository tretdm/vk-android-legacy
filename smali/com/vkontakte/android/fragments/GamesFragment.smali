.class public Lcom/vkontakte/android/fragments/GamesFragment;
.super Lcom/vkontakte/android/fragments/BaseListFragment;
.source "GamesFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter;,
        Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;,
        Lcom/vkontakte/android/fragments/GamesFragment$FeedImagesAdapter;,
        Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;,
        Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter;,
        Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/fragments/BaseListFragment",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final REQ_COUNT:I = 0x2


# instance fields
.field private adapter:Lcom/vkontakte/android/ui/MergeAdapter;

.field private catalog:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/data/ApiApplication;",
            ">;"
        }
    .end annotation
.end field

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private feed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/data/GameFeedEntry;",
            ">;"
        }
    .end annotation
.end field

.field private firstResume:Z

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private profileClickListener:Landroid/view/View$OnClickListener;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private reqHideListener:Landroid/view/View$OnClickListener;

.field private reqPlayListener:Landroid/view/View$OnClickListener;

.field private reqs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/data/GameRequest;",
            ">;"
        }
    .end annotation
.end field

.field private reqsCollapsed:Z

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 53
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->catalog:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->reqs:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->feed:Ljava/util/ArrayList;

    .line 63
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/GamesFragment;->reqsCollapsed:Z

    .line 64
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/GamesFragment;->firstResume:Z

    .line 65
    new-instance v0, Lcom/vkontakte/android/fragments/GamesFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/GamesFragment$1;-><init>(Lcom/vkontakte/android/fragments/GamesFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->reqPlayListener:Landroid/view/View$OnClickListener;

    .line 72
    new-instance v0, Lcom/vkontakte/android/fragments/GamesFragment$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/GamesFragment$2;-><init>(Lcom/vkontakte/android/fragments/GamesFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->reqHideListener:Landroid/view/View$OnClickListener;

    .line 79
    new-instance v0, Lcom/vkontakte/android/fragments/GamesFragment$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/GamesFragment$3;-><init>(Lcom/vkontakte/android/fragments/GamesFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->profileClickListener:Landroid/view/View$OnClickListener;

    .line 88
    new-instance v0, Lcom/vkontakte/android/fragments/GamesFragment$4;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/GamesFragment$4;-><init>(Lcom/vkontakte/android/fragments/GamesFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 691
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GamesFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->reqs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/GamesFragment;Lcom/vkontakte/android/data/GameRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GamesFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/data/GameRequest;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/GamesFragment;->openReq(Lcom/vkontakte/android/data/GameRequest;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/vkontakte/android/fragments/GamesFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GamesFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/vkontakte/android/fragments/GamesFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GamesFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->profileClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/vkontakte/android/fragments/GamesFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GamesFragment;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->reqsCollapsed:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/vkontakte/android/fragments/GamesFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GamesFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->reqPlayListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/vkontakte/android/fragments/GamesFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GamesFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->reqHideListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/GamesFragment;Lcom/vkontakte/android/data/GameRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GamesFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/data/GameRequest;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/GamesFragment;->hideReq(Lcom/vkontakte/android/data/GameRequest;)V

    return-void
.end method

.method static synthetic access$602(Lcom/vkontakte/android/fragments/GamesFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GamesFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GamesFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$700(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GamesFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->catalog:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GamesFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->feed:Ljava/util/ArrayList;

    return-object v0
.end method

.method private expandReqs()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->reqsCollapsed:Z

    .line 242
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GamesFragment;->updateList()V

    .line 243
    return-void
.end method

.method private hideReq(Lcom/vkontakte/android/data/GameRequest;)V
    .locals 2
    .param p1, "req"    # Lcom/vkontakte/android/data/GameRequest;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->reqs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 220
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GamesFragment;->updateList()V

    .line 221
    new-instance v0, Lcom/vkontakte/android/api/AppsDeleteRequest;

    iget v1, p1, Lcom/vkontakte/android/data/GameRequest;->id:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/AppsDeleteRequest;-><init>(I)V

    new-instance v1, Lcom/vkontakte/android/fragments/GamesFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/GamesFragment$6;-><init>(Lcom/vkontakte/android/fragments/GamesFragment;Lcom/vkontakte/android/data/GameRequest;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AppsDeleteRequest;->setCallback(Lcom/vkontakte/android/api/AppsDeleteRequest$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GamesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 238
    return-void
.end method

.method private openFeed()V
    .locals 3

    .prologue
    .line 246
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 247
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "source"

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GamesFragment;->source:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v1, "GamesFeedFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GamesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 249
    return-void
.end method

.method private openReq(Lcom/vkontakte/android/data/GameRequest;)V
    .locals 6
    .param p1, "req"    # Lcom/vkontakte/android/data/GameRequest;

    .prologue
    .line 210
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 211
    .local v1, "extras":Landroid/os/Bundle;
    const-string v0, "key"

    iget-object v2, p1, Lcom/vkontakte/android/data/GameRequest;->key:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v0, "name"

    iget-object v2, p1, Lcom/vkontakte/android/data/GameRequest;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v0, "request"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 214
    iget-object v0, p1, Lcom/vkontakte/android/data/GameRequest;->app:Lcom/vkontakte/android/data/ApiApplication;

    iget-object v0, v0, Lcom/vkontakte/android/data/ApiApplication;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GamesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p1, Lcom/vkontakte/android/data/GameRequest;->app:Lcom/vkontakte/android/data/ApiApplication;

    iget v3, v3, Lcom/vkontakte/android/data/ApiApplication;->id:I

    iget-object v4, p0, Lcom/vkontakte/android/fragments/GamesFragment;->source:Ljava/lang/String;

    const-string v5, "request"

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/data/Games;->open(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/GamesFragment;->hideReq(Lcom/vkontakte/android/data/GameRequest;)V

    .line 216
    return-void
.end method


# virtual methods
.method protected cancelLoading()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 175
    :cond_0
    return-void
.end method

.method protected doLoadData()V
    .locals 2

    .prologue
    .line 145
    new-instance v0, Lcom/vkontakte/android/api/AppsGetGamesPage;

    invoke-direct {v0}, Lcom/vkontakte/android/api/AppsGetGamesPage;-><init>()V

    new-instance v1, Lcom/vkontakte/android/fragments/GamesFragment$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/GamesFragment$5;-><init>(Lcom/vkontakte/android/fragments/GamesFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AppsGetGamesPage;->setCallback(Lcom/vkontakte/android/api/AppsGetGamesPage$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GamesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 167
    return-void
.end method

.method protected getAdapter()Landroid/widget/ListAdapter;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->adapter:Lcom/vkontakte/android/ui/MergeAdapter;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/vkontakte/android/ui/MergeAdapter;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/MergeAdapter;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->adapter:Lcom/vkontakte/android/ui/MergeAdapter;

    .line 118
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->adapter:Lcom/vkontakte/android/ui/MergeAdapter;

    new-instance v1, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;-><init>(Lcom/vkontakte/android/fragments/GamesFragment;Lcom/vkontakte/android/fragments/GamesFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->adapter:Lcom/vkontakte/android/ui/MergeAdapter;

    new-instance v1, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/fragments/GamesFragment$FeedAdapter;-><init>(Lcom/vkontakte/android/fragments/GamesFragment;Lcom/vkontakte/android/fragments/GamesFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->adapter:Lcom/vkontakte/android/ui/MergeAdapter;

    new-instance v1, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter;

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter;-><init>(Lcom/vkontakte/android/fragments/GamesFragment;Lcom/vkontakte/android/fragments/GamesFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->adapter:Lcom/vkontakte/android/ui/MergeAdapter;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/BaseListFragment;->onAttach(Landroid/app/Activity;)V

    .line 100
    const v0, 0x7f0d010e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 101
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GamesFragment;->loadData()V

    .line 102
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.games.RELOAD_REQUESTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GamesFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GamesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GamesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "from_notification"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "push"

    :goto_0
    iput-object v1, p0, Lcom/vkontakte/android/fragments/GamesFragment;->source:Ljava/lang/String;

    .line 132
    const-string v1, "games_visit"

    invoke-static {v1}, Lcom/vkontakte/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v1

    const-string v2, "visit_source"

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GamesFragment;->source:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->commit()Lcom/vkontakte/android/data/Analytics$EventBuilder;

    .line 133
    return-void

    .line 131
    :cond_0
    const-string v1, "direct"

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 253
    invoke-super {p0, p1, p2, p3}, Lcom/vkontakte/android/fragments/BaseListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 254
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GamesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 255
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GamesFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 256
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GamesFragment;->list:Landroid/widget/ListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 257
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GamesFragment;->list:Landroid/widget/ListView;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {v2, v4, v4, v4, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 258
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GamesFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 260
    new-instance v0, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;-><init>()V

    .line 261
    .local v0, "imAdapter":Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;
    new-instance v2, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter;

    invoke-direct {v2, p0, v5}, Lcom/vkontakte/android/fragments/GamesFragment$RequestsImagesAdapter;-><init>(Lcom/vkontakte/android/fragments/GamesFragment;Lcom/vkontakte/android/fragments/GamesFragment$1;)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->addAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 262
    new-instance v2, Lcom/vkontakte/android/fragments/GamesFragment$FeedImagesAdapter;

    invoke-direct {v2, p0, v5}, Lcom/vkontakte/android/fragments/GamesFragment$FeedImagesAdapter;-><init>(Lcom/vkontakte/android/fragments/GamesFragment;Lcom/vkontakte/android/fragments/GamesFragment$1;)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->addAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 263
    new-instance v2, Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter;

    invoke-direct {v2, p0, v5}, Lcom/vkontakte/android/fragments/GamesFragment$CatalogImagesAdapter;-><init>(Lcom/vkontakte/android/fragments/GamesFragment;Lcom/vkontakte/android/fragments/GamesFragment$1;)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->addAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 265
    new-instance v2, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GamesFragment;->list:Landroid/widget/ListView;

    invoke-direct {v2, v0, v3, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v2, p0, Lcom/vkontakte/android/fragments/GamesFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 267
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 138
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/GamesFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    invoke-super {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->onDestroy()V

    .line 141
    return-void

    .line 139
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    .line 179
    const/4 v9, 0x0

    .line 180
    .local v9, "off":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->adapter:Lcom/vkontakte/android/ui/MergeAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MergeAdapter;->getCount()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->adapter:Lcom/vkontakte/android/ui/MergeAdapter;

    invoke-virtual {v0, v6}, Lcom/vkontakte/android/ui/MergeAdapter;->getAdapterAt(I)Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    .line 182
    .local v8, "len":I
    if-lt p3, v9, :cond_4

    add-int v0, v9, v8

    if-ge p3, v0, :cond_4

    .line 183
    sub-int v0, p3, v9

    add-int/lit8 v7, v0, -0x1

    .line 184
    .local v7, "item":I
    packed-switch v6, :pswitch_data_0

    .line 207
    .end local v7    # "item":I
    .end local v8    # "len":I
    :cond_0
    :goto_1
    return-void

    .line 186
    .restart local v7    # "item":I
    .restart local v8    # "len":I
    :pswitch_0
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->reqsCollapsed:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ge v7, v0, :cond_2

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->reqs:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/data/GameRequest;

    invoke-direct {p0, v0}, Lcom/vkontakte/android/fragments/GamesFragment;->openReq(Lcom/vkontakte/android/data/GameRequest;)V

    goto :goto_1

    .line 189
    :cond_2
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/GamesFragment;->expandReqs()V

    goto :goto_1

    .line 193
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->feed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 194
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->feed:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/data/GameFeedEntry;

    iget-object v0, v0, Lcom/vkontakte/android/data/GameFeedEntry;->app:Lcom/vkontakte/android/data/ApiApplication;

    iget-object v0, v0, Lcom/vkontakte/android/data/ApiApplication;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GamesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GamesFragment;->feed:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/data/GameFeedEntry;

    iget-object v3, v3, Lcom/vkontakte/android/data/GameFeedEntry;->app:Lcom/vkontakte/android/data/ApiApplication;

    iget v3, v3, Lcom/vkontakte/android/data/ApiApplication;->id:I

    iget-object v4, p0, Lcom/vkontakte/android/fragments/GamesFragment;->source:Ljava/lang/String;

    const-string v5, "activity"

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/data/Games;->open(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 196
    :cond_3
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/GamesFragment;->openFeed()V

    goto :goto_1

    .line 200
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->catalog:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/data/ApiApplication;

    iget-object v0, v0, Lcom/vkontakte/android/data/ApiApplication;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GamesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GamesFragment;->catalog:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/data/ApiApplication;

    iget v3, v3, Lcom/vkontakte/android/data/ApiApplication;->id:I

    iget-object v4, p0, Lcom/vkontakte/android/fragments/GamesFragment;->source:Ljava/lang/String;

    const-string v5, "catalog"

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/data/Games;->open(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 205
    .end local v7    # "item":I
    :cond_4
    add-int/2addr v9, v8

    .line 180
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->onResume()V

    .line 107
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->firstResume:Z

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GamesFragment;->refresh()V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/GamesFragment;->firstResume:Z

    goto :goto_0
.end method
