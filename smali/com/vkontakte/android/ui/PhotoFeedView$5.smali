.class Lcom/vkontakte/android/ui/PhotoFeedView$5;
.super Ljava/lang/Object;
.source "PhotoFeedView.java"

# interfaces
.implements Lcom/vkontakte/android/api/PhotosGetAll$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/PhotoFeedView;->preloadMorePhotos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/PhotoFeedView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PhotoFeedView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$13(Lcom/vkontakte/android/ui/PhotoFeedView;Z)V

    .line 290
    return-void
.end method

.method public success(ILjava/util/Vector;)V
    .locals 4
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
    const/4 v0, 0x0

    .line 274
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1, v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$13(Lcom/vkontakte/android/ui/PhotoFeedView;Z)V

    .line 275
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1, p1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$14(Lcom/vkontakte/android/ui/PhotoFeedView;I)V

    .line 276
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$15(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 277
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$16(Lcom/vkontakte/android/ui/PhotoFeedView;)I

    move-result v2

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$17(Lcom/vkontakte/android/ui/PhotoFeedView;I)V

    .line 278
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$3(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 279
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$9(Lcom/vkontakte/android/ui/PhotoFeedView;I)V

    .line 280
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$3(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$18(Lcom/vkontakte/android/ui/PhotoFeedView;Z)V

    .line 285
    return-void
.end method
