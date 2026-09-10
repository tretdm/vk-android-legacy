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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/PhotoListFragment$6;)Lcom/vkontakte/android/fragments/PhotoListFragment;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

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

    .line 463
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$21(Lcom/vkontakte/android/fragments/PhotoListFragment;Z)V

    .line 464
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$17(Lcom/vkontakte/android/fragments/PhotoListFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 465
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$15(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$15(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 468
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$16(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 472
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f08006b

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

    .line 443
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$17(Lcom/vkontakte/android/fragments/PhotoListFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 444
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 445
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$2(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    .line 446
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$16(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 447
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$16(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v2, 0x12c

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 448
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$18(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v2, Lcom/vkontakte/android/fragments/PhotoListFragment$6$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/PhotoListFragment$6$1;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment$6;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 455
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$20(Lcom/vkontakte/android/fragments/PhotoListFragment;Z)V

    .line 456
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$21(Lcom/vkontakte/android/fragments/PhotoListFragment;Z)V

    .line 457
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$22(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$22(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$9(Lcom/vkontakte/android/fragments/PhotoListFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 459
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 455
    goto :goto_0
.end method
