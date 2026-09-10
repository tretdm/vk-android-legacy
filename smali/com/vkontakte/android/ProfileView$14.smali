.class Lcom/vkontakte/android/ProfileView$14;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileView;->loadData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ProfileView;

.field private final synthetic val$refresh:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileView;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    iput-boolean p2, p0, Lcom/vkontakte/android/ProfileView$14;->val$refresh:Z

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 6
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x12

    const/16 v4, 0xf

    const/4 v3, 0x0

    .line 592
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ProfileView;->access$31(Lcom/vkontakte/android/ProfileView;Lcom/vkontakte/android/APIRequest;)V

    .line 593
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    iput-boolean v3, v0, Lcom/vkontakte/android/ProfileView;->dataLoading:Z

    .line 594
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    iput-boolean v3, v2, Lcom/vkontakte/android/ProfileView;->dataLoading:Z

    iput-boolean v3, v1, Lcom/vkontakte/android/ProfileView;->prependNewEntries:Z

    iput-boolean v3, v0, Lcom/vkontakte/android/ProfileView;->refreshingOnStart:Z

    .line 595
    iget-boolean v0, p0, Lcom/vkontakte/android/ProfileView$14;->val$refresh:Z

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v0, v0, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 598
    :cond_0
    if-eq p1, v5, :cond_1

    if-ne p1, v4, :cond_6

    .line 599
    :cond_1
    if-ne p1, v5, :cond_2

    .line 600
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$30(Lcom/vkontakte/android/ProfileView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0600f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 601
    :cond_2
    if-ne p1, v4, :cond_3

    .line 602
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$30(Lcom/vkontakte/android/ProfileView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0600f6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 603
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v0, v0, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v1, 0x1

    const/16 v2, 0x12c

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 604
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$30(Lcom/vkontakte/android/ProfileView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 605
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$30(Lcom/vkontakte/android/ProfileView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v2, p0, Lcom/vkontakte/android/ProfileView$14;->val$refresh:Z

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ProfileView;->onDataLoaded(Ljava/util/List;Z)V

    .line 607
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v0, v0, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    .line 608
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v0

    if-lez v0, :cond_5

    .line 609
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    .line 610
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$26(Lcom/vkontakte/android/ProfileView;)V

    .line 622
    :goto_0
    return-void

    .line 620
    :cond_6
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ProfileView;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public success(Ljava/util/ArrayList;ILjava/lang/Object;)V
    .locals 8
    .param p2, "total"    # I
    .param p3, "status"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "news":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    const/16 v7, 0x400

    const/16 v6, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 540
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/vkontakte/android/ProfileView;->access$31(Lcom/vkontakte/android/ProfileView;Lcom/vkontakte/android/APIRequest;)V

    .line 541
    iget-boolean v1, p0, Lcom/vkontakte/android/ProfileView$14;->val$refresh:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v1, v7}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-static {v4, v1}, Lcom/vkontakte/android/ProfileView;->access$32(Lcom/vkontakte/android/ProfileView;I)V

    .line 545
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_9

    .line 552
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v1, v1, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 553
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v1, v1, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/16 v4, 0x12c

    invoke-static {v1, v3, v4}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 554
    :cond_2
    const-string v1, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "header items size before = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v5}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    if-nez p2, :cond_a

    .line 556
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$30(Lcom/vkontakte/android/ProfileView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 557
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$30(Lcom/vkontakte/android/ProfileView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    :cond_3
    :goto_1
    const-string v1, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "header items size after = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v5}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-boolean v1, p0, Lcom/vkontakte/android/ProfileView$14;->val$refresh:Z

    if-eqz v1, :cond_4

    .line 563
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$21(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f080132

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    if-eqz v1, :cond_b

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 564
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$21(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f080133

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 566
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    iget v4, v1, Lcom/vkontakte/android/ProfileView;->offset:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Lcom/vkontakte/android/ProfileView;->offset:I

    .line 567
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v1

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v1, v4, :cond_7

    :cond_5
    iget-boolean v1, p0, Lcom/vkontakte/android/ProfileView$14;->val$refresh:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    iget v1, v1, Lcom/vkontakte/android/ProfileView;->lastUpdateTime:I

    if-nez v1, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$22(Lcom/vkontakte/android/ProfileView;)Z

    move-result v4

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->showAllPosts:Z

    if-eqz v1, :cond_c

    move v1, v2

    :goto_3
    if-ne v4, v1, :cond_7

    .line 568
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/vkontakte/android/cache/UserWallCache;->replace(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 570
    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v6, :cond_e

    .line 571
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-boolean v1, v1, Lcom/vkontakte/android/ProfileView;->preloading:Z

    if-eqz v1, :cond_d

    .line 572
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v1, v1, Lcom/vkontakte/android/ProfileView;->preloadedNews:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 573
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    iput-boolean v2, v1, Lcom/vkontakte/android/ProfileView;->dataLoading:Z

    .line 582
    :goto_4
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    iput-boolean v2, v1, Lcom/vkontakte/android/ProfileView;->dataLoading:Z

    .line 583
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    iput-boolean v2, v1, Lcom/vkontakte/android/ProfileView;->preloading:Z

    .line 584
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-boolean v1, v1, Lcom/vkontakte/android/ProfileView;->preloadOnReady:Z

    if-eqz v1, :cond_8

    .line 585
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    iput-boolean v2, v1, Lcom/vkontakte/android/ProfileView;->preloadOnReady:Z

    .line 586
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    iput-boolean v3, v1, Lcom/vkontakte/android/ProfileView;->preloading:Z

    .line 587
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ProfileView;->loadData(Z)V

    .line 589
    :cond_8
    return-void

    .line 545
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 546
    .local v0, "p":Lcom/vkontakte/android/NewsEntry;
    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v5}, Lcom/vkontakte/android/ProfileView;->access$33(Lcom/vkontakte/android/ProfileView;)I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-virtual {v0, v7}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 547
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 559
    .end local v0    # "p":Lcom/vkontakte/android/NewsEntry;
    :cond_a
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$30(Lcom/vkontakte/android/ProfileView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 563
    :cond_b
    const/4 v1, 0x4

    goto/16 :goto_2

    :cond_c
    move v1, v3

    .line 567
    goto :goto_3

    .line 575
    :cond_d
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-boolean v4, p0, Lcom/vkontakte/android/ProfileView$14;->val$refresh:Z

    invoke-virtual {v1, p1, v4}, Lcom/vkontakte/android/ProfileView;->onDataLoaded(Ljava/util/List;Z)V

    goto :goto_4

    .line 578
    :cond_e
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {p1, v2, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    iget-boolean v5, p0, Lcom/vkontakte/android/ProfileView$14;->val$refresh:Z

    invoke-virtual {v1, v4, v5}, Lcom/vkontakte/android/ProfileView;->onDataLoaded(Ljava/util/List;Z)V

    .line 579
    iget-boolean v1, p0, Lcom/vkontakte/android/ProfileView$14;->val$refresh:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v1, v1, Lcom/vkontakte/android/ProfileView;->preloadedNews:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 580
    :cond_f
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$14;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v1, v1, Lcom/vkontakte/android/ProfileView;->preloadedNews:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v6, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    goto :goto_4
.end method
