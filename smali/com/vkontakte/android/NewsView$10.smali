.class Lcom/vkontakte/android/NewsView$10;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$10;->this$0:Lcom/vkontakte/android/NewsView;

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 673
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$10;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 674
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$10;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v1, v0, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    iget-object v0, p0, Lcom/vkontakte/android/NewsView$10;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView;->access$1(Lcom/vkontakte/android/NewsView;)I

    move-result v2

    iget-object v0, p0, Lcom/vkontakte/android/NewsView$10;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView;->access$2(Lcom/vkontakte/android/NewsView;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V

    .line 675
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$10;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 676
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$10;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView;->access$5(Lcom/vkontakte/android/NewsView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewsView$10;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView;->access$10(Lcom/vkontakte/android/NewsView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewsView$10;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView;->access$10(Lcom/vkontakte/android/NewsView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewsView$10;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    const v1, 0x7f0900c0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$10;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v1, v0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vkontakte/android/NewsView$10;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 678
    return-void

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$10;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView;->access$2(Lcom/vkontakte/android/NewsView;)I

    move-result v0

    goto :goto_0

    .line 677
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
