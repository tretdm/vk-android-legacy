.class Lcom/vkontakte/android/UserListActivity$5;
.super Ljava/lang/Object;
.source "UserListActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesGetChatUsers$Callback;


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
    iput-object p1, p0, Lcom/vkontakte/android/UserListActivity$5;->this$0:Lcom/vkontakte/android/UserListActivity;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 268
    return-void
.end method

.method public success(ILjava/util/Vector;ILjava/lang/String;)V
    .locals 6
    .param p1, "count"    # I
    .param p3, "adminID"    # I
    .param p4, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "users":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    const/16 v2, 0x8

    const/4 v0, 0x1

    const/16 v5, 0x32

    const/4 v1, 0x0

    .line 242
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity$5;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-boolean v3, v3, Lcom/vkontakte/android/UserListActivity;->preloading:Z

    if-eqz v3, :cond_1

    .line 243
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity$5;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v3, v3, Lcom/vkontakte/android/UserListActivity;->preloadedUsers:Ljava/util/Vector;

    invoke-virtual {v3, p2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 250
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity$5;->this$0:Lcom/vkontakte/android/UserListActivity;

    iput-boolean v1, v3, Lcom/vkontakte/android/UserListActivity;->preloading:Z

    .line 251
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity$5;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-boolean v3, v3, Lcom/vkontakte/android/UserListActivity;->preloadOnReady:Z

    if-eqz v3, :cond_0

    .line 252
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity$5;->this$0:Lcom/vkontakte/android/UserListActivity;

    iput-boolean v0, v3, Lcom/vkontakte/android/UserListActivity;->preloading:Z

    .line 253
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity$5;->this$0:Lcom/vkontakte/android/UserListActivity;

    iput-boolean v1, v3, Lcom/vkontakte/android/UserListActivity;->preloadOnReady:Z

    .line 254
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity$5;->this$0:Lcom/vkontakte/android/UserListActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/UserListActivity;->loadData()V

    .line 256
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity$5;->this$0:Lcom/vkontakte/android/UserListActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/UserListActivity;->updateList()V

    .line 257
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity$5;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v4, p0, Lcom/vkontakte/android/UserListActivity$5;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v4, v4, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v4, p1, :cond_3

    :goto_1
    iput-boolean v0, v3, Lcom/vkontakte/android/UserListActivity;->moreAvailable:Z

    .line 258
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity$5;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v0, v0, Lcom/vkontakte/android/UserListActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity$5;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v0, v0, Lcom/vkontakte/android/UserListActivity;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity$5;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-boolean v0, v0, Lcom/vkontakte/android/UserListActivity;->moreAvailable:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity$5;->this$0:Lcom/vkontakte/android/UserListActivity;

    invoke-static {v0}, Lcom/vkontakte/android/UserListActivity;->access$3(Lcom/vkontakte/android/UserListActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f06005c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity$5;->this$0:Lcom/vkontakte/android/UserListActivity;

    invoke-static {v0, p3}, Lcom/vkontakte/android/UserListActivity;->access$5(Lcom/vkontakte/android/UserListActivity;I)V

    .line 262
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity$5;->this$0:Lcom/vkontakte/android/UserListActivity;

    invoke-static {v0}, Lcom/vkontakte/android/UserListActivity;->access$3(Lcom/vkontakte/android/UserListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 263
    return-void

    .line 244
    :cond_1
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v3, v5, :cond_2

    .line 245
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity$5;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v3, v3, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    invoke-virtual {p2, v1, v5}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 246
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity$5;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v3, v3, Lcom/vkontakte/android/UserListActivity;->preloadedUsers:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {p2, v5, v4}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 248
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity$5;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v3, v3, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    invoke-virtual {v3, p2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 257
    goto :goto_1

    :cond_4
    move v0, v2

    .line 259
    goto :goto_2
.end method
