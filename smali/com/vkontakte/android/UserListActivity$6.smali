.class Lcom/vkontakte/android/UserListActivity$6;
.super Ljava/lang/Object;
.source "UserListActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/FaveGetUsers$Callback;


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
    iput-object p1, p0, Lcom/vkontakte/android/UserListActivity$6;->this$0:Lcom/vkontakte/android/UserListActivity;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 301
    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 285
    iget-object v2, p0, Lcom/vkontakte/android/UserListActivity$6;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v2, v2, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 286
    iget-object v2, p0, Lcom/vkontakte/android/UserListActivity$6;->this$0:Lcom/vkontakte/android/UserListActivity;

    iput-boolean v0, v2, Lcom/vkontakte/android/UserListActivity;->preloading:Z

    .line 287
    iget-object v2, p0, Lcom/vkontakte/android/UserListActivity$6;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-boolean v2, v2, Lcom/vkontakte/android/UserListActivity;->preloadOnReady:Z

    if-eqz v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/vkontakte/android/UserListActivity$6;->this$0:Lcom/vkontakte/android/UserListActivity;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/vkontakte/android/UserListActivity;->preloading:Z

    .line 289
    iget-object v2, p0, Lcom/vkontakte/android/UserListActivity$6;->this$0:Lcom/vkontakte/android/UserListActivity;

    iput-boolean v0, v2, Lcom/vkontakte/android/UserListActivity;->preloadOnReady:Z

    .line 290
    iget-object v2, p0, Lcom/vkontakte/android/UserListActivity$6;->this$0:Lcom/vkontakte/android/UserListActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/UserListActivity;->loadData()V

    .line 292
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/UserListActivity$6;->this$0:Lcom/vkontakte/android/UserListActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/UserListActivity;->updateList()V

    .line 293
    iget-object v2, p0, Lcom/vkontakte/android/UserListActivity$6;->this$0:Lcom/vkontakte/android/UserListActivity;

    iput-boolean v0, v2, Lcom/vkontakte/android/UserListActivity;->moreAvailable:Z

    .line 294
    iget-object v2, p0, Lcom/vkontakte/android/UserListActivity$6;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v2, v2, Lcom/vkontakte/android/UserListActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 295
    iget-object v2, p0, Lcom/vkontakte/android/UserListActivity$6;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v2, v2, Lcom/vkontakte/android/UserListActivity;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity$6;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-boolean v3, v3, Lcom/vkontakte/android/UserListActivity;->moreAvailable:Z

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 296
    return-void

    :cond_1
    move v0, v1

    .line 295
    goto :goto_0
.end method
