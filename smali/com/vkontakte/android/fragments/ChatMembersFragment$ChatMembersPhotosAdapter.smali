.class Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter;
.super Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;
.source "ChatMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/ChatMembersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChatMembersPhotosAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0

    .prologue
    .line 906
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;Lcom/vkontakte/android/fragments/ChatMembersFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/ChatMembersFragment$1;

    .prologue
    .line 906
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(II)I
    .locals 2
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    const/4 v0, 0x1

    .line 924
    if-nez p1, :cond_1

    .line 930
    :cond_0
    :goto_0
    return v0

    .line 927
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$900(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    .line 930
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageURL(III)Ljava/lang/String;
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "image"    # I

    .prologue
    .line 935
    if-nez p1, :cond_0

    .line 936
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$1800(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/lang/String;

    move-result-object v0

    .line 941
    :goto_0
    return-object v0

    .line 938
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$900(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 939
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$900(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ChatUser;

    iget-object v0, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_0

    .line 941
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 914
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$600(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->getItemCount(I)I

    move-result v0

    return v0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$600(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->getSectionCount()I

    move-result v0

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 946
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$3300(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    .line 947
    if-nez p1, :cond_1

    .line 948
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter$1;

    invoke-direct {v2, p0, p3}, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter$1;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 953
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$3300(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$3300(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 956
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$3300(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$3300(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 957
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter$2;

    invoke-direct {v2, p0, v0, p3}, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter$2;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 919
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$600(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->isSectionHeaderVisible(I)Z

    move-result v0

    return v0
.end method
