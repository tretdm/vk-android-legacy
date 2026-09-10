.class Lcom/vkontakte/android/PhotoViewerFragment$11;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerFragment$11;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 326
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment$11;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v0, v1

    .line 327
    .local v0, "scrollTop":I
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment$11;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment$11;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->smoothScrollToPositionFromTop(II)V

    .line 331
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment$11;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment$11;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->smoothScrollToPositionFromTop(II)V

    goto :goto_0
.end method
