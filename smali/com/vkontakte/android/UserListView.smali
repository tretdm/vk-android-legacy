.class public Lcom/vkontakte/android/UserListView;
.super Landroid/widget/FrameLayout;
.source "UserListView.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/UserListView$UserListAdapter;,
        Lcom/vkontakte/android/UserListView$UserPhotosAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static TYPE_CHAT_MEMBERS:I

.field public static TYPE_FAVE:I

.field public static TYPE_FAVE_LINKS:I

.field public static TYPE_GROUP_MEMBERS:I

.field public static TYPE_LIKES:I

.field public static TYPE_PREDEFINED:I


# instance fields
.field private adapter:Landroid/widget/ListAdapter;

.field protected dataLoading:Z

.field protected footerView:Landroid/widget/FrameLayout;

.field protected hasExtended:Z

.field protected imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field protected list:Landroid/widget/ListView;

.field protected moreAvailable:Z

.field protected preloadOnReady:Z

.field protected preloadedUsers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field protected preloading:Z

.field protected progress:Landroid/widget/ProgressBar;

.field private type:I

.field protected users:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/vkontakte/android/UserListView;->TYPE_LIKES:I

    .line 31
    const/4 v0, 0x1

    sput v0, Lcom/vkontakte/android/UserListView;->TYPE_GROUP_MEMBERS:I

    .line 32
    const/4 v0, 0x2

    sput v0, Lcom/vkontakte/android/UserListView;->TYPE_CHAT_MEMBERS:I

    .line 33
    const/4 v0, 0x3

    sput v0, Lcom/vkontakte/android/UserListView;->TYPE_PREDEFINED:I

    .line 34
    const/4 v0, 0x4

    sput v0, Lcom/vkontakte/android/UserListView;->TYPE_FAVE:I

    .line 35
    const/4 v0, 0x5

    sput v0, Lcom/vkontakte/android/UserListView;->TYPE_FAVE_LINKS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_type"    # I

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/UserListView;->users:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/UserListView;->preloadedUsers:Ljava/util/Vector;

    .line 43
    iput-boolean v1, p0, Lcom/vkontakte/android/UserListView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/UserListView;->moreAvailable:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/UserListView;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/UserListView;->preloadOnReady:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/UserListView;->hasExtended:Z

    .line 48
    iput p2, p0, Lcom/vkontakte/android/UserListView;->type:I

    .line 49
    iget v0, p0, Lcom/vkontakte/android/UserListView;->type:I

    sget v1, Lcom/vkontakte/android/UserListView;->TYPE_FAVE_LINKS:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/UserListView;->hasExtended:Z

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/UserListView;->init()V

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/UserListView;)Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/UserListView;->adapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method private init()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, -0x2

    const/high16 v7, 0x41f00000    # 30.0f

    const/high16 v5, 0x40e00000    # 7.0f

    const/4 v6, 0x0

    .line 54
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/UserListView;->footerView:Landroid/widget/FrameLayout;

    .line 55
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 56
    .local v2, "pb":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020224

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 58
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 59
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 61
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->footerView:Landroid/widget/FrameLayout;

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {v3, v6, v4, v6, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 62
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 64
    new-instance v3, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    .line 65
    new-instance v3, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v4, Lcom/vkontakte/android/UserListView$UserPhotosAdapter;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/vkontakte/android/UserListView$UserPhotosAdapter;-><init>(Lcom/vkontakte/android/UserListView;Lcom/vkontakte/android/UserListView$UserPhotosAdapter;)V

    iget-object v5, p0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    invoke-direct {v3, v4, v5, p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/ListView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v3, p0, Lcom/vkontakte/android/UserListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 67
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/UserListView;->adapter:Landroid/widget/ListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 70
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 71
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 72
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/vkontakte/android/UserListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 75
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/UserListView;->addView(Landroid/view/View;)V

    .line 78
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/UserListView;->progress:Landroid/widget/ProgressBar;

    .line 79
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020224

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 81
    .local v1, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 82
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 84
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/UserListView;->addView(Landroid/view/View;)V

    .line 85
    return-void
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/vkontakte/android/UserListView$UserListAdapter;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/UserListView$UserListAdapter;-><init>(Lcom/vkontakte/android/UserListView;)V

    return-object v0
.end method

.method public invalidateList()V
    .locals 3

    .prologue
    .line 194
    new-instance v0, Lcom/vkontakte/android/UserListView$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/UserListView$3;-><init>(Lcom/vkontakte/android/UserListView;)V

    .line 196
    const-wide/16 v1, 0xa

    .line 194
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/UserListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    return-void
.end method

.method public loadData()V
    .locals 2

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/vkontakte/android/UserListView;->dataLoading:Z

    if-eqz v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget v0, p0, Lcom/vkontakte/android/UserListView;->type:I

    sget v1, Lcom/vkontakte/android/UserListView;->TYPE_FAVE:I

    if-ne v0, v1, :cond_2

    .line 122
    new-instance v0, Lcom/vkontakte/android/api/FaveGetUsers;

    invoke-direct {v0}, Lcom/vkontakte/android/api/FaveGetUsers;-><init>()V

    .line 123
    new-instance v1, Lcom/vkontakte/android/UserListView$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/UserListView$1;-><init>(Lcom/vkontakte/android/UserListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FaveGetUsers;->setCallback(Lcom/vkontakte/android/api/FaveGetUsers$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 144
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 146
    :cond_2
    iget v0, p0, Lcom/vkontakte/android/UserListView;->type:I

    sget v1, Lcom/vkontakte/android/UserListView;->TYPE_FAVE_LINKS:I

    if-ne v0, v1, :cond_0

    .line 147
    new-instance v0, Lcom/vkontakte/android/api/FaveGetLinks;

    invoke-direct {v0}, Lcom/vkontakte/android/api/FaveGetLinks;-><init>()V

    .line 148
    new-instance v1, Lcom/vkontakte/android/UserListView$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/UserListView$2;-><init>(Lcom/vkontakte/android/UserListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FaveGetLinks;->setCallback(Lcom/vkontakte/android/api/FaveGetLinks$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
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
    .line 181
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p3, v1

    .line 182
    iget v1, p0, Lcom/vkontakte/android/UserListView;->type:I

    sget v2, Lcom/vkontakte/android/UserListView;->TYPE_FAVE_LINKS:I

    if-ne v1, v2, :cond_0

    .line 183
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/LinkRedirActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vkontakte/android/UserListView;->users:Ljava/util/Vector;

    invoke-virtual {v1, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 191
    :goto_0
    return-void

    .line 187
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "wall_id"

    iget-object v1, p0, Lcom/vkontakte/android/UserListView;->users:Ljava/util/Vector;

    invoke-virtual {v1, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    iget v1, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 93
    iget-boolean v0, p0, Lcom/vkontakte/android/UserListView;->dataLoading:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/UserListView;->preloading:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/vkontakte/android/UserListView;->moreAvailable:Z

    if-eqz v0, :cond_1

    .line 94
    iget-boolean v0, p0, Lcom/vkontakte/android/UserListView;->preloading:Z

    if-eqz v0, :cond_2

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/UserListView;->preloading:Z

    .line 96
    iput-boolean v2, p0, Lcom/vkontakte/android/UserListView;->preloadOnReady:Z

    .line 107
    :cond_1
    :goto_0
    return-void

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/UserListView;->preloadedUsers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/vkontakte/android/UserListView;->users:Ljava/util/Vector;

    iget-object v1, p0, Lcom/vkontakte/android/UserListView;->preloadedUsers:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 99
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->updateList()V

    .line 100
    iget-object v0, p0, Lcom/vkontakte/android/UserListView;->preloadedUsers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 101
    iput-boolean v2, p0, Lcom/vkontakte/android/UserListView;->preloading:Z

    .line 102
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->loadData()V

    goto :goto_0

    .line 104
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->loadData()V

    goto :goto_0
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/vkontakte/android/UserListView;->adapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 177
    return-void
.end method
