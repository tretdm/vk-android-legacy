.class public Lcom/vkontakte/android/fragments/DocumentsFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "DocumentsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;,
        Lcom/vkontakte/android/fragments/DocumentsFragment$DocsThumbsAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;

.field private bigProgress:Landroid/widget/ProgressBar;

.field private contentView:Landroid/widget/FrameLayout;

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field protected dataLoading:Z

.field private docs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/Document;",
            ">;"
        }
    .end annotation
.end field

.field private emptyView:Landroid/widget/TextView;

.field private footerView:Landroid/widget/FrameLayout;

.field private imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private list:Landroid/widget/ListView;

.field protected moreAvailable:Z

.field private ownerID:I

.field private selectMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->dataLoading:Z

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->moreAvailable:Z

    .line 46
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->docs:Ljava/util/Vector;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/DocumentsFragment;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->docs:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/DocumentsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->contentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/DocumentsFragment;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->selectMode:Z

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->bigProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->footerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->emptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/DocumentsFragment;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/DocumentsFragment;)Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->adapter:Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;

    return-object v0
.end method


# virtual methods
.method public loadData()V
    .locals 4

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->dataLoading:Z

    .line 161
    new-instance v0, Lcom/vkontakte/android/api/DocsGet;

    iget v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->docs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/DocsGet;-><init>(III)V

    .line 162
    new-instance v1, Lcom/vkontakte/android/fragments/DocumentsFragment$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/DocumentsFragment$2;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/DocsGet;->setCallback(Lcom/vkontakte/android/api/DocsGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 161
    iput-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 184
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 14
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v13, -0x2

    const/4 v12, 0x0

    const/16 v11, 0x11

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 51
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 53
    const v5, 0x7f060100

    invoke-virtual {p1, v5}, Landroid/app/Activity;->setTitle(I)V

    .line 54
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v4

    .line 55
    .local v4, "sa":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-virtual {v4}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 56
    invoke-virtual {v4}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 58
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "oid"

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->ownerID:I

    .line 59
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "select"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->selectMode:Z

    .line 61
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->contentView:Landroid/widget/FrameLayout;

    .line 62
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v10}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 63
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->footerView:Landroid/widget/FrameLayout;

    .line 64
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 65
    .local v3, "pb":Landroid/widget/ProgressBar;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-direct {v0, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 67
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->footerView:Landroid/widget/FrameLayout;

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    const/high16 v7, 0x40e00000    # 7.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-virtual {v5, v9, v6, v9, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 69
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 70
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 73
    new-instance v5, Landroid/widget/ListView;

    invoke-direct {v5, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    .line 74
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6, v12, v9}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 75
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    new-instance v6, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;

    invoke-direct {v6, p0, v12}, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment;Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;)V

    iput-object v6, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->adapter:Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    :cond_0
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v12}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v10}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 78
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v10}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 79
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 80
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    const v6, 0x7f0200da

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setSelector(I)V

    .line 81
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    new-instance v6, Lcom/vkontakte/android/ui/PaddingColorDrawable;

    const v7, -0x1a1a1b

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/vkontakte/android/ui/PaddingColorDrawable;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 85
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 87
    new-instance v5, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v6, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsThumbsAdapter;

    invoke-direct {v6, p0, v12}, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsThumbsAdapter;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment;Lcom/vkontakte/android/fragments/DocumentsFragment$DocsThumbsAdapter;)V

    iget-object v7, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    invoke-direct {v5, v6, v7, p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 89
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    new-instance v6, Lcom/vkontakte/android/fragments/DocumentsFragment$1;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/DocumentsFragment$1;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->emptyView:Landroid/widget/TextView;

    .line 104
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->emptyView:Landroid/widget/TextView;

    const v6, -0x888889

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->emptyView:Landroid/widget/TextView;

    const v6, 0x7f060101

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 106
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->emptyView:Landroid/widget/TextView;

    const/high16 v6, 0x41880000    # 17.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 107
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 108
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v10, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 109
    .local v2, "lparams":Landroid/widget/FrameLayout$LayoutParams;
    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 110
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->emptyView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 114
    new-instance v5, Landroid/widget/ProgressBar;

    invoke-direct {v5, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->bigProgress:Landroid/widget/ProgressBar;

    .line 115
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 116
    .local v1, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 117
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 119
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 120
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->loadData()V

    .line 121
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->contentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 130
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 134
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 135
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 139
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 140
    return-void
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->moreAvailable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->dataLoading:Z

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->loadData()V

    .line 147
    :cond_0
    return-void
.end method

.method public updateList()V
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/DocumentsFragment$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/DocumentsFragment$3;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 191
    return-void
.end method
