.class Lcom/vkontakte/android/fragments/PhotoListFragment$6;
.super Ljava/lang/Object;
.source "PhotoListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/PhotosGet$Callback;


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
    .line 457
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x12c

    const/4 v2, 0x0

    .line 481
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$802(Lcom/vkontakte/android/fragments/PhotoListFragment;Z)Z

    .line 482
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1602(Lcom/vkontakte/android/fragments/PhotoListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 483
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$100(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1400(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1400(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 486
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1500(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00ce

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public success(ILjava/util/Vector;)V
    .locals 3
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
    const/4 v1, 0x0

    .line 461
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1602(Lcom/vkontakte/android/fragments/PhotoListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 462
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$100(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 463
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$200(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    .line 464
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1500(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 465
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1500(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v2, 0x12c

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 466
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1700(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v2, Lcom/vkontakte/android/fragments/PhotoListFragment$6$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/PhotoListFragment$6$1;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment$6;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 473
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$100(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$702(Lcom/vkontakte/android/fragments/PhotoListFragment;Z)Z

    .line 474
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$802(Lcom/vkontakte/android/fragments/PhotoListFragment;Z)Z

    .line 475
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1900(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1900(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$700(Lcom/vkontakte/android/fragments/PhotoListFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 477
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 473
    goto :goto_0
.end method
