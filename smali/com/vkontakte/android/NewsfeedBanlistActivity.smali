.class public Lcom/vkontakte/android/NewsfeedBanlistActivity;
.super Landroid/app/Activity;
.source "NewsfeedBanlistActivity.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;,
        Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;

.field protected contentView:Landroid/widget/FrameLayout;

.field private contentWrap:Landroid/widget/FrameLayout;

.field protected dataLoading:Z

.field private emptyView:Landroid/widget/TextView;

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
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

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

    .line 254
    return-void
.end method

.method static synthetic access$100(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewsfeedBanlistActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->users:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewsfeedBanlistActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->groups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewsfeedBanlistActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->adapter:Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewsfeedBanlistActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->contentWrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewsfeedBanlistActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkontakte/android/NewsfeedBanlistActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewsfeedBanlistActivity;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->unban(I)V

    return-void
.end method

.method private loadData()V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lcom/vkontakte/android/api/NewsfeedGetBanned;

    invoke-direct {v0}, Lcom/vkontakte/android/api/NewsfeedGetBanned;-><init>()V

    new-instance v1, Lcom/vkontakte/android/NewsfeedBanlistActivity$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewsfeedBanlistActivity$1;-><init>(Lcom/vkontakte/android/NewsfeedBanlistActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/NewsfeedGetBanned;->setCallback(Lcom/vkontakte/android/api/NewsfeedGetBanned$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 129
    return-void
.end method

.method private unban(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 132
    new-instance v0, Lcom/vkontakte/android/api/NewsfeedDeleteBan;

    invoke-direct {v0, p1}, Lcom/vkontakte/android/api/NewsfeedDeleteBan;-><init>(I)V

    new-instance v1, Lcom/vkontakte/android/NewsfeedBanlistActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/NewsfeedBanlistActivity$2;-><init>(Lcom/vkontakte/android/NewsfeedBanlistActivity;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/NewsfeedDeleteBan;->setCallback(Lcom/vkontakte/android/api/NewsfeedDeleteBan$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 164
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x11

    const/high16 v7, 0x42200000    # 40.0f

    const/high16 v6, 0x41200000    # 10.0f

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->contentView:Landroid/widget/FrameLayout;

    .line 45
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 46
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

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->setContentView(Landroid/view/View;)V

    .line 59
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    .line 60
    new-instance v1, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v2, Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;-><init>(Lcom/vkontakte/android/NewsfeedBanlistActivity;Lcom/vkontakte/android/NewsfeedBanlistActivity$1;)V

    iget-object v3, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    invoke-direct {v1, v2, v3, p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 62
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;-><init>(Lcom/vkontakte/android/NewsfeedBanlistActivity;)V

    iput-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->adapter:Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x1a1a1b

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 65
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 66
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 67
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 70
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 71
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    const v2, 0x7f020077

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(I)V

    .line 72
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 73
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 74
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->contentWrap:Landroid/widget/FrameLayout;

    .line 77
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->contentWrap:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 79
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->emptyView:Landroid/widget/TextView;

    .line 80
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->emptyView:Landroid/widget/TextView;

    const v2, 0x7f0e0012

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 81
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 82
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->emptyView:Landroid/widget/TextView;

    const v2, 0x7f0d0186

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->emptyView:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 84
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->contentWrap:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 85
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 86
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->contentWrap:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 87
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->contentWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 89
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->progress:Landroid/widget/ProgressBar;

    .line 90
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 91
    .local v0, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 92
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 94
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 96
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 98
    invoke-direct {p0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->loadData()V

    .line 99
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
    .line 330
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p3, v2

    .line 331
    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->adapter:Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;

    invoke-virtual {v2, p3}, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->resolveIndex(I)[I

    move-result-object v1

    .line 332
    .local v1, "p":[I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 333
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "id"

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

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 334
    const-string v2, "ProfileFragment"

    invoke-static {v2, v0, p0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 335
    return-void

    .line 333
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->groups:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 102
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->finish()V

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 168
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 169
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 173
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 174
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/vkontakte/android/NewsfeedBanlistActivity$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewsfeedBanlistActivity$3;-><init>(Lcom/vkontakte/android/NewsfeedBanlistActivity;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    :cond_0
    return-void
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 326
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 0

    .prologue
    .line 314
    return-void
.end method
