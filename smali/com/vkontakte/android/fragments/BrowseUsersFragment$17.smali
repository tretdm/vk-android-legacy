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

.field final synthetic val$reload:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Z)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    iput-boolean p2, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->val$reload:Z

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

    .line 636
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$402(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Z)Z

    .line 637
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$2302(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 638
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 641
    :goto_0
    return-void

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$2500(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 640
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$2600(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public success(Ljava/util/ArrayList;I)V
    .locals 7
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
    const/16 v6, 0x12c

    const/16 v0, 0x64

    const/4 v2, 0x1

    const/16 v1, 0x32

    const/4 v3, 0x0

    .line 603
    iget-object v4, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v4, v3}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$402(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Z)Z

    .line 604
    iget-object v4, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$2302(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 605
    iget-object v4, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_0

    .line 632
    :goto_0
    return-void

    .line 606
    :cond_0
    iget-boolean v4, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->val$reload:Z

    if-eqz v4, :cond_3

    .line 607
    iget-object v4, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$700(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v4, v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$2402(Lcom/vkontakte/android/fragments/BrowseUsersFragment;I)I

    .line 610
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$2500(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v0, v2, v6}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 611
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$2600(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {v0, v3, v6}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 612
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0, p2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$2702(Lcom/vkontakte/android/fragments/BrowseUsersFragment;I)I

    .line 614
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$700(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 615
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1000(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 622
    :goto_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$702(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Z)Z

    .line 623
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$900(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 624
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$702(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Z)Z

    .line 625
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$902(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Z)Z

    .line 626
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1300(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Z)Z

    .line 628
    :cond_2
    const/16 v0, 0x3e8

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 629
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1100(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p2, v0, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    move v0, v2

    :goto_3
    invoke-static {v1, v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$802(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Z)Z

    .line 630
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$2800(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$800(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 631
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1200(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V

    goto/16 :goto_0

    .line 609
    :cond_3
    iget-object v4, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$700(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v4, v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$2412(Lcom/vkontakte/android/fragments/BrowseUsersFragment;I)I

    goto/16 :goto_1

    .line 616
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_6

    .line 617
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1100(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v3, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 618
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1000(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p1, v1, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 620
    :cond_6
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1100(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    :cond_7
    move v0, v3

    .line 629
    goto :goto_3
.end method
