.class Lcom/vkontakte/android/GroupsActivity$13;
.super Ljava/lang/Object;
.source "GroupsActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/GroupsSearch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/GroupsActivity;->loadSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/GroupsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/GroupsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/GroupsActivity$13;->this$0:Lcom/vkontakte/android/GroupsActivity;

    .line 539
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

    .line 576
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$13;->this$0:Lcom/vkontakte/android/GroupsActivity;

    const v1, 0x7f090058

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 577
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$13;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$20(Lcom/vkontakte/android/GroupsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 578
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$13;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$23(Lcom/vkontakte/android/GroupsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 579
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$13;->this$0:Lcom/vkontakte/android/GroupsActivity;

    iput-boolean v2, v0, Lcom/vkontakte/android/GroupsActivity;->searchLoading:Z

    .line 580
    return-void
.end method

.method public success(Ljava/util/Vector;I)V
    .locals 6
    .param p2, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "groups":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Group;>;"
    const/16 v5, 0x32

    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 542
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$13;->this$0:Lcom/vkontakte/android/GroupsActivity;

    iget-boolean v0, v0, Lcom/vkontakte/android/GroupsActivity;->searchPreloading:Z

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$13;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$15(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 551
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$13;->this$0:Lcom/vkontakte/android/GroupsActivity;

    iput-boolean v2, v0, Lcom/vkontakte/android/GroupsActivity;->searchPreloading:Z

    .line 552
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$13;->this$0:Lcom/vkontakte/android/GroupsActivity;

    iget-boolean v0, v0, Lcom/vkontakte/android/GroupsActivity;->searchPreloadOnReady:Z

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$13;->this$0:Lcom/vkontakte/android/GroupsActivity;

    iput-boolean v1, v0, Lcom/vkontakte/android/GroupsActivity;->searchPreloading:Z

    .line 554
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$13;->this$0:Lcom/vkontakte/android/GroupsActivity;

    iput-boolean v2, v0, Lcom/vkontakte/android/GroupsActivity;->searchPreloadOnReady:Z

    .line 555
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$13;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$18(Lcom/vkontakte/android/GroupsActivity;)V

    .line 557
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/GroupsActivity$13;->this$0:Lcom/vkontakte/android/GroupsActivity;

    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$13;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$8(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v0, p2, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, v4, Lcom/vkontakte/android/GroupsActivity;->searchMoreAvailable:Z

    .line 558
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$13;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$20(Lcom/vkontakte/android/GroupsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$13;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$14(Lcom/vkontakte/android/GroupsActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$13;->this$0:Lcom/vkontakte/android/GroupsActivity;

    iget-boolean v0, v0, Lcom/vkontakte/android/GroupsActivity;->searchMoreAvailable:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$13;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$8(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 561
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$13;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$23(Lcom/vkontakte/android/GroupsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0900c0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 562
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$13;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$23(Lcom/vkontakte/android/GroupsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 563
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$13;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$4(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    .line 570
    :goto_3
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$13;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$2(Lcom/vkontakte/android/GroupsActivity;)V

    .line 571
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$13;->this$0:Lcom/vkontakte/android/GroupsActivity;

    iput-boolean v2, v0, Lcom/vkontakte/android/GroupsActivity;->searchLoading:Z

    .line 572
    return-void

    .line 544
    :cond_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v5, :cond_2

    .line 545
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$13;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$8(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p1, v2, v5}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 546
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$13;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$15(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {p1, v5, v4}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 548
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$13;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$8(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 557
    goto/16 :goto_1

    :cond_4
    move v0, v3

    .line 559
    goto :goto_2

    .line 565
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$13;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$23(Lcom/vkontakte/android/GroupsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$13;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$4(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    goto :goto_3
.end method
