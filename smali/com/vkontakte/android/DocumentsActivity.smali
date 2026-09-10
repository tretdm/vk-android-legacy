.class public Lcom/vkontakte/android/DocumentsActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "DocumentsActivity.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/DocumentsActivity$DocsAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkontakte/android/DocumentsActivity$DocsAdapter;

.field private bigProgress:Landroid/widget/ProgressBar;

.field private contentView:Landroid/widget/FrameLayout;

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

    .line 25
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/vkontakte/android/DocumentsActivity;->dataLoading:Z

    iput-boolean v0, p0, Lcom/vkontakte/android/DocumentsActivity;->moreAvailable:Z

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/DocumentsActivity;->docs:Ljava/util/Vector;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/DocumentsActivity;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/DocumentsActivity;->docs:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/DocumentsActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkontakte/android/DocumentsActivity;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/DocumentsActivity;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/vkontakte/android/DocumentsActivity;->selectMode:Z

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/DocumentsActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkontakte/android/DocumentsActivity;->bigProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/DocumentsActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/DocumentsActivity;->footerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/DocumentsActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkontakte/android/DocumentsActivity;->emptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/DocumentsActivity;)Lcom/vkontakte/android/DocumentsActivity$DocsAdapter;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vkontakte/android/DocumentsActivity;->adapter:Lcom/vkontakte/android/DocumentsActivity$DocsAdapter;

    return-object v0
.end method


# virtual methods
.method public loadData()V
    .locals 4

    .prologue
    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/DocumentsActivity;->dataLoading:Z

    .line 125
    new-instance v0, Lcom/vkontakte/android/api/DocsGet;

    iget v1, p0, Lcom/vkontakte/android/DocumentsActivity;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/DocumentsActivity;->docs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/DocsGet;-><init>(III)V

    .line 126
    new-instance v1, Lcom/vkontakte/android/DocumentsActivity$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/DocumentsActivity$2;-><init>(Lcom/vkontakte/android/DocumentsActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/DocsGet;->setCallback(Lcom/vkontakte/android/api/DocsGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 145
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 146
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, -0x2

    const/4 v10, 0x0

    const/16 v9, 0x11

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 39
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/vkontakte/android/DocumentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "oid"

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/vkontakte/android/DocumentsActivity;->ownerID:I

    .line 41
    invoke-virtual {p0}, Lcom/vkontakte/android/DocumentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "select"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/vkontakte/android/DocumentsActivity;->selectMode:Z

    .line 43
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->contentView:Landroid/widget/FrameLayout;

    .line 44
    iget-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 45
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->footerView:Landroid/widget/FrameLayout;

    .line 46
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 47
    .local v3, "pb":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/vkontakte/android/DocumentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020206

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 49
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 50
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iget-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->footerView:Landroid/widget/FrameLayout;

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-virtual {v4, v7, v5, v7, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 52
    iget-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 53
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 56
    new-instance v4, Landroid/widget/ListView;

    invoke-direct {v4, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->list:Landroid/widget/ListView;

    .line 57
    iget-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->list:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/vkontakte/android/DocumentsActivity;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5, v10, v7}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 58
    iget-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->list:Landroid/widget/ListView;

    new-instance v5, Lcom/vkontakte/android/DocumentsActivity$DocsAdapter;

    invoke-direct {v5, p0, v10}, Lcom/vkontakte/android/DocumentsActivity$DocsAdapter;-><init>(Lcom/vkontakte/android/DocumentsActivity;Lcom/vkontakte/android/DocumentsActivity$DocsAdapter;)V

    iput-object v5, p0, Lcom/vkontakte/android/DocumentsActivity;->adapter:Lcom/vkontakte/android/DocumentsActivity$DocsAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v4, v10}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 61
    iget-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 62
    iget-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 65
    iget-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/vkontakte/android/DocumentsActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 67
    new-instance v4, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v5, p0, Lcom/vkontakte/android/DocumentsActivity;->list:Landroid/widget/ListView;

    invoke-direct {v4, v10, v5, p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/ListView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 69
    iget-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->list:Landroid/widget/ListView;

    new-instance v5, Lcom/vkontakte/android/DocumentsActivity$1;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/DocumentsActivity$1;-><init>(Lcom/vkontakte/android/DocumentsActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->emptyView:Landroid/widget/TextView;

    .line 84
    iget-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->emptyView:Landroid/widget/TextView;

    const v5, -0x888889

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    iget-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->emptyView:Landroid/widget/TextView;

    const v5, 0x7f090136

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->emptyView:Landroid/widget/TextView;

    const/high16 v5, 0x41880000    # 17.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 87
    iget-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 88
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 89
    .local v2, "lparams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 90
    iget-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->emptyView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/vkontakte/android/DocumentsActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 94
    new-instance v4, Landroid/widget/ProgressBar;

    invoke-direct {v4, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->bigProgress:Landroid/widget/ProgressBar;

    .line 95
    iget-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/DocumentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020206

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 97
    .local v1, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 98
    iget-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 100
    iget-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/vkontakte/android/DocumentsActivity;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 102
    iget-object v4, p0, Lcom/vkontakte/android/DocumentsActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/DocumentsActivity;->setContentView(Landroid/view/View;)V

    .line 103
    invoke-virtual {p0}, Lcom/vkontakte/android/DocumentsActivity;->loadData()V

    .line 104
    return-void
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/vkontakte/android/DocumentsActivity;->moreAvailable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/DocumentsActivity;->dataLoading:Z

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/vkontakte/android/DocumentsActivity;->loadData()V

    .line 111
    :cond_0
    return-void
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/vkontakte/android/DocumentsActivity$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/DocumentsActivity$3;-><init>(Lcom/vkontakte/android/DocumentsActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DocumentsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method
