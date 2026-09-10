.class public Lcom/vkontakte/android/NewsfeedBanlistActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "NewsfeedBanlistActivity.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;,
        Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/CustomTitleActivity;",
        "Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;

.field protected contentView:Landroid/widget/FrameLayout;

.field protected dataLoading:Z

.field private groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field protected list:Landroid/widget/ListView;

.field protected progress:Landroid/widget/ProgressBar;

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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->users:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->groups:Ljava/util/ArrayList;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->dataLoading:Z

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewsfeedBanlistActivity;I)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->unban(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->users:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->groups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->adapter:Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;

    return-object v0
.end method

.method private loadData()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/vkontakte/android/api/NewsfeedGetBanned;

    invoke-direct {v0}, Lcom/vkontakte/android/api/NewsfeedGetBanned;-><init>()V

    .line 81
    new-instance v1, Lcom/vkontakte/android/NewsfeedBanlistActivity$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewsfeedBanlistActivity$1;-><init>(Lcom/vkontakte/android/NewsfeedBanlistActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/NewsfeedGetBanned;->setCallback(Lcom/vkontakte/android/api/NewsfeedGetBanned$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 97
    return-void
.end method

.method private unban(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 100
    new-instance v0, Lcom/vkontakte/android/api/NewsfeedDeleteBan;

    invoke-direct {v0, p1}, Lcom/vkontakte/android/api/NewsfeedDeleteBan;-><init>(I)V

    .line 101
    new-instance v1, Lcom/vkontakte/android/NewsfeedBanlistActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/NewsfeedBanlistActivity$2;-><init>(Lcom/vkontakte/android/NewsfeedBanlistActivity;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/NewsfeedDeleteBan;->setCallback(Lcom/vkontakte/android/api/NewsfeedDeleteBan$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 130
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 131
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 132
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 40
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->contentView:Landroid/widget/FrameLayout;

    .line 43
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->setContentView(Landroid/view/View;)V

    .line 56
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    .line 57
    new-instance v1, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v2, Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;

    invoke-direct {v2, p0, v7}, Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;-><init>(Lcom/vkontakte/android/NewsfeedBanlistActivity;Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;)V

    iget-object v3, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    invoke-direct {v1, v2, v3, p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/ListView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 59
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;-><init>(Lcom/vkontakte/android/NewsfeedBanlistActivity;)V

    iput-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->adapter:Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 62
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 63
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 64
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 65
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 68
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->progress:Landroid/widget/ProgressBar;

    .line 69
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020224

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 71
    .local v0, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 72
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 74
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 76
    invoke-direct {p0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->loadData()V

    .line 77
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "arg3"    # J
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
    .line 307
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {p2}, Lcom/vkontakte/android/Global;->setViewSel(Landroid/view/View;)V

    .line 308
    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p3, v2

    .line 309
    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->adapter:Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;

    invoke-virtual {v2, p3}, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->resolveIndex(I)[I

    move-result-object v1

    .line 310
    .local v1, "p":[I
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "wall_id"

    const/4 v2, 0x0

    aget v2, v1, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->users:Ljava/util/ArrayList;

    :goto_0
    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->startActivity(Landroid/content/Intent;)V

    .line 313
    return-void

    .line 311
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->groups:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 135
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onPause()V

    .line 136
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/vkontakte/android/NewsfeedBanlistActivity$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewsfeedBanlistActivity$3;-><init>(Lcom/vkontakte/android/NewsfeedBanlistActivity;)V

    .line 138
    const-wide/16 v2, 0x1f4

    .line 136
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 142
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onResume()V

    .line 143
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 144
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/vkontakte/android/NewsfeedBanlistActivity$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewsfeedBanlistActivity$4;-><init>(Lcom/vkontakte/android/NewsfeedBanlistActivity;)V

    .line 148
    const-wide/16 v2, 0xa

    .line 145
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 150
    :cond_0
    return-void
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method
