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

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/PhotoListFragment$6;)Lcom/vkontakte/android/fragments/PhotoListFragment;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$15(Lcom/vkontakte/android/fragments/PhotoListFragment;Z)V

    .line 367
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$11(Lcom/vkontakte/android/fragments/PhotoListFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 368
    return-void
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
    const/4 v0, 0x0

    .line 348
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$11(Lcom/vkontakte/android/fragments/PhotoListFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 349
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 350
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$2(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    .line 351
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$12(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 352
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$12(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x12c

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 353
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$13(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/PhotoListFragment$6$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/PhotoListFragment$6$1;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment$6;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v1, v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$15(Lcom/vkontakte/android/fragments/PhotoListFragment;Z)V

    .line 361
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v2

    if-le p1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v1, v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$16(Lcom/vkontakte/android/fragments/PhotoListFragment;Z)V

    .line 362
    return-void
.end method
