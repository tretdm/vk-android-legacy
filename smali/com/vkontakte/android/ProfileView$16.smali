.class Lcom/vkontakte/android/ProfileView$16;
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

.field private final synthetic val$count:I

.field private final synthetic val$refresh:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileView;ZI)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    iput-boolean p2, p0, Lcom/vkontakte/android/ProfileView$16;->val$refresh:Z

    iput p3, p0, Lcom/vkontakte/android/ProfileView$16;->val$count:I

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 7
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x12

    const/16 v5, 0xf

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 698
    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkontakte/android/ProfileView;->access$31(Lcom/vkontakte/android/ProfileView;Lcom/vkontakte/android/APIRequest;)V

    .line 699
    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    iput-boolean v1, v2, Lcom/vkontakte/android/ProfileView;->dataLoading:Z

    .line 700
    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    iput-boolean v1, v4, Lcom/vkontakte/android/ProfileView;->dataLoading:Z

    iput-boolean v1, v3, Lcom/vkontakte/android/ProfileView;->prependNewEntries:Z

    iput-boolean v1, v2, Lcom/vkontakte/android/ProfileView;->refreshingOnStart:Z

    .line 701
    iget-boolean v2, p0, Lcom/vkontakte/android/ProfileView$16;->val$refresh:Z

    if-eqz v2, :cond_0

    .line 702
    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v2, v2, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 704
    :cond_0
    if-eq p1, v6, :cond_1

    if-ne p1, v5, :cond_7

    .line 705
    :cond_1
    if-ne p1, v6, :cond_2

    .line 706
    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v2}, Lcom/vkontakte/android/ProfileView;->access$30(Lcom/vkontakte/android/ProfileView;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f08010f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 707
    :cond_2
    if-ne p1, v5, :cond_3

    .line 708
    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v2}, Lcom/vkontakte/android/ProfileView;->access$30(Lcom/vkontakte/android/ProfileView;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f080110

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 709
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v2, v2, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/16 v3, 0x12c

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 710
    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v2}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v3}, Lcom/vkontakte/android/ProfileView;->access$30(Lcom/vkontakte/android/ProfileView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 711
    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v2}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v3}, Lcom/vkontakte/android/ProfileView;->access$30(Lcom/vkontakte/android/ProfileView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v4, p0, Lcom/vkontakte/android/ProfileView$16;->val$refresh:Z

    invoke-virtual {v2, v3, v4}, Lcom/vkontakte/android/ProfileView;->onDataLoaded(Ljava/util/List;Z)V

    .line 713
    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v2, v2, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v3}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v3

    if-gez v3, :cond_6

    :goto_0
    invoke-virtual {v2, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    .line 714
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$23(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 715
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v0

    if-lez v0, :cond_5

    .line 716
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    .line 717
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$29(Lcom/vkontakte/android/ProfileView;)V

    .line 729
    :goto_1
    return-void

    :cond_6
    move v0, v1

    .line 713
    goto :goto_0

    .line 727
    :cond_7
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ProfileView;->onError(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public success(Ljava/util/ArrayList;ILjava/lang/Object;II)V
    .locals 9
    .param p2, "total"    # I
    .param p3, "status"    # Ljava/lang/Object;
    .param p4, "postponedCount"    # I
    .param p5, "suggestedCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;I",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 607
    .local p1, "news":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    iget v6, v6, Lcom/vkontakte/android/ProfileView;->offset:I

    if-nez v6, :cond_0

    .line 608
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v6}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v6

    iput p4, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->postponedCount:I

    .line 609
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v6}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v6

    iput p5, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->suggestedCount:I

    .line 610
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v6}, Lcom/vkontakte/android/ProfileView;->access$32(Lcom/vkontakte/android/ProfileView;)V

    .line 612
    :cond_0
    const/4 v2, 0x1

    .line 613
    .local v2, "ii":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_c

    .line 617
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vkontakte/android/ProfileView;->access$31(Lcom/vkontakte/android/ProfileView;Lcom/vkontakte/android/APIRequest;)V

    .line 618
    iget-boolean v6, p0, Lcom/vkontakte/android/ProfileView$16;->val$refresh:Z

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/NewsEntry;

    const/16 v7, 0x400

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 619
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-static {v7, v6}, Lcom/vkontakte/android/ProfileView;->access$33(Lcom/vkontakte/android/ProfileView;I)V

    .line 622
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_d

    .line 629
    :goto_1
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v6, v6, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/RefreshableListView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_3

    .line 630
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v6, v6, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v7, 0x1

    const/16 v8, 0x12c

    invoke-static {v6, v7, v8}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 632
    :cond_3
    if-nez p2, :cond_f

    .line 633
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v6}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v7}, Lcom/vkontakte/android/ProfileView;->access$30(Lcom/vkontakte/android/ProfileView;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 634
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v6}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v7}, Lcom/vkontakte/android/ProfileView;->access$30(Lcom/vkontakte/android/ProfileView;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    :cond_4
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v6}, Lcom/vkontakte/android/ProfileView;->access$30(Lcom/vkontakte/android/ProfileView;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v6}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v6

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    if-ne v6, v8, :cond_e

    const v6, 0x7f0802c7

    :goto_2
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(I)V

    .line 640
    :goto_3
    iget-boolean v6, p0, Lcom/vkontakte/android/ProfileView$16;->val$refresh:Z

    if-eqz v6, :cond_5

    .line 641
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v6}, Lcom/vkontakte/android/ProfileView;->access$23(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f09017f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v6}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v6

    iget-boolean v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    if-eqz v6, :cond_10

    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 642
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v6}, Lcom/vkontakte/android/ProfileView;->access$23(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f090180

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 644
    :cond_5
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    iget v7, v6, Lcom/vkontakte/android/ProfileView;->offset:I

    iget v8, p0, Lcom/vkontakte/android/ProfileView$16;->val$count:I

    add-int/2addr v7, v8

    iput v7, v6, Lcom/vkontakte/android/ProfileView;->offset:I

    .line 645
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v6}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v6}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v6

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    if-ne v6, v7, :cond_8

    :cond_6
    iget-boolean v6, p0, Lcom/vkontakte/android/ProfileView$16;->val$refresh:Z

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    iget v6, v6, Lcom/vkontakte/android/ProfileView;->lastUpdateTime:I

    if-nez v6, :cond_8

    :cond_7
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v6}, Lcom/vkontakte/android/ProfileView;->access$25(Lcom/vkontakte/android/ProfileView;)Z

    move-result v7

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v6}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v6

    iget-boolean v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->showAllPosts:Z

    if-eqz v6, :cond_11

    const/4 v6, 0x0

    :goto_5
    if-ne v7, v6, :cond_8

    .line 646
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/vkontakte/android/cache/UserWallCache;->replace(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 647
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "postponed_count"

    invoke-interface {v6, v7, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 650
    :cond_8
    iget-boolean v6, p0, Lcom/vkontakte/android/ProfileView$16;->val$refresh:Z

    if-nez v6, :cond_a

    .line 651
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 652
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/NewsEntry;>;"
    :cond_9
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_12

    .line 676
    .end local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/NewsEntry;>;"
    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0xa

    if-gt v6, v7, :cond_18

    .line 677
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-boolean v6, v6, Lcom/vkontakte/android/ProfileView;->preloading:Z

    if-eqz v6, :cond_17

    .line 678
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v6, v6, Lcom/vkontakte/android/ProfileView;->preloadedNews:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 679
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/vkontakte/android/ProfileView;->dataLoading:Z

    .line 688
    :goto_7
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/vkontakte/android/ProfileView;->dataLoading:Z

    .line 689
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/vkontakte/android/ProfileView;->preloading:Z

    .line 690
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-boolean v6, v6, Lcom/vkontakte/android/ProfileView;->preloadOnReady:Z

    if-eqz v6, :cond_b

    .line 691
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/vkontakte/android/ProfileView;->preloadOnReady:Z

    .line 692
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/vkontakte/android/ProfileView;->preloading:Z

    .line 693
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ProfileView;->loadData(Z)V

    .line 695
    :cond_b
    return-void

    .line 613
    :cond_c
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 615
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 622
    .end local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_d
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/NewsEntry;

    .line 623
    .local v4, "p":Lcom/vkontakte/android/NewsEntry;
    iget v7, v4, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v8, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v8}, Lcom/vkontakte/android/ProfileView;->access$34(Lcom/vkontakte/android/ProfileView;)I

    move-result v8

    if-ne v7, v8, :cond_2

    const/16 v7, 0x400

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 624
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 635
    .end local v4    # "p":Lcom/vkontakte/android/NewsEntry;
    :cond_e
    const v6, 0x7f080080

    goto/16 :goto_2

    .line 637
    :cond_f
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v6}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v7}, Lcom/vkontakte/android/ProfileView;->access$30(Lcom/vkontakte/android/ProfileView;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 641
    :cond_10
    const/4 v6, 0x4

    goto/16 :goto_4

    .line 645
    :cond_11
    const/4 v6, 0x1

    goto/16 :goto_5

    .line 653
    .restart local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/NewsEntry;>;"
    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 654
    .restart local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    const/4 v5, 0x0

    .line 655
    .local v5, "removed":Z
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v6, v6, Lcom/vkontakte/android/ProfileView;->news:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_15

    .line 663
    :goto_8
    if-nez v5, :cond_9

    .line 664
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v6, v6, Lcom/vkontakte/android/ProfileView;->preloadedNews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_16

    .line 672
    :goto_9
    if-eqz v5, :cond_9

    goto/16 :goto_6

    .line 655
    :cond_15
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    .line 656
    .local v1, "ee":Lcom/vkontakte/android/NewsEntry;
    iget v7, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v8, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-ne v7, v8, :cond_13

    .line 657
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 659
    const/4 v5, 0x1

    .line 660
    goto :goto_8

    .line 664
    .end local v1    # "ee":Lcom/vkontakte/android/NewsEntry;
    :cond_16
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    .line 665
    .restart local v1    # "ee":Lcom/vkontakte/android/NewsEntry;
    iget v7, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v8, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-ne v7, v8, :cond_14

    .line 666
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 668
    const/4 v5, 0x1

    .line 669
    goto :goto_9

    .line 681
    .end local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    .end local v1    # "ee":Lcom/vkontakte/android/NewsEntry;
    .end local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/NewsEntry;>;"
    .end local v5    # "removed":Z
    :cond_17
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-boolean v7, p0, Lcom/vkontakte/android/ProfileView$16;->val$refresh:Z

    invoke-virtual {v6, p1, v7}, Lcom/vkontakte/android/ProfileView;->onDataLoaded(Ljava/util/List;Z)V

    goto/16 :goto_7

    .line 684
    :cond_18
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    const/4 v7, 0x0

    const/16 v8, 0xa

    invoke-virtual {p1, v7, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    iget-boolean v8, p0, Lcom/vkontakte/android/ProfileView$16;->val$refresh:Z

    invoke-virtual {v6, v7, v8}, Lcom/vkontakte/android/ProfileView;->onDataLoaded(Ljava/util/List;Z)V

    .line 685
    iget-boolean v6, p0, Lcom/vkontakte/android/ProfileView$16;->val$refresh:Z

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v6, v6, Lcom/vkontakte/android/ProfileView;->preloadedNews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 686
    :cond_19
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$16;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v6, v6, Lcom/vkontakte/android/ProfileView;->preloadedNews:Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_7
.end method
