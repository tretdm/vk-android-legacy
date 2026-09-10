.class Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/FaveGetPhotos$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoViewerFragment;->loadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 756
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$16(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Z)V

    .line 758
    return-void
.end method

.method public success(ILjava/util/Vector;)V
    .locals 3
    .param p1, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    const/4 v1, 0x0

    .line 749
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$0(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 750
    .local v0, "needAnim":Z
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$0(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 751
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v2, v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$16(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Z)V

    .line 752
    return-void

    .end local v0    # "needAnim":Z
    :cond_0
    move v0, v1

    .line 749
    goto :goto_0
.end method
