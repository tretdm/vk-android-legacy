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

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$12(Lcom/vkontakte/android/ui/PhotoFeedView;Z)V

    .line 288
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
    .line 273
    .local p2, "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$12(Lcom/vkontakte/android/ui/PhotoFeedView;Z)V

    .line 274
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v0, p1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$13(Lcom/vkontakte/android/ui/PhotoFeedView;I)V

    .line 275
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$14(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 276
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$15(Lcom/vkontakte/android/ui/PhotoFeedView;)I

    move-result v1

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$16(Lcom/vkontakte/android/ui/PhotoFeedView;I)V

    .line 277
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$3(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 278
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$8(Lcom/vkontakte/android/ui/PhotoFeedView;I)V

    .line 283
    return-void
.end method
