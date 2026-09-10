.class Lcom/vkontakte/android/fragments/ChatFragment$8;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$8;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 605
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$8;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$33(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$8;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 607
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$8;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$33(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$8;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$34(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$8;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$35(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$8;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$34(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 609
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$8;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$36(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 610
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$8;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$37(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 620
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$8;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$32(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$8;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$32(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 624
    :cond_2
    return-void

    .line 611
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$8;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$38(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 612
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$8;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$8;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$38(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$39(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/List;)V

    .line 613
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$8;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$38(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 614
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$8;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$36(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 615
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$8;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$20(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto :goto_0

    .line 617
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$8;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$20(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 601
    return-void
.end method
