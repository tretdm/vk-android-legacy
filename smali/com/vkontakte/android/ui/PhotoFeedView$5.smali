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
    .line 270
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$502(Lcom/vkontakte/android/ui/PhotoFeedView;Z)Z

    .line 289
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
    const/4 v0, 0x0

    .line 273
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1, v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$502(Lcom/vkontakte/android/ui/PhotoFeedView;Z)Z

    .line 274
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1, p1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$302(Lcom/vkontakte/android/ui/PhotoFeedView;I)I

    .line 275
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$1400(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 276
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$1512(Lcom/vkontakte/android/ui/PhotoFeedView;I)I

    .line 277
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$100(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 278
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$800(Lcom/vkontakte/android/ui/PhotoFeedView;I)V

    .line 279
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$100(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$602(Lcom/vkontakte/android/ui/PhotoFeedView;Z)Z

    .line 284
    return-void
.end method
