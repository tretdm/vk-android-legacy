.class Lcom/vkontakte/android/fragments/ChatFragment$10;
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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 7
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v6, 0x4

    const v5, 0x7f0900f9

    const v4, 0x7f0900f8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 804
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$7(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 806
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$7(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$46(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$47(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 807
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$46(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 808
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$48(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 809
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$49(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 818
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$45(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 819
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$45(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 823
    :cond_1
    add-int v0, p2, p3

    add-int/lit8 v1, p4, -0x1

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$51(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 825
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$51(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$52(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$53(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$27(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 826
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$52(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 827
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$54(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 828
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$55(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 846
    :cond_4
    :goto_1
    return-void

    .line 810
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$26(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 811
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$26(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$50(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/List;)V

    .line 812
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$26(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 813
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$48(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 814
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$31(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    goto/16 :goto_0

    .line 816
    :cond_6
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$31(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    goto/16 :goto_0

    .line 829
    :cond_7
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$27(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 830
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$27(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$56(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/List;)V

    .line 831
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$27(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 832
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$54(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 833
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$31(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 834
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$57(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 835
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$57(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 836
    :cond_8
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$53(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 837
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$31(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 838
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$57(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 839
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$57(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 841
    :cond_9
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$57(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 842
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$10;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$57(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 800
    return-void
.end method
