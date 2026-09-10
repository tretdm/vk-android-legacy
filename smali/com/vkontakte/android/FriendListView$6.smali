.class Lcom/vkontakte/android/FriendListView$6;
.super Ljava/lang/Object;
.source "FriendListView.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesSearchDialogs$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendListView;->doGlobalSearch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FriendListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FriendListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FriendListView$6;->this$0:Lcom/vkontakte/android/FriendListView;

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 425
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$6;->this$0:Lcom/vkontakte/android/FriendListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/FriendListView;->access$20(Lcom/vkontakte/android/FriendListView;Lcom/vkontakte/android/APIRequest;)V

    .line 426
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$6;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090058

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 427
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$6;->this$0:Lcom/vkontakte/android/FriendListView;

    iget-object v1, p0, Lcom/vkontakte/android/FriendListView$6;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v1}, Lcom/vkontakte/android/FriendListView;->access$23(Lcom/vkontakte/android/FriendListView;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/FriendListView;->access$24(Lcom/vkontakte/android/FriendListView;Z)V

    .line 428
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$6;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v0, v2}, Lcom/vkontakte/android/FriendListView;->access$25(Lcom/vkontakte/android/FriendListView;Z)V

    .line 429
    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const/4 v7, 0x0

    .line 396
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$6;->this$0:Lcom/vkontakte/android/FriendListView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkontakte/android/FriendListView;->access$20(Lcom/vkontakte/android/FriendListView;Lcom/vkontakte/android/APIRequest;)V

    .line 397
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 398
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$6;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendListView;->access$21(Lcom/vkontakte/android/FriendListView;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0900c0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 399
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$6;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendListView;->access$21(Lcom/vkontakte/android/FriendListView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 415
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$6;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v3, v7}, Lcom/vkontakte/android/FriendListView;->access$22(Lcom/vkontakte/android/FriendListView;Z)V

    .line 416
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$6;->this$0:Lcom/vkontakte/android/FriendListView;

    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$6;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$23(Lcom/vkontakte/android/FriendListView;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/FriendListView;->access$24(Lcom/vkontakte/android/FriendListView;Z)V

    .line 417
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$6;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/FriendListView;->updateList()V

    .line 418
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$6;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v3, v7}, Lcom/vkontakte/android/FriendListView;->access$25(Lcom/vkontakte/android/FriendListView;Z)V

    .line 419
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$6;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendListView;->access$12(Lcom/vkontakte/android/FriendListView;)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$6;->this$0:Lcom/vkontakte/android/FriendListView;

    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$6;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$16(Lcom/vkontakte/android/FriendListView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeight()I

    move-result v4

    const/high16 v5, 0x42680000    # 58.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/vkontakte/android/FriendListView;->access$26(Lcom/vkontakte/android/FriendListView;I)V

    .line 420
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$6;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendListView;->access$8(Lcom/vkontakte/android/FriendListView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$6;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$11(Lcom/vkontakte/android/FriendListView;)I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/FriendListView$6;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v5}, Lcom/vkontakte/android/FriendListView;->access$12(Lcom/vkontakte/android/FriendListView;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V

    .line 421
    return-void

    .line 402
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 403
    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    const/4 v0, 0x0

    .line 404
    .local v0, "contains":Z
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$6;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$4(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 410
    :goto_1
    if-nez v0, :cond_1

    .line 411
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$6;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$5(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 404
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 405
    .local v2, "p2":Lcom/vkontakte/android/UserProfile;
    iget v5, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    iget v6, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v5, v6, :cond_4

    .line 406
    const/4 v0, 0x1

    .line 407
    goto :goto_1
.end method
