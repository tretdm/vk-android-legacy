.class Lcom/vkontakte/android/PhotoViewerFragment$13;
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
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerFragment$13;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$13;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoViewerFragment;->getScrollTop()I

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment$13;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    if-le v0, v1, :cond_0

    .line 389
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$13;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerFragment;->access$7(Lcom/vkontakte/android/PhotoViewerFragment;)V

    goto :goto_0
.end method
