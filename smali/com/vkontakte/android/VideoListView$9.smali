.class Lcom/vkontakte/android/VideoListView$9;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/VideoListView;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/VideoListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/VideoListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView$9;->this$0:Lcom/vkontakte/android/VideoListView;

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 376
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$9;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$21(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/VideoListView$VideoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/VideoListView$VideoAdapter;->notifyDataSetChanged()V

    .line 377
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$9;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$1(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 378
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$9;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$22(Lcom/vkontakte/android/VideoListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$9;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$3(Lcom/vkontakte/android/VideoListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$9;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$2(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelection(I)V

    .line 381
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$9;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0, v1}, Lcom/vkontakte/android/VideoListView;->access$23(Lcom/vkontakte/android/VideoListView;Z)V

    .line 382
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$9;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$24(Lcom/vkontakte/android/VideoListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$9;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$11(Lcom/vkontakte/android/VideoListView;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$9;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$0(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$9;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$10(Lcom/vkontakte/android/VideoListView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$9;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$2(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    iget-object v3, p0, Lcom/vkontakte/android/VideoListView$9;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v3}, Lcom/vkontakte/android/VideoListView;->access$0(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/vkontakte/android/VideoListView$9;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v3}, Lcom/vkontakte/android/VideoListView;->access$10(Lcom/vkontakte/android/VideoListView;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    .line 386
    return-void

    .line 384
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    move v1, v2

    .line 385
    goto :goto_1
.end method
