.class Lcom/vkontakte/android/UserListView$1;
.super Ljava/lang/Object;
.source "UserListView.java"

# interfaces
.implements Lcom/vkontakte/android/api/LikesGetList$Callback;


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
    iput-object p1, p0, Lcom/vkontakte/android/UserListView$1;->this$0:Lcom/vkontakte/android/UserListView;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/vkontakte/android/UserListView$1;->this$0:Lcom/vkontakte/android/UserListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/UserListView;->access$0(Lcom/vkontakte/android/UserListView;Lcom/vkontakte/android/APIRequest;)V

    .line 192
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

    .line 167
    iget-object v3, p0, Lcom/vkontakte/android/UserListView$1;->this$0:Lcom/vkontakte/android/UserListView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkontakte/android/UserListView;->access$0(Lcom/vkontakte/android/UserListView;Lcom/vkontakte/android/APIRequest;)V

    .line 168
    iget-object v3, p0, Lcom/vkontakte/android/UserListView$1;->this$0:Lcom/vkontakte/android/UserListView;

    iget-boolean v3, v3, Lcom/vkontakte/android/UserListView;->preloading:Z

    if-eqz v3, :cond_2

    .line 169
    iget-object v3, p0, Lcom/vkontakte/android/UserListView$1;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v3, v3, Lcom/vkontakte/android/UserListView;->preloadedUsers:Ljava/util/Vector;

    invoke-virtual {v3, p2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 176
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/UserListView$1;->this$0:Lcom/vkontakte/android/UserListView;

    iput-boolean v1, v3, Lcom/vkontakte/android/UserListView;->preloading:Z

    .line 177
    iget-object v3, p0, Lcom/vkontakte/android/UserListView$1;->this$0:Lcom/vkontakte/android/UserListView;

    iget-boolean v3, v3, Lcom/vkontakte/android/UserListView;->preloadOnReady:Z

    if-eqz v3, :cond_0

    .line 178
    iget-object v3, p0, Lcom/vkontakte/android/UserListView$1;->this$0:Lcom/vkontakte/android/UserListView;

    iput-boolean v0, v3, Lcom/vkontakte/android/UserListView;->preloading:Z

    .line 179
    iget-object v3, p0, Lcom/vkontakte/android/UserListView$1;->this$0:Lcom/vkontakte/android/UserListView;

    iput-boolean v1, v3, Lcom/vkontakte/android/UserListView;->preloadOnReady:Z

    .line 180
    iget-object v3, p0, Lcom/vkontakte/android/UserListView$1;->this$0:Lcom/vkontakte/android/UserListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/UserListView;->loadData()V

    .line 182
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/UserListView$1;->this$0:Lcom/vkontakte/android/UserListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/UserListView;->updateList()V

    .line 183
    iget-object v3, p0, Lcom/vkontakte/android/UserListView$1;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v4, p0, Lcom/vkontakte/android/UserListView$1;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v4, v4, Lcom/vkontakte/android/UserListView;->users:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v4, p1, :cond_4

    :goto_1
    iput-boolean v0, v3, Lcom/vkontakte/android/UserListView;->moreAvailable:Z

    .line 184
    iget-object v0, p0, Lcom/vkontakte/android/UserListView$1;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v0, v0, Lcom/vkontakte/android/UserListView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/vkontakte/android/UserListView$1;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v0, v0, Lcom/vkontakte/android/UserListView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/UserListView$1;->this$0:Lcom/vkontakte/android/UserListView;

    iget-boolean v0, v0, Lcom/vkontakte/android/UserListView;->moreAvailable:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/vkontakte/android/UserListView$1;->this$0:Lcom/vkontakte/android/UserListView;

    invoke-static {v0}, Lcom/vkontakte/android/UserListView;->access$1(Lcom/vkontakte/android/UserListView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/UserListView$1;->this$0:Lcom/vkontakte/android/UserListView;

    invoke-static {v0}, Lcom/vkontakte/android/UserListView;->access$1(Lcom/vkontakte/android/UserListView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 187
    :cond_1
    return-void

    .line 170
    :cond_2
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v3, v5, :cond_3

    .line 171
    iget-object v3, p0, Lcom/vkontakte/android/UserListView$1;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v3, v3, Lcom/vkontakte/android/UserListView;->users:Ljava/util/Vector;

    invoke-virtual {p2, v1, v5}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 172
    iget-object v3, p0, Lcom/vkontakte/android/UserListView$1;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v3, v3, Lcom/vkontakte/android/UserListView;->preloadedUsers:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {p2, v5, v4}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 174
    :cond_3
    iget-object v3, p0, Lcom/vkontakte/android/UserListView$1;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v3, v3, Lcom/vkontakte/android/UserListView;->users:Ljava/util/Vector;

    invoke-virtual {v3, p2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 183
    goto :goto_1

    :cond_5
    move v0, v2

    .line 185
    goto :goto_2
.end method
