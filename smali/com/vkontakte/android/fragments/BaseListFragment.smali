.class public abstract Lcom/vkontakte/android/fragments/BaseListFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "BaseListFragment.java"


# instance fields
.field protected contentView:Landroid/widget/FrameLayout;

.field protected contentWrap:Landroid/widget/FrameLayout;

.field protected emptyView:Landroid/widget/TextView;

.field protected errorView:Lcom/vkontakte/android/ui/ErrorView;

.field protected list:Landroid/widget/ListView;

.field protected progress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method protected getEmptyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, ""

    return-object v0
.end method

.method protected initListView()Landroid/widget/ListView;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, "l":Landroid/widget/ListView;
    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 36
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x201d1b

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 37
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 38
    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/16 v6, 0x11

    const/16 v5, 0x8

    const/high16 v4, 0x42200000    # 40.0f

    .line 42
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 43
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentView:Landroid/widget/FrameLayout;

    .line 44
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentWrap:Landroid/widget/FrameLayout;

    .line 45
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->initListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentWrap:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 48
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->emptyView:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->emptyView:Landroid/widget/TextView;

    const v1, 0x7f070078

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->getEmptyText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentWrap:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 55
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->progress:Landroid/widget/ProgressBar;

    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->progress:Landroid/widget/ProgressBar;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-direct {v2, v3, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    const v0, 0x7f03002e

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/ErrorView;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentView:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentView:Landroid/widget/FrameLayout;

    return-object v0
.end method
