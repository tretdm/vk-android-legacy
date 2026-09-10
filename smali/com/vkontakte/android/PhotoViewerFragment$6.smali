.class Lcom/vkontakte/android/PhotoViewerFragment$6;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerFragment$6;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$6;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p3, v0

    .line 277
    if-gez p3, :cond_0

    const/4 v0, 0x0

    .line 279
    :goto_0
    return v0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$6;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v0, p3}, Lcom/vkontakte/android/PhotoViewerFragment;->access$11(Lcom/vkontakte/android/PhotoViewerFragment;I)V

    .line 279
    const/4 v0, 0x1

    goto :goto_0
.end method
