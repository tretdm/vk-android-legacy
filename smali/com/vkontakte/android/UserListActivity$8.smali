.class Lcom/vkontakte/android/UserListActivity$8;
.super Ljava/lang/Object;
.source "UserListActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/PollsGetVoters$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/UserListActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/UserListActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/UserListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/UserListActivity$8;->this$0:Lcom/vkontakte/android/UserListActivity;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 365
    return-void
.end method

.method public success(ILjava/util/Vector;)V
    .locals 6
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "users":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    const/16 v2, 0x8

    const/4 v0, 0x1

    const/16 v5, 0x32

    const/4 v1, 0x0

    .line 342
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity$8;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-boolean v3, v3, Lcom/vkontakte/android/UserListActivity;->preloading:Z

    if-eqz v3, :cond_1

    .line 343
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity$8;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v3, v3, Lcom/vkontakte/android/UserListActivity;->preloadedUsers:Ljava/util/Vector;

    invoke-virtual {v3, p2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 350
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity$8;->this$0:Lcom/vkontakte/android/UserListActivity;

    iput-boolean v1, v3, Lcom/vkontakte/android/UserListActivity;->preloading:Z

    .line 351
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity$8;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-boolean v3, v3, Lcom/vkontakte/android/UserListActivity;->preloadOnReady:Z

    if-eqz v3, :cond_0

    .line 352
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity$8;->this$0:Lcom/vkontakte/android/UserListActivity;

    iput-boolean v0, v3, Lcom/vkontakte/android/UserListActivity;->preloading:Z

    .line 353
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity$8;->this$0:Lcom/vkontakte/android/UserListActivity;

    iput-boolean v1, v3, Lcom/vkontakte/android/UserListActivity;->preloadOnReady:Z

    .line 354
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity$8;->this$0:Lcom/vkontakte/android/UserListActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/UserListActivity;->loadData()V

    .line 356
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity$8;->this$0:Lcom/vkontakte/android/UserListActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/UserListActivity;->updateList()V

    .line 357
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity$8;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v4, p0, Lcom/vkontakte/android/UserListActivity$8;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v4, v4, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v4, p1, :cond_3

    :goto_1
    iput-boolean v0, v3, Lcom/vkontakte/android/UserListActivity;->moreAvailable:Z

    .line 358
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity$8;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v0, v0, Lcom/vkontakte/android/UserListActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity$8;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v0, v0, Lcom/vkontakte/android/UserListActivity;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity$8;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-boolean v3, v3, Lcom/vkontakte/android/UserListActivity;->moreAvailable:Z

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 360
    return-void

    .line 344
    :cond_1
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v3, v5, :cond_2

    .line 345
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity$8;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v3, v3, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    invoke-virtual {p2, v1, v5}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 346
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity$8;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v3, v3, Lcom/vkontakte/android/UserListActivity;->preloadedUsers:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {p2, v5, v4}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 348
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity$8;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v3, v3, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    invoke-virtual {v3, p2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 357
    goto :goto_1

    :cond_4
    move v1, v2

    .line 359
    goto :goto_2
.end method
