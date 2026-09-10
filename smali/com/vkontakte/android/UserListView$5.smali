.class Lcom/vkontakte/android/UserListView$5;
.super Ljava/lang/Object;
.source "UserListView.java"

# interfaces
.implements Lcom/vkontakte/android/api/AccountGetBanned$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/UserListView;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/UserListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/UserListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/UserListView$5;->this$0:Lcom/vkontakte/android/UserListView;

    .line 312
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

    .line 339
    iget-object v0, p0, Lcom/vkontakte/android/UserListView$5;->this$0:Lcom/vkontakte/android/UserListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/UserListView;->access$1(Lcom/vkontakte/android/UserListView;Lcom/vkontakte/android/APIRequest;)V

    .line 340
    iget-object v0, p0, Lcom/vkontakte/android/UserListView$5;->this$0:Lcom/vkontakte/android/UserListView;

    iput-boolean v2, v0, Lcom/vkontakte/android/UserListView;->dataLoading:Z

    .line 341
    iget-object v0, p0, Lcom/vkontakte/android/UserListView$5;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v0, v0, Lcom/vkontakte/android/UserListView;->users:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/vkontakte/android/UserListView$5;->this$0:Lcom/vkontakte/android/UserListView;

    invoke-static {v0}, Lcom/vkontakte/android/UserListView;->access$0(Lcom/vkontakte/android/UserListView;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/vkontakte/android/UserListView$5;->this$0:Lcom/vkontakte/android/UserListView;

    invoke-static {v0}, Lcom/vkontakte/android/UserListView;->access$0(Lcom/vkontakte/android/UserListView;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 344
    iget-object v0, p0, Lcom/vkontakte/android/UserListView$5;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v0, v0, Lcom/vkontakte/android/UserListView;->progress:Landroid/widget/ProgressBar;

    invoke-static {v0, v2, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/UserListView$5;->this$0:Lcom/vkontakte/android/UserListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/UserListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08006b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public success(ILjava/util/ArrayList;)V
    .locals 6
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const/16 v2, 0x8

    const/4 v0, 0x1

    const/16 v5, 0x32

    const/4 v1, 0x0

    .line 315
    iget-object v3, p0, Lcom/vkontakte/android/UserListView$5;->this$0:Lcom/vkontakte/android/UserListView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkontakte/android/UserListView;->access$1(Lcom/vkontakte/android/UserListView;Lcom/vkontakte/android/APIRequest;)V

    .line 316
    iget-object v3, p0, Lcom/vkontakte/android/UserListView$5;->this$0:Lcom/vkontakte/android/UserListView;

    iget-boolean v3, v3, Lcom/vkontakte/android/UserListView;->preloading:Z

    if-eqz v3, :cond_3

    .line 317
    iget-object v3, p0, Lcom/vkontakte/android/UserListView$5;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v3, v3, Lcom/vkontakte/android/UserListView;->preloadedUsers:Ljava/util/Vector;

    invoke-virtual {v3, p2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 324
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/UserListView$5;->this$0:Lcom/vkontakte/android/UserListView;

    iput-boolean v1, v3, Lcom/vkontakte/android/UserListView;->preloading:Z

    .line 325
    iget-object v3, p0, Lcom/vkontakte/android/UserListView$5;->this$0:Lcom/vkontakte/android/UserListView;

    iget-boolean v3, v3, Lcom/vkontakte/android/UserListView;->preloadOnReady:Z

    if-eqz v3, :cond_0

    .line 326
    iget-object v3, p0, Lcom/vkontakte/android/UserListView$5;->this$0:Lcom/vkontakte/android/UserListView;

    iput-boolean v0, v3, Lcom/vkontakte/android/UserListView;->preloading:Z

    .line 327
    iget-object v3, p0, Lcom/vkontakte/android/UserListView$5;->this$0:Lcom/vkontakte/android/UserListView;

    iput-boolean v1, v3, Lcom/vkontakte/android/UserListView;->preloadOnReady:Z

    .line 328
    iget-object v3, p0, Lcom/vkontakte/android/UserListView$5;->this$0:Lcom/vkontakte/android/UserListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/UserListView;->loadData()V

    .line 330
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/UserListView$5;->this$0:Lcom/vkontakte/android/UserListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/UserListView;->updateList()V

    .line 331
    iget-object v3, p0, Lcom/vkontakte/android/UserListView$5;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v4, p0, Lcom/vkontakte/android/UserListView$5;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v4, v4, Lcom/vkontakte/android/UserListView;->users:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v4, p1, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, v3, Lcom/vkontakte/android/UserListView;->moreAvailable:Z

    .line 332
    iget-object v0, p0, Lcom/vkontakte/android/UserListView$5;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v0, v0, Lcom/vkontakte/android/UserListView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/vkontakte/android/UserListView$5;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v0, v0, Lcom/vkontakte/android/UserListView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/UserListView$5;->this$0:Lcom/vkontakte/android/UserListView;

    iget-boolean v0, v0, Lcom/vkontakte/android/UserListView;->moreAvailable:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/vkontakte/android/UserListView$5;->this$0:Lcom/vkontakte/android/UserListView;

    invoke-static {v0}, Lcom/vkontakte/android/UserListView;->access$2(Lcom/vkontakte/android/UserListView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/UserListView$5;->this$0:Lcom/vkontakte/android/UserListView;

    invoke-static {v0}, Lcom/vkontakte/android/UserListView;->access$2(Lcom/vkontakte/android/UserListView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 335
    :cond_2
    return-void

    .line 318
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_4

    .line 319
    iget-object v3, p0, Lcom/vkontakte/android/UserListView$5;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v3, v3, Lcom/vkontakte/android/UserListView;->users:Ljava/util/Vector;

    invoke-virtual {p2, v1, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 320
    iget-object v3, p0, Lcom/vkontakte/android/UserListView$5;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v3, v3, Lcom/vkontakte/android/UserListView;->preloadedUsers:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p2, v5, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 322
    :cond_4
    iget-object v3, p0, Lcom/vkontakte/android/UserListView$5;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v3, v3, Lcom/vkontakte/android/UserListView;->users:Ljava/util/Vector;

    invoke-virtual {v3, p2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 333
    goto :goto_1
.end method
