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
.field public static final TYPE_BLACKLIST:I = 0x8

.field public static final TYPE_CHAT_MEMBERS:I = 0x2

.field public static final TYPE_CHECKINS:I = 0x9

.field public static final TYPE_FAVE:I = 0x4

.field public static final TYPE_FAVE_LINKS:I = 0x7

.field public static final TYPE_FOLLOWERS:I = 0x5

.field public static final TYPE_GROUP_MEMBERS:I = 0x1

.field public static final TYPE_LIKES:I = 0x0

.field public static final TYPE_POLL_VOTERS:I = 0x6

.field public static final TYPE_PREDEFINED:I = 0x3


# instance fields
.field private adapter:Landroid/widget/ListAdapter;

.field private args:Landroid/os/Bundle;

.field private contentWrap:Landroid/widget/FrameLayout;

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field protected dataLoading:Z

.field private dataOffset:I

.field private emptyView:Landroid/widget/TextView;

.field protected footerView:Landroid/widget/FrameLayout;

.field protected hasExtended:Z

.field protected imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field public list:Landroid/widget/ListView;

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
.method public constructor <init>(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_type"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/UserListView;->users:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/UserListView;->preloadedUsers:Ljava/util/Vector;

    .line 57
    iput-boolean v1, p0, Lcom/vkontakte/android/UserListView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/UserListView;->moreAvailable:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/UserListView;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/UserListView;->preloadOnReady:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/UserListView;->hasExtended:Z

    .line 63
    iput v1, p0, Lcom/vkontakte/android/UserListView;->dataOffset:I

    .line 67
    iput p2, p0, Lcom/vkontakte/android/UserListView;->type:I

    .line 68
    iget v0, p0, Lcom/vkontakte/android/UserListView;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    if-eqz p3, :cond_1

    const-string v0, "extended"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/UserListView;->hasExtended:Z

    .line 69
    :cond_1
    iput-object p3, p0, Lcom/vkontakte/android/UserListView;->args:Landroid/os/Bundle;

    .line 70
    invoke-direct {p0}, Lcom/vkontakte/android/UserListView;->init()V

    .line 71
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/UserListView;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/vkontakte/android/UserListView;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/UserListView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/UserListView;->contentWrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/UserListView;I)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/vkontakte/android/UserListView;->dataOffset:I

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/UserListView;)Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/UserListView;->adapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method private init()V
    .locals 10

    .prologue
    const/high16 v9, 0x41f00000    # 30.0f

    const/high16 v5, 0x40e00000    # 7.0f

    const/16 v8, 0x11

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 74
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/UserListView;->footerView:Landroid/widget/FrameLayout;

    .line 75
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 76
    .local v2, "pb":Landroid/widget/ProgressBar;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 77
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 78
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 80
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->footerView:Landroid/widget/FrameLayout;

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {v3, v7, v4, v7, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 81
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 83
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/UserListView;->setBackgroundColor(I)V

    .line 85
    new-instance v3, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    .line 86
    new-instance v3, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v4, Lcom/vkontakte/android/UserListView$UserPhotosAdapter;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/vkontakte/android/UserListView$UserPhotosAdapter;-><init>(Lcom/vkontakte/android/UserListView;Lcom/vkontakte/android/UserListView$UserPhotosAdapter;)V

    iget-object v5, p0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    invoke-direct {v3, v4, v5, p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v3, p0, Lcom/vkontakte/android/UserListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 88
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/UserListView;->adapter:Landroid/widget/ListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 90
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-gt v3, v4, :cond_0

    .line 91
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 92
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 94
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/vkontakte/android/UserListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 95
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    const v4, 0x7f0200da

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelector(I)V

    .line 96
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v3, v4, v7, v5, v7}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 97
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    const/high16 v4, 0x2000000

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 98
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const v5, -0x1a1a1b

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 102
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/UserListView;->contentWrap:Landroid/widget/FrameLayout;

    .line 104
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->contentWrap:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 106
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/UserListView;->emptyView:Landroid/widget/TextView;

    .line 107
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->emptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f070078

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 108
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 109
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->emptyView:Landroid/widget/TextView;

    const v4, 0x7f0601ec

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->contentWrap:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/vkontakte/android/UserListView;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 111
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/vkontakte/android/UserListView;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 113
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->contentWrap:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 114
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->contentWrap:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/UserListView;->addView(Landroid/view/View;)V

    .line 116
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/UserListView;->progress:Landroid/widget/ProgressBar;

    .line 117
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 118
    .local v1, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 119
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 121
    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/UserListView;->addView(Landroid/view/View;)V

    .line 122
    return-void
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/vkontakte/android/UserListView$UserListAdapter;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/UserListView$UserListAdapter;-><init>(Lcom/vkontakte/android/UserListView;)V

    return-object v0
.end method

.method public invalidateList()V
    .locals 3

    .prologue
    .line 458
    new-instance v0, Lcom/vkontakte/android/UserListView$9;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/UserListView$9;-><init>(Lcom/vkontakte/android/UserListView;)V

    .line 460
    const-wide/16 v1, 0xa

    .line 458
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/UserListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 461
    return-void
.end method

.method public loadData()V
    .locals 13

    .prologue
    const/16 v8, 0x32

    const/4 v12, 0x1

    const/16 v11, 0x8

    const/16 v9, 0x64

    const/4 v10, 0x0

    .line 161
    iget-boolean v0, p0, Lcom/vkontakte/android/UserListView;->dataLoading:Z

    if-eqz v0, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget v0, p0, Lcom/vkontakte/android/UserListView;->type:I

    if-nez v0, :cond_2

    .line 163
    new-instance v0, Lcom/vkontakte/android/api/LikesGetList;

    iget-object v1, p0, Lcom/vkontakte/android/UserListView;->args:Landroid/os/Bundle;

    const-string v2, "ltype"

    invoke-virtual {v1, v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/UserListView;->args:Landroid/os/Bundle;

    const-string v3, "lptype"

    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->args:Landroid/os/Bundle;

    const-string v4, "oid"

    invoke-virtual {v3, v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/UserListView;->args:Landroid/os/Bundle;

    const-string v5, "item_id"

    invoke-virtual {v4, v5, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/UserListView;->users:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    iget-boolean v6, p0, Lcom/vkontakte/android/UserListView;->preloading:Z

    if-eqz v6, :cond_b

    move v6, v8

    :goto_1
    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/api/LikesGetList;-><init>(IIIIII)V

    .line 164
    new-instance v1, Lcom/vkontakte/android/UserListView$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/UserListView$1;-><init>(Lcom/vkontakte/android/UserListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/LikesGetList;->setCallback(Lcom/vkontakte/android/api/LikesGetList$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 194
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 163
    iput-object v0, p0, Lcom/vkontakte/android/UserListView;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 196
    :cond_2
    iget v0, p0, Lcom/vkontakte/android/UserListView;->type:I

    if-ne v0, v12, :cond_3

    .line 197
    new-instance v0, Lcom/vkontakte/android/api/GroupsGetMembers;

    iget-object v1, p0, Lcom/vkontakte/android/UserListView;->args:Landroid/os/Bundle;

    const-string v2, "gid"

    invoke-virtual {v1, v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/UserListView;->users:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v0, v1, v2, v9}, Lcom/vkontakte/android/api/GroupsGetMembers;-><init>(III)V

    .line 198
    new-instance v1, Lcom/vkontakte/android/UserListView$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/UserListView$2;-><init>(Lcom/vkontakte/android/UserListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/GroupsGetMembers;->setCallback(Lcom/vkontakte/android/api/GroupsGetMembers$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 228
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 197
    iput-object v0, p0, Lcom/vkontakte/android/UserListView;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 230
    :cond_3
    iget v0, p0, Lcom/vkontakte/android/UserListView;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 231
    iget-object v0, p0, Lcom/vkontakte/android/UserListView;->args:Landroid/os/Bundle;

    const-string v1, "users"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 232
    .local v7, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v0, p0, Lcom/vkontakte/android/UserListView;->users:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 233
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->updateList()V

    .line 234
    iput-boolean v10, p0, Lcom/vkontakte/android/UserListView;->moreAvailable:Z

    .line 235
    iget-object v0, p0, Lcom/vkontakte/android/UserListView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/vkontakte/android/UserListView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/vkontakte/android/UserListView;->contentWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vkontakte/android/UserListView;->contentWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 239
    .end local v7    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_4
    iget v0, p0, Lcom/vkontakte/android/UserListView;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 240
    new-instance v0, Lcom/vkontakte/android/api/SubscriptionsGetFollowers;

    iget-object v1, p0, Lcom/vkontakte/android/UserListView;->args:Landroid/os/Bundle;

    const-string v2, "uid"

    invoke-virtual {v1, v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/UserListView;->users:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v0, v1, v2, v9}, Lcom/vkontakte/android/api/SubscriptionsGetFollowers;-><init>(III)V

    .line 241
    new-instance v1, Lcom/vkontakte/android/UserListView$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/UserListView$3;-><init>(Lcom/vkontakte/android/UserListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/SubscriptionsGetFollowers;->setCallback(Lcom/vkontakte/android/api/SubscriptionsGetFollowers$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 271
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 240
    iput-object v0, p0, Lcom/vkontakte/android/UserListView;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 273
    :cond_5
    iget v0, p0, Lcom/vkontakte/android/UserListView;->type:I

    if-ne v0, v11, :cond_6

    .line 274
    new-instance v0, Lcom/vkontakte/android/api/AccountGetBanned;

    iget-object v1, p0, Lcom/vkontakte/android/UserListView;->users:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v0, v1, v9}, Lcom/vkontakte/android/api/AccountGetBanned;-><init>(II)V

    .line 275
    new-instance v1, Lcom/vkontakte/android/UserListView$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/UserListView$4;-><init>(Lcom/vkontakte/android/UserListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AccountGetBanned;->setCallback(Lcom/vkontakte/android/api/AccountGetBanned$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 305
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 274
    iput-object v0, p0, Lcom/vkontakte/android/UserListView;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 307
    :cond_6
    iget v0, p0, Lcom/vkontakte/android/UserListView;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 308
    new-instance v0, Lcom/vkontakte/android/api/PollsGetVoters;

    iget-object v1, p0, Lcom/vkontakte/android/UserListView;->args:Landroid/os/Bundle;

    const-string v2, "oid"

    invoke-virtual {v1, v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/UserListView;->args:Landroid/os/Bundle;

    const-string v3, "poll_id"

    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/UserListView;->args:Landroid/os/Bundle;

    const-string v4, "answer_id"

    invoke-virtual {v3, v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/UserListView;->users:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/PollsGetVoters;-><init>(IIIII)V

    .line 309
    new-instance v1, Lcom/vkontakte/android/UserListView$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/UserListView$5;-><init>(Lcom/vkontakte/android/UserListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PollsGetVoters;->setCallback(Lcom/vkontakte/android/api/PollsGetVoters$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 339
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 308
    iput-object v0, p0, Lcom/vkontakte/android/UserListView;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 341
    :cond_7
    iget v0, p0, Lcom/vkontakte/android/UserListView;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 342
    iget-object v0, p0, Lcom/vkontakte/android/UserListView;->users:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 343
    iput-boolean v12, p0, Lcom/vkontakte/android/UserListView;->dataLoading:Z

    .line 344
    new-instance v0, Lcom/vkontakte/android/api/FaveGetUsers;

    invoke-direct {v0}, Lcom/vkontakte/android/api/FaveGetUsers;-><init>()V

    .line 345
    new-instance v1, Lcom/vkontakte/android/UserListView$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/UserListView$6;-><init>(Lcom/vkontakte/android/UserListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FaveGetUsers;->setCallback(Lcom/vkontakte/android/api/FaveGetUsers$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 370
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 344
    iput-object v0, p0, Lcom/vkontakte/android/UserListView;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 372
    :cond_8
    iget v0, p0, Lcom/vkontakte/android/UserListView;->type:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    .line 373
    new-instance v0, Lcom/vkontakte/android/api/FaveGetLinks;

    invoke-direct {v0}, Lcom/vkontakte/android/api/FaveGetLinks;-><init>()V

    .line 374
    new-instance v1, Lcom/vkontakte/android/UserListView$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/UserListView$7;-><init>(Lcom/vkontakte/android/UserListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FaveGetLinks;->setCallback(Lcom/vkontakte/android/api/FaveGetLinks$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 397
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 373
    iput-object v0, p0, Lcom/vkontakte/android/UserListView;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 399
    :cond_9
    iget v0, p0, Lcom/vkontakte/android/UserListView;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 400
    new-instance v0, Lcom/vkontakte/android/api/PlacesGetCheckinProfiles;

    iget-object v1, p0, Lcom/vkontakte/android/UserListView;->args:Landroid/os/Bundle;

    const-string v2, "place_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/UserListView;->dataOffset:I

    iget-boolean v3, p0, Lcom/vkontakte/android/UserListView;->preloading:Z

    if-eqz v3, :cond_a

    const/16 v8, 0x19

    :cond_a
    invoke-direct {v0, v1, v2, v8}, Lcom/vkontakte/android/api/PlacesGetCheckinProfiles;-><init>(III)V

    .line 401
    new-instance v1, Lcom/vkontakte/android/UserListView$8;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/UserListView$8;-><init>(Lcom/vkontakte/android/UserListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PlacesGetCheckinProfiles;->setCallback(Lcom/vkontakte/android/api/PlacesGetCheckinProfiles$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 432
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 400
    iput-object v0, p0, Lcom/vkontakte/android/UserListView;->currentReq:Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    :cond_b
    move v6, v9

    .line 163
    goto/16 :goto_1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/vkontakte/android/UserListView;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/UserListView;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 158
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 445
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p3, v2

    .line 446
    iget v2, p0, Lcom/vkontakte/android/UserListView;->type:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 447
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/LinkRedirActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 448
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/vkontakte/android/UserListView;->users:Ljava/util/Vector;

    invoke-virtual {v2, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 449
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 455
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 451
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 452
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "id"

    iget-object v2, p0, Lcom/vkontakte/android/UserListView;->users:Ljava/util/Vector;

    invoke-virtual {v2, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 453
    const-string v3, "ProfileFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v3, v0, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/vkontakte/android/UserListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 465
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/vkontakte/android/UserListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 469
    return-void
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 130
    iget-boolean v0, p0, Lcom/vkontakte/android/UserListView;->dataLoading:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/UserListView;->preloading:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/vkontakte/android/UserListView;->moreAvailable:Z

    if-eqz v0, :cond_1

    .line 131
    iget-boolean v0, p0, Lcom/vkontakte/android/UserListView;->preloading:Z

    if-eqz v0, :cond_2

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/UserListView;->preloading:Z

    .line 133
    iput-boolean v2, p0, Lcom/vkontakte/android/UserListView;->preloadOnReady:Z

    .line 144
    :cond_1
    :goto_0
    return-void

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/UserListView;->preloadedUsers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/vkontakte/android/UserListView;->users:Ljava/util/Vector;

    iget-object v1, p0, Lcom/vkontakte/android/UserListView;->preloadedUsers:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 136
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->updateList()V

    .line 137
    iget-object v0, p0, Lcom/vkontakte/android/UserListView;->preloadedUsers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 138
    iput-boolean v2, p0, Lcom/vkontakte/android/UserListView;->preloading:Z

    .line 139
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->loadData()V

    goto :goto_0

    .line 141
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListView;->loadData()V

    goto :goto_0
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/vkontakte/android/UserListView;->adapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 439
    iget-object v0, p0, Lcom/vkontakte/android/UserListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 441
    return-void
.end method
