.class Lcom/vkontakte/android/ui/PhotoFeedView$3;
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
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$3;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 251
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
    .line 237
    .local p2, "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$3;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1, p1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$6(Lcom/vkontakte/android/ui/PhotoFeedView;I)V

    .line 238
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$3;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$7(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 239
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$3;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$8(Lcom/vkontakte/android/ui/PhotoFeedView;)I

    move-result v2

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$9(Lcom/vkontakte/android/ui/PhotoFeedView;I)V

    .line 240
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$3;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$10(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 241
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$3;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView$3;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$3(Lcom/vkontakte/android/ui/PhotoFeedView;I)V

    .line 242
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$3;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/vkontakte/android/WallActivity;

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$3;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/WallActivity;

    .line 244
    .local v0, "act":Lcom/vkontakte/android/WallActivity;
    invoke-virtual {v0, p2, p1}, Lcom/vkontakte/android/WallActivity;->addToAllPhotos(Ljava/util/List;I)V

    .line 246
    .end local v0    # "act":Lcom/vkontakte/android/WallActivity;
    :cond_0
    return-void
.end method
