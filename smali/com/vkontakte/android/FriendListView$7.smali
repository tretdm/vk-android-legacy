.class Lcom/vkontakte/android/FriendListView$7;
.super Ljava/lang/Object;
.source "FriendListView.java"

# interfaces
.implements Lcom/vkontakte/android/api/UsersSearch$Callback;


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
    iput-object p1, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    .line 434
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

    .line 471
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/FriendListView;->access$20(Lcom/vkontakte/android/FriendListView;Lcom/vkontakte/android/APIRequest;)V

    .line 472
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090058

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 473
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    iget-object v1, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v1}, Lcom/vkontakte/android/FriendListView;->access$23(Lcom/vkontakte/android/FriendListView;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/FriendListView;->access$24(Lcom/vkontakte/android/FriendListView;Z)V

    .line 474
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v0, v2}, Lcom/vkontakte/android/FriendListView;->access$25(Lcom/vkontakte/android/FriendListView;Z)V

    .line 475
    return-void
.end method

.method public success([Lcom/vkontakte/android/UserProfile;I)V
    .locals 7
    .param p1, "_results"    # [Lcom/vkontakte/android/UserProfile;
    .param p2, "total"    # I

    .prologue
    const/4 v2, 0x1

    const/16 v6, 0x32

    const/4 v3, 0x0

    .line 437
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/vkontakte/android/FriendListView;->access$20(Lcom/vkontakte/android/FriendListView;Lcom/vkontakte/android/APIRequest;)V

    .line 438
    if-nez p2, :cond_0

    array-length v4, p1

    if-nez v4, :cond_0

    .line 439
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$21(Lcom/vkontakte/android/FriendListView;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f0900c0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 440
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$21(Lcom/vkontakte/android/FriendListView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    :cond_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 444
    .local v1, "results":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    array-length v5, p1

    move v4, v3

    :goto_0
    if-lt v4, v5, :cond_3

    .line 446
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$27(Lcom/vkontakte/android/FriendListView;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 447
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$28(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 454
    :goto_1
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4, v3}, Lcom/vkontakte/android/FriendListView;->access$29(Lcom/vkontakte/android/FriendListView;Z)V

    .line 455
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$30(Lcom/vkontakte/android/FriendListView;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 456
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4, v2}, Lcom/vkontakte/android/FriendListView;->access$29(Lcom/vkontakte/android/FriendListView;Z)V

    .line 457
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4, v3}, Lcom/vkontakte/android/FriendListView;->access$31(Lcom/vkontakte/android/FriendListView;Z)V

    .line 458
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    iget-object v5, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v5}, Lcom/vkontakte/android/FriendListView;->access$32(Lcom/vkontakte/android/FriendListView;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/FriendListView;->access$33(Lcom/vkontakte/android/FriendListView;Ljava/lang/String;)V

    .line 461
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    iget-object v5, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v5}, Lcom/vkontakte/android/FriendListView;->access$5(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-le p2, v5, :cond_6

    :goto_2
    invoke-static {v4, v2}, Lcom/vkontakte/android/FriendListView;->access$22(Lcom/vkontakte/android/FriendListView;Z)V

    .line 462
    iget-object v2, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$23(Lcom/vkontakte/android/FriendListView;)Z

    move-result v4

    invoke-static {v2, v4}, Lcom/vkontakte/android/FriendListView;->access$24(Lcom/vkontakte/android/FriendListView;Z)V

    .line 463
    iget-object v2, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/FriendListView;->updateList()V

    .line 464
    iget-object v2, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v2, v3}, Lcom/vkontakte/android/FriendListView;->access$25(Lcom/vkontakte/android/FriendListView;Z)V

    .line 465
    iget-object v2, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v2}, Lcom/vkontakte/android/FriendListView;->access$12(Lcom/vkontakte/android/FriendListView;)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendListView;->access$16(Lcom/vkontakte/android/FriendListView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeight()I

    move-result v3

    const/high16 v4, 0x42680000    # 58.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/vkontakte/android/FriendListView;->access$26(Lcom/vkontakte/android/FriendListView;I)V

    .line 466
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v2}, Lcom/vkontakte/android/FriendListView;->access$8(Lcom/vkontakte/android/FriendListView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v3}, Lcom/vkontakte/android/FriendListView;->access$11(Lcom/vkontakte/android/FriendListView;)I

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$12(Lcom/vkontakte/android/FriendListView;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V

    .line 467
    return-void

    .line 444
    :cond_3
    aget-object v0, p1, v4

    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 448
    .end local v0    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_4
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-le v4, v6, :cond_5

    .line 449
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$5(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v1, v3, v6}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 450
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$28(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {v1, v6, v5}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 452
    :cond_5
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView$7;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendListView;->access$5(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :cond_6
    move v2, v3

    .line 461
    goto/16 :goto_2
.end method
