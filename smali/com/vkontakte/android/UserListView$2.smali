.class Lcom/vkontakte/android/UserListView$2;
.super Ljava/lang/Object;
.source "UserListView.java"

# interfaces
.implements Lcom/vkontakte/android/api/FaveGetLinks$Callback;


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
    iput-object p1, p0, Lcom/vkontakte/android/UserListView$2;->this$0:Lcom/vkontakte/android/UserListView;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 167
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

    .line 151
    iget-object v2, p0, Lcom/vkontakte/android/UserListView$2;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v2, v2, Lcom/vkontakte/android/UserListView;->users:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 152
    iget-object v2, p0, Lcom/vkontakte/android/UserListView$2;->this$0:Lcom/vkontakte/android/UserListView;

    iput-boolean v0, v2, Lcom/vkontakte/android/UserListView;->preloading:Z

    .line 153
    iget-object v2, p0, Lcom/vkontakte/android/UserListView$2;->this$0:Lcom/vkontakte/android/UserListView;

    iget-boolean v2, v2, Lcom/vkontakte/android/UserListView;->preloadOnReady:Z

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/vkontakte/android/UserListView$2;->this$0:Lcom/vkontakte/android/UserListView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/vkontakte/android/UserListView;->preloading:Z

    .line 155
    iget-object v2, p0, Lcom/vkontakte/android/UserListView$2;->this$0:Lcom/vkontakte/android/UserListView;

    iput-boolean v0, v2, Lcom/vkontakte/android/UserListView;->preloadOnReady:Z

    .line 156
    iget-object v2, p0, Lcom/vkontakte/android/UserListView$2;->this$0:Lcom/vkontakte/android/UserListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/UserListView;->loadData()V

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/UserListView$2;->this$0:Lcom/vkontakte/android/UserListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/UserListView;->updateList()V

    .line 159
    iget-object v2, p0, Lcom/vkontakte/android/UserListView$2;->this$0:Lcom/vkontakte/android/UserListView;

    iput-boolean v0, v2, Lcom/vkontakte/android/UserListView;->moreAvailable:Z

    .line 160
    iget-object v2, p0, Lcom/vkontakte/android/UserListView$2;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v2, v2, Lcom/vkontakte/android/UserListView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 161
    iget-object v2, p0, Lcom/vkontakte/android/UserListView$2;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v2, v2, Lcom/vkontakte/android/UserListView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/UserListView$2;->this$0:Lcom/vkontakte/android/UserListView;

    iget-boolean v3, v3, Lcom/vkontakte/android/UserListView;->moreAvailable:Z

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 162
    return-void

    :cond_1
    move v0, v1

    .line 161
    goto :goto_0
.end method
