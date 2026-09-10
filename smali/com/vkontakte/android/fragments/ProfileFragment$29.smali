.class Lcom/vkontakte/android/fragments/ProfileFragment$29;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ProfileFragment;->loadWall(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

.field final synthetic val$count:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ProfileFragment;II)V
    .locals 0

    .prologue
    .line 1651
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    iput p2, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->val$offset:I

    iput p3, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 5
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x12

    const/16 v3, 0xf

    const/4 v0, 0x0

    .line 1724
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$1702(Lcom/vkontakte/android/fragments/ProfileFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 1725
    if-eq p1, v4, :cond_0

    if-ne p1, v3, :cond_7

    .line 1726
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2800(Lcom/vkontakte/android/fragments/ProfileFragment;)Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1742
    :goto_0
    return-void

    .line 1727
    :cond_1
    if-ne p1, v4, :cond_2

    .line 1728
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2800(Lcom/vkontakte/android/fragments/ProfileFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0d01db

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1729
    :cond_2
    if-ne p1, v3, :cond_3

    .line 1730
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2800(Lcom/vkontakte/android/fragments/ProfileFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0d01da

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1731
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2900(Lcom/vkontakte/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2800(Lcom/vkontakte/android/fragments/ProfileFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1732
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2900(Lcom/vkontakte/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2800(Lcom/vkontakte/android/fragments/ProfileFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1733
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 1734
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$100(Lcom/vkontakte/android/fragments/ProfileFragment;)I

    move-result v2

    if-gez v2, :cond_5

    const/4 v0, 0x1

    :cond_5
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->setRefreshEnabled(Z)V

    .line 1735
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2900(Lcom/vkontakte/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$3000(Lcom/vkontakte/android/fragments/ProfileFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1736
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$100(Lcom/vkontakte/android/fragments/ProfileFragment;)I

    move-result v0

    if-lez v0, :cond_6

    .line 1737
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    .line 1738
    :cond_6
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2300(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    goto :goto_0

    .line 1740
    :cond_7
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/fragments/ProfileFragment;->onError(ILjava/lang/String;)V

    goto/16 :goto_0
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
    .line 1655
    .local p1, "news":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$1702(Lcom/vkontakte/android/fragments/ProfileFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 1656
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1720
    :goto_0
    return-void

    .line 1657
    :cond_0
    iget v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->val$offset:I

    if-nez v6, :cond_1

    .line 1658
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v6

    iput p4, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->postponedCount:I

    .line 1659
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v6

    iput p5, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->suggestedCount:I

    .line 1660
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2600(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    .line 1662
    :cond_1
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    iget-boolean v6, v6, Lcom/vkontakte/android/fragments/ProfileFragment;->refreshing:Z

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/NewsEntry;

    const/16 v7, 0x400

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1663
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-static {v7, v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2702(Lcom/vkontakte/android/fragments/ProfileFragment;I)I

    .line 1666
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/NewsEntry;

    .line 1667
    .local v4, "p":Lcom/vkontakte/android/NewsEntry;
    iget v6, v4, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2700(Lcom/vkontakte/android/fragments/ProfileFragment;)I

    move-result v7

    if-ne v6, v7, :cond_3

    const/16 v6, 0x400

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1668
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1674
    .end local v4    # "p":Lcom/vkontakte/android/NewsEntry;
    :cond_4
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    iget-object v6, v6, Lcom/vkontakte/android/fragments/ProfileFragment;->contentView:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_6

    .line 1675
    if-nez p2, :cond_10

    .line 1676
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2900(Lcom/vkontakte/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2800(Lcom/vkontakte/android/fragments/ProfileFragment;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1677
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2900(Lcom/vkontakte/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2800(Lcom/vkontakte/android/fragments/ProfileFragment;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1678
    :cond_5
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2800(Lcom/vkontakte/android/fragments/ProfileFragment;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$100(Lcom/vkontakte/android/fragments/ProfileFragment;)I

    move-result v6

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    if-ne v6, v8, :cond_f

    const v6, 0x7f0d036a

    :goto_1
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1684
    :cond_6
    :goto_2
    iget v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->val$offset:I

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$3000(Lcom/vkontakte/android/fragments/ProfileFragment;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 1685
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$3000(Lcom/vkontakte/android/fragments/ProfileFragment;)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f080160

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v6

    iget-boolean v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    if-eqz v6, :cond_11

    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1686
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$3000(Lcom/vkontakte/android/fragments/ProfileFragment;)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f080161

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1688
    :cond_7
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    iget v7, v6, Lcom/vkontakte/android/fragments/ProfileFragment;->offset:I

    iget v8, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->val$count:I

    add-int/2addr v7, v8

    iput v7, v6, Lcom/vkontakte/android/fragments/ProfileFragment;->offset:I

    .line 1689
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$100(Lcom/vkontakte/android/fragments/ProfileFragment;)I

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$100(Lcom/vkontakte/android/fragments/ProfileFragment;)I

    move-result v6

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    if-ne v6, v7, :cond_9

    :cond_8
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    iget-boolean v6, v6, Lcom/vkontakte/android/fragments/ProfileFragment;->refreshing:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$3100(Lcom/vkontakte/android/fragments/ProfileFragment;)Z

    move-result v7

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v6

    iget-boolean v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->showAllPosts:Z

    if-nez v6, :cond_12

    const/4 v6, 0x1

    :goto_4
    if-ne v7, v6, :cond_9

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 1690
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "postponed_count"

    invoke-interface {v6, v7, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1693
    :cond_9
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    iget-boolean v6, v6, Lcom/vkontakte/android/fragments/ProfileFragment;->refreshing:Z

    if-nez v6, :cond_13

    .line 1694
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1695
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/NewsEntry;>;"
    :cond_a
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1696
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 1697
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    const/4 v5, 0x0

    .line 1698
    .local v5, "removed":Z
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    iget-object v6, v6, Lcom/vkontakte/android/fragments/ProfileFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    .line 1699
    .local v1, "ee":Lcom/vkontakte/android/NewsEntry;
    iget v6, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v7, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-ne v6, v7, :cond_b

    .line 1700
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1702
    const/4 v5, 0x1

    .line 1706
    .end local v1    # "ee":Lcom/vkontakte/android/NewsEntry;
    :cond_c
    if-nez v5, :cond_a

    .line 1707
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    iget-object v6, v6, Lcom/vkontakte/android/fragments/ProfileFragment;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    .line 1708
    .restart local v1    # "ee":Lcom/vkontakte/android/NewsEntry;
    iget v6, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v7, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-ne v6, v7, :cond_d

    .line 1709
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1711
    const/4 v5, 0x1

    .line 1715
    .end local v1    # "ee":Lcom/vkontakte/android/NewsEntry;
    :cond_e
    if-eqz v5, :cond_a

    goto :goto_5

    .line 1678
    .end local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    .end local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/NewsEntry;>;"
    .end local v5    # "removed":Z
    :cond_f
    const v6, 0x7f0d0369

    goto/16 :goto_1

    .line 1680
    :cond_10
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2900(Lcom/vkontakte/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2800(Lcom/vkontakte/android/fragments/ProfileFragment;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1685
    :cond_11
    const/4 v6, 0x4

    goto/16 :goto_3

    .line 1689
    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 1719
    :cond_13
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment$29;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_14

    const/4 v6, 0x1

    :goto_6
    invoke-virtual {v7, p1, v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->onDataLoaded(Ljava/util/List;Z)V

    goto/16 :goto_0

    :cond_14
    const/4 v6, 0x0

    goto :goto_6
.end method
