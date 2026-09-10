.class Lcom/vkontakte/android/PhotoViewerFragment$4;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerFragment$4;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 5

    .prologue
    .line 260
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$4;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerFragment;->access$10(Lcom/vkontakte/android/PhotoViewerFragment;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment$4;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/PhotoViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment$4;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerFragment;->access$10(Lcom/vkontakte/android/PhotoViewerFragment;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment$4;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/PhotoViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDateRelativeNoDiff(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$4;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onRefresh()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$4;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoViewerFragment;->access$8(Lcom/vkontakte/android/PhotoViewerFragment;Z)V

    .line 256
    return-void
.end method

.method public onScrolled(F)V
    .locals 5
    .param p1, "offset"    # F

    .prologue
    .line 250
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$4;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerFragment;->access$9(Lcom/vkontakte/android/PhotoViewerFragment;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment$4;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment$4;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getFirstVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$4;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getLastVisiblePosition()I

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment$4;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment$4;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getCount()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 251
    return-void
.end method
