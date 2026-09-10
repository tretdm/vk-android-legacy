.class Lcom/vkontakte/android/fragments/ChatFragment$11;
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
    .line 819
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

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

    const v5, 0x7f0800de

    const v4, 0x7f0800dd

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 827
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$700(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 829
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$700(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4200(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4300(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 830
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4200(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 831
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4202(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z

    .line 832
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4402(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z

    .line 841
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4100(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 842
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4100(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 846
    :cond_1
    add-int v0, p2, p3

    add-int/lit8 v1, p4, -0x1

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4600(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 848
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4600(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4700(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4800(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2600(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 849
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4700(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 850
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4702(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z

    .line 851
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4902(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z

    .line 869
    :cond_4
    :goto_1
    return-void

    .line 833
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2500(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 834
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2500(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4500(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/List;)V

    .line 835
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2500(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 836
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4202(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z

    .line 837
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3000(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    goto/16 :goto_0

    .line 839
    :cond_6
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3000(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    goto/16 :goto_0

    .line 852
    :cond_7
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2600(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 853
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2600(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5000(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/List;)V

    .line 854
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2600(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 855
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4702(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z

    .line 856
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3000(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 857
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5100(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 858
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5100(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 859
    :cond_8
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4800(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 860
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3000(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 861
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5100(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 862
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5100(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 864
    :cond_9
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5100(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 865
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$11;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5100(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

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
    .line 823
    return-void
.end method
