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

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/PhotoListFragment$8;)Lcom/vkontakte/android/fragments/PhotoListFragment;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$15(Lcom/vkontakte/android/fragments/PhotoListFragment;Z)V

    .line 432
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$11(Lcom/vkontakte/android/fragments/PhotoListFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 433
    return-void
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

    .line 410
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$11(Lcom/vkontakte/android/fragments/PhotoListFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 411
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$0(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/api/PhotoAlbum;

    move-result-object v3

    iput p1, v3, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    .line 412
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 413
    .local v0, "needAnim":Z
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 414
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$2(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    .line 415
    if-eqz v0, :cond_0

    .line 416
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$12(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/ProgressBar;

    move-result-object v3

    const/16 v4, 0x12c

    invoke-static {v3, v2, v4}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 417
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$13(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/FrameLayout;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/fragments/PhotoListFragment$8$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/PhotoListFragment$8$1;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment$8;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 424
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, p1, :cond_2

    :goto_1
    invoke-static {v3, v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$16(Lcom/vkontakte/android/fragments/PhotoListFragment;Z)V

    .line 425
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v1, v2}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$15(Lcom/vkontakte/android/fragments/PhotoListFragment;Z)V

    .line 426
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$17(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$7(Lcom/vkontakte/android/fragments/PhotoListFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 427
    return-void

    .end local v0    # "needAnim":Z
    :cond_1
    move v0, v2

    .line 412
    goto :goto_0

    .restart local v0    # "needAnim":Z
    :cond_2
    move v1, v2

    .line 424
    goto :goto_1
.end method
