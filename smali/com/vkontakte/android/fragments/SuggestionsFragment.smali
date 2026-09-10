.class public abstract Lcom/vkontakte/android/fragments/SuggestionsFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "SuggestionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/SuggestionsFragment$UserPhotosAdapter;,
        Lcom/vkontakte/android/fragments/SuggestionsFragment$UsersAdapter;
    }
.end annotation


# instance fields
.field private adapter:Landroid/widget/BaseAdapter;

.field private error:Lcom/vkontakte/android/ui/ErrorView;

.field private firstLoad:Z

.field protected imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field protected list:Landroid/widget/ListView;

.field private needUpdateFriends:Z

.field private needUpdateGroups:Z

.field private progress:Landroid/widget/ProgressBar;

.field protected users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->users:Ljava/util/ArrayList;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->firstLoad:Z

    .line 44
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->needUpdateFriends:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->needUpdateGroups:Z

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/SuggestionsFragment;)Lcom/vkontakte/android/ui/ErrorView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/SuggestionsFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/SuggestionsFragment;)Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->adapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/vkontakte/android/fragments/SuggestionsFragment$UsersAdapter;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment$UsersAdapter;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFragment;)V

    return-object v0
.end method

.method protected getImageLoaderAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/vkontakte/android/fragments/SuggestionsFragment$UserPhotosAdapter;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment$UserPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFragment;)V

    return-object v0
.end method

.method protected abstract getListTitle()Ljava/lang/String;
.end method

.method protected abstract loadData()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->loadData()V

    .line 53
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v11, 0x42200000    # 40.0f

    const/high16 v10, 0x41400000    # 12.0f

    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 56
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 58
    .local v2, "wrap":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    .line 60
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->getListTitle()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "listTitle":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 62
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 63
    .local v1, "txt":Landroid/widget/TextView;
    const v3, -0x868380

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 65
    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 66
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, -0x1

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 68
    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 69
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v3, v1, v9, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 72
    .end local v1    # "txt":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->adapter:Landroid/widget/BaseAdapter;

    .line 73
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 75
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    new-instance v4, Lcom/vkontakte/android/fragments/SuggestionsFragment$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment$1;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060019

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 85
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 86
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 88
    const v3, 0x7f03003f

    invoke-virtual {p1, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/ui/ErrorView;

    iput-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    .line 89
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v3, v8}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 90
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 91
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    new-instance v4, Lcom/vkontakte/android/fragments/SuggestionsFragment$2;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment$2;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFragment;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 100
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->progress:Landroid/widget/ProgressBar;

    .line 101
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->progress:Landroid/widget/ProgressBar;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    const/16 v7, 0x11

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->firstLoad:Z

    if-eqz v3, :cond_1

    .line 103
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 107
    :goto_0
    new-instance v3, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->getImageLoaderAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-direct {v3, v4, v5, v9}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 109
    iput-object v2, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->view:Landroid/view/View;

    .line 110
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->view:Landroid/view/View;

    return-object v3

    .line 105
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroyView()V

    .line 122
    iput-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->view:Landroid/view/View;

    .line 123
    iput-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->adapter:Landroid/widget/BaseAdapter;

    .line 124
    iput-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    .line 125
    iput-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->progress:Landroid/widget/ProgressBar;

    .line 126
    iput-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    .line 127
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 129
    :cond_0
    iput-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 130
    return-void
.end method

.method protected onError(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x12c

    .line 114
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 117
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    goto :goto_0
.end method

.method protected abstract onItemClick(IJLjava/lang/Object;)V
.end method

.method protected onSubscribeClick(I)V
    .locals 5
    .param p1, "pos"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x2

    .line 149
    iget-object v2, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 150
    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    iget v2, v1, Lcom/vkontakte/android/UserProfile;->online:I

    if-eq v2, v4, :cond_0

    iget v2, v1, Lcom/vkontakte/android/UserProfile;->online:I

    if-ne v2, v3, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget v2, v1, Lcom/vkontakte/android/UserProfile;->online:I

    if-nez v2, :cond_2

    .line 153
    iput v4, v1, Lcom/vkontakte/android/UserProfile;->online:I

    .line 154
    iget-object v2, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 155
    const/4 v0, 0x1

    .line 161
    .local v0, "needSubscribe":Z
    :goto_1
    new-instance v2, Lcom/vkontakte/android/api/SetSubscriptionStatus;

    iget v3, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-direct {v2, v3, v0}, Lcom/vkontakte/android/api/SetSubscriptionStatus;-><init>(IZ)V

    .line 162
    new-instance v3, Lcom/vkontakte/android/fragments/SuggestionsFragment$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/vkontakte/android/fragments/SuggestionsFragment$3;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFragment;Lcom/vkontakte/android/UserProfile;Z)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/api/SetSubscriptionStatus;->setCallback(Lcom/vkontakte/android/api/SetSubscriptionStatus$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 176
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 157
    .end local v0    # "needSubscribe":Z
    :cond_2
    iput v3, v1, Lcom/vkontakte/android/UserProfile;->online:I

    .line 158
    iget-object v2, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 159
    const/4 v0, 0x0

    .restart local v0    # "needSubscribe":Z
    goto :goto_1
.end method

.method protected updateList()V
    .locals 6

    .prologue
    const/16 v5, 0x12c

    const/4 v4, 0x0

    .line 133
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->adapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 137
    :cond_1
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "items="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->firstLoad:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->progress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-static {v0, v1, v5}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->progress:Landroid/widget/ProgressBar;

    invoke-static {v0, v4, v5}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 141
    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment;->firstLoad:Z

    .line 143
    :cond_2
    return-void
.end method
