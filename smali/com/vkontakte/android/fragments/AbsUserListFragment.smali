.class public abstract Lcom/vkontakte/android/fragments/AbsUserListFragment;
.super Lcom/vkontakte/android/fragments/PreloadingListFragment;
.source "AbsUserListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/AbsUserListFragment$1;,
        Lcom/vkontakte/android/fragments/AbsUserListFragment$UserPhotosAdapter;,
        Lcom/vkontakte/android/fragments/AbsUserListFragment$UserListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/fragments/PreloadingListFragment",
        "<",
        "Lcom/vkontakte/android/UserProfile;",
        ">;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkontakte/android/fragments/AbsUserListFragment$UserListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/vkontakte/android/fragments/PreloadingListFragment;-><init>(I)V

    .line 29
    return-void
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AbsUserListFragment;->adapter:Lcom/vkontakte/android/fragments/AbsUserListFragment$UserListAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vkontakte/android/fragments/AbsUserListFragment$UserListAdapter;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/AbsUserListFragment$UserListAdapter;-><init>(Lcom/vkontakte/android/fragments/AbsUserListFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AbsUserListFragment;->adapter:Lcom/vkontakte/android/fragments/AbsUserListFragment$UserListAdapter;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AbsUserListFragment;->adapter:Lcom/vkontakte/android/fragments/AbsUserListFragment$UserListAdapter;

    return-object v0
.end method

.method protected getImageLoaderAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/vkontakte/android/fragments/AbsUserListFragment$UserPhotosAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/fragments/AbsUserListFragment$UserPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/AbsUserListFragment;Lcom/vkontakte/android/fragments/AbsUserListFragment$1;)V

    return-object v0
.end method

.method protected abstract hasExtended()Z
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->onAttach(Landroid/app/Activity;)V

    .line 35
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AbsUserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AbsUserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "no_autoload"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AbsUserListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 36
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AbsUserListFragment;->loadData()V

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AbsUserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AbsUserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AbsUserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 41
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/AbsUserListFragment;->setRefreshEnabled(Z)V

    .line 42
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
    .line 53
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AbsUserListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p3, v1

    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AbsUserListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    iget v1, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    const-string v1, "ProfileFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AbsUserListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 57
    return-void
.end method

.method public setListViewAppearance(Landroid/widget/ListView;)V
    .locals 5
    .param p1, "l"    # Landroid/widget/ListView;

    .prologue
    const v4, 0x7f0b000f

    const/4 v3, 0x0

    .line 46
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->setListViewAppearance(Landroid/widget/ListView;)V

    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AbsUserListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AbsUserListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AbsUserListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AbsUserListFragment;->list:Landroid/widget/ListView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 49
    return-void
.end method
