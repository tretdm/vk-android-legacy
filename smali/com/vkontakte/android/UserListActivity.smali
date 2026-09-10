.class public Lcom/vkontakte/android/UserListActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "UserListActivity.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/UserListActivity$UserListAdapter;,
        Lcom/vkontakte/android/UserListActivity$UserPhotosAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/CustomTitleActivity;",
        "Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static TYPE_CHAT_MEMBERS:I

.field public static TYPE_GROUP_MEMBERS:I

.field public static TYPE_LIKES:I

.field public static TYPE_PREDEFINED:I


# instance fields
.field protected contentView:Landroid/widget/FrameLayout;

.field protected dataLoading:Z

.field protected footerView:Landroid/widget/FrameLayout;

.field protected hasExtended:Z

.field protected imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field protected list:Lcom/vkontakte/android/ui/RefreshableListView;

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
    .line 35
    const/4 v0, 0x0

    sput v0, Lcom/vkontakte/android/UserListActivity;->TYPE_LIKES:I

    .line 36
    const/4 v0, 0x1

    sput v0, Lcom/vkontakte/android/UserListActivity;->TYPE_GROUP_MEMBERS:I

    .line 37
    const/4 v0, 0x2

    sput v0, Lcom/vkontakte/android/UserListActivity;->TYPE_CHAT_MEMBERS:I

    .line 38
    const/4 v0, 0x3

    sput v0, Lcom/vkontakte/android/UserListActivity;->TYPE_PREDEFINED:I

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/UserListActivity;->preloadedUsers:Ljava/util/Vector;

    .line 46
    iput-boolean v1, p0, Lcom/vkontakte/android/UserListActivity;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/UserListActivity;->moreAvailable:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/UserListActivity;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/UserListActivity;->preloadOnReady:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/UserListActivity;->hasExtended:Z

    .line 33
    return-void
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/vkontakte/android/UserListActivity$UserListAdapter;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/UserListActivity$UserListAdapter;-><init>(Lcom/vkontakte/android/UserListActivity;)V

    return-object v0
.end method

.method public loadData()V
    .locals 10

    .prologue
    const/16 v7, 0x64

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 127
    iget-boolean v0, p0, Lcom/vkontakte/android/UserListActivity;->dataLoading:Z

    if-eqz v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget v0, p0, Lcom/vkontakte/android/UserListActivity;->type:I

    sget v1, Lcom/vkontakte/android/UserListActivity;->TYPE_LIKES:I

    if-ne v0, v1, :cond_2

    .line 129
    new-instance v0, Lcom/vkontakte/android/api/LikesGetList;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ltype"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "oid"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "item_id"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    iget-boolean v5, p0, Lcom/vkontakte/android/UserListActivity;->preloading:Z

    if-eqz v5, :cond_5

    const/16 v5, 0x32

    :goto_1
    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/LikesGetList;-><init>(IIIII)V

    .line 130
    new-instance v1, Lcom/vkontakte/android/UserListActivity$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/UserListActivity$1;-><init>(Lcom/vkontakte/android/UserListActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/LikesGetList;->setCallback(Lcom/vkontakte/android/api/LikesGetList$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 158
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 160
    :cond_2
    iget v0, p0, Lcom/vkontakte/android/UserListActivity;->type:I

    sget v1, Lcom/vkontakte/android/UserListActivity;->TYPE_GROUP_MEMBERS:I

    if-ne v0, v1, :cond_3

    .line 161
    new-instance v0, Lcom/vkontakte/android/api/GroupsGetMembers;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "gid"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v0, v1, v2, v7}, Lcom/vkontakte/android/api/GroupsGetMembers;-><init>(III)V

    .line 162
    new-instance v1, Lcom/vkontakte/android/UserListActivity$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/UserListActivity$2;-><init>(Lcom/vkontakte/android/UserListActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/GroupsGetMembers;->setCallback(Lcom/vkontakte/android/api/GroupsGetMembers$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 190
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 192
    :cond_3
    iget v0, p0, Lcom/vkontakte/android/UserListActivity;->type:I

    sget v1, Lcom/vkontakte/android/UserListActivity;->TYPE_CHAT_MEMBERS:I

    if-ne v0, v1, :cond_4

    .line 193
    new-instance v0, Lcom/vkontakte/android/api/MessagesGetChatUsers;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "chat_id"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/MessagesGetChatUsers;-><init>(I)V

    .line 194
    new-instance v1, Lcom/vkontakte/android/UserListActivity$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/UserListActivity$3;-><init>(Lcom/vkontakte/android/UserListActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesGetChatUsers;->setCallback(Lcom/vkontakte/android/api/MessagesGetChatUsers$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 222
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 224
    :cond_4
    iget v0, p0, Lcom/vkontakte/android/UserListActivity;->type:I

    sget v1, Lcom/vkontakte/android/UserListActivity;->TYPE_PREDEFINED:I

    if-ne v0, v1, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 226
    .local v6, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 227
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->updateList()V

    .line 228
    iput-boolean v8, p0, Lcom/vkontakte/android/UserListActivity;->moreAvailable:Z

    .line 229
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .end local v6    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_5
    move v5, v7

    .line 129
    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, -0x2

    const/high16 v8, 0x41f00000    # 30.0f

    const/high16 v5, 0x40e00000    # 7.0f

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/UserListActivity;->contentView:Landroid/widget/FrameLayout;

    .line 52
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/UserListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/UserListActivity;->setContentView(Landroid/view/View;)V

    .line 55
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/UserListActivity;->footerView:Landroid/widget/FrameLayout;

    .line 56
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 57
    .local v2, "pb":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020206

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 59
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 60
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 62
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity;->footerView:Landroid/widget/FrameLayout;

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {v3, v6, v4, v6, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 63
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 65
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extended"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/vkontakte/android/UserListActivity;->hasExtended:Z

    .line 67
    new-instance v3, Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/UserListActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 68
    new-instance v3, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v4, Lcom/vkontakte/android/UserListActivity$UserPhotosAdapter;

    invoke-direct {v4, p0, v7}, Lcom/vkontakte/android/UserListActivity$UserPhotosAdapter;-><init>(Lcom/vkontakte/android/UserListActivity;Lcom/vkontakte/android/UserListActivity$UserPhotosAdapter;)V

    iget-object v5, p0, Lcom/vkontakte/android/UserListActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-direct {v3, v4, v5, p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/ListView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v3, p0, Lcom/vkontakte/android/UserListActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 69
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v4, p0, Lcom/vkontakte/android/UserListActivity;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4, v7, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 70
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 73
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 74
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 75
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v4, p0, Lcom/vkontakte/android/UserListActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 77
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setRefreshEnabled(Z)V

    .line 78
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/vkontakte/android/UserListActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 81
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/UserListActivity;->progress:Landroid/widget/ProgressBar;

    .line 82
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020206

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 84
    .local v1, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 85
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 87
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/vkontakte/android/UserListActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 89
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/UserListActivity;->type:I

    .line 91
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->loadData()V

    .line 92
    return-void
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
    .line 242
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p3, v1

    .line 243
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "wall_id"

    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    invoke-virtual {v1, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    iget v1, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/UserListActivity;->startActivity(Landroid/content/Intent;)V

    .line 246
    return-void
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 100
    iget-boolean v0, p0, Lcom/vkontakte/android/UserListActivity;->dataLoading:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/UserListActivity;->preloading:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/vkontakte/android/UserListActivity;->moreAvailable:Z

    if-eqz v0, :cond_1

    .line 101
    iget-boolean v0, p0, Lcom/vkontakte/android/UserListActivity;->preloading:Z

    if-eqz v0, :cond_2

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/UserListActivity;->preloading:Z

    .line 103
    iput-boolean v2, p0, Lcom/vkontakte/android/UserListActivity;->preloadOnReady:Z

    .line 114
    :cond_1
    :goto_0
    return-void

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity;->preloadedUsers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 105
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity;->preloadedUsers:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 106
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->updateList()V

    .line 107
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity;->preloadedUsers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 108
    iput-boolean v2, p0, Lcom/vkontakte/android/UserListActivity;->preloading:Z

    .line 109
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->loadData()V

    goto :goto_0

    .line 111
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->loadData()V

    goto :goto_0
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 235
    new-instance v0, Lcom/vkontakte/android/UserListActivity$4;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/UserListActivity$4;-><init>(Lcom/vkontakte/android/UserListActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/UserListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 238
    return-void
.end method
