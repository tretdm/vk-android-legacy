.class Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;
.super Ljava/lang/Object;
.source "BrowseUsersFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/UsersSearch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BrowseUsersFragment;->loadData(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

.field private final synthetic val$reload:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    iput-boolean p2, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->val$reload:Z

    .line 601
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

    .line 637
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$34(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Z)V

    .line 638
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$35(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 639
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 642
    :goto_0
    return-void

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$4(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$5(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public success(Ljava/util/ArrayList;I)V
    .locals 8
    .param p2, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const/16 v7, 0x12c

    const/16 v0, 0x64

    const/4 v2, 0x1

    const/16 v1, 0x32

    const/4 v3, 0x0

    .line 604
    iget-object v4, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v4, v3}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$34(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Z)V

    .line 605
    iget-object v4, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$35(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 606
    iget-object v4, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_0

    .line 633
    :goto_0
    return-void

    .line 607
    :cond_0
    iget-boolean v4, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->val$reload:Z

    if-eqz v4, :cond_3

    .line 608
    iget-object v4, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$18(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v4, v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$36(Lcom/vkontakte/android/fragments/BrowseUsersFragment;I)V

    .line 611
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$4(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v0, v2, v7}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 612
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$5(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {v0, v3, v7}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 613
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0, p2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$38(Lcom/vkontakte/android/fragments/BrowseUsersFragment;I)V

    .line 615
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$18(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 616
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$3(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 623
    :goto_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$20(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Z)V

    .line 624
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$39(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 625
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$20(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Z)V

    .line 626
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$21(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Z)V

    .line 627
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Z)Z

    .line 629
    :cond_2
    const/16 v0, 0x3e8

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 630
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$2(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p2, v0, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    move v0, v2

    :goto_3
    invoke-static {v1, v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$40(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Z)V

    .line 631
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$41(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$19(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 632
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$6(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V

    goto/16 :goto_0

    .line 610
    :cond_3
    iget-object v4, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$37(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)I

    move-result v5

    iget-object v6, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$18(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v0, v1

    :cond_4
    add-int/2addr v0, v5

    invoke-static {v4, v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$36(Lcom/vkontakte/android/fragments/BrowseUsersFragment;I)V

    goto/16 :goto_1

    .line 617
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_6

    .line 618
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$2(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v3, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 619
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$3(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p1, v1, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 621
    :cond_6
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$2(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    :cond_7
    move v0, v3

    .line 630
    goto :goto_3
.end method
