.class Lcom/vkontakte/android/NewsView$23;
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
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$23;->this$0:Lcom/vkontakte/android/NewsView;

    .line 1272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$23;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1274
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$23;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 1275
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$23;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/EmptyView;->clearAnimation()V

    .line 1276
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$23;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView;->access$13(Lcom/vkontakte/android/NewsView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewsView$23;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView;->access$16(Lcom/vkontakte/android/NewsView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewsView$23;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView;->access$16(Lcom/vkontakte/android/NewsView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewsView$23;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v1, 0x7f0800bf

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 1277
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$23;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v1, v0, Lcom/vkontakte/android/NewsView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    iget-object v0, p0, Lcom/vkontakte/android/NewsView$23;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/EmptyView;->setVisibility(I)V

    .line 1278
    return-void

    .line 1277
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
