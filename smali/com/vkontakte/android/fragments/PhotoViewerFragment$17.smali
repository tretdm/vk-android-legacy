.class Lcom/vkontakte/android/fragments/PhotoViewerFragment$17;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/PhotosGetUserPhotos$Callback;


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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$17;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 738
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$17;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$16(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Z)V

    .line 740
    return-void
.end method

.method public success(ILjava/util/Vector;)V
    .locals 2
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
    .line 732
    .local p2, "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$17;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$0(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 733
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$17;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$16(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Z)V

    .line 734
    return-void
.end method
