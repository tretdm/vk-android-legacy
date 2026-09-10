.class Lcom/vkontakte/android/fragments/PhotoListFragment$8;
.super Ljava/lang/Object;
.source "PhotoListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/FaveGetPhotos$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoListFragment;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/PhotoListFragment$8;)Lcom/vkontakte/android/fragments/PhotoListFragment;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x12c

    const/4 v2, 0x0

    .line 542
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$21(Lcom/vkontakte/android/fragments/PhotoListFragment;Z)V

    .line 543
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$17(Lcom/vkontakte/android/fragments/PhotoListFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 544
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$15(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$15(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 547
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$16(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 551
    :goto_0
    return-void

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f08006b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public success(ILjava/util/Vector;)V
    .locals 5
    .param p1, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 521
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$17(Lcom/vkontakte/android/fragments/PhotoListFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 522
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$0(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/api/PhotoAlbum;

    move-result-object v3

    iput p1, v3, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    .line 523
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 524
    .local v0, "needAnim":Z
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 525
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$2(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    .line 526
    if-eqz v0, :cond_0

    .line 527
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$16(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/ProgressBar;

    move-result-object v3

    const/16 v4, 0x12c

    invoke-static {v3, v2, v4}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 528
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$18(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/FrameLayout;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/fragments/PhotoListFragment$8$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/PhotoListFragment$8$1;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment$8;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 535
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, p1, :cond_2

    :goto_1
    invoke-static {v3, v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$20(Lcom/vkontakte/android/fragments/PhotoListFragment;Z)V

    .line 536
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v1, v2}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$21(Lcom/vkontakte/android/fragments/PhotoListFragment;Z)V

    .line 537
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$22(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$9(Lcom/vkontakte/android/fragments/PhotoListFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 538
    return-void

    .end local v0    # "needAnim":Z
    :cond_1
    move v0, v2

    .line 523
    goto :goto_0

    .restart local v0    # "needAnim":Z
    :cond_2
    move v1, v2

    .line 535
    goto :goto_1
.end method
