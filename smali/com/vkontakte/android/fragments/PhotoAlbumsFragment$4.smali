.class Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$4;
.super Ljava/lang/Object;
.source "PhotoAlbumsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->doLoadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$4;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$4;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$602(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 224
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$4;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->onError(ILjava/lang/String;)V

    .line 225
    return-void
.end method

.method public success(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/PhotoAlbum;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/PhotoAlbum;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "_albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/PhotoAlbum;>;"
    .local p2, "_system":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/PhotoAlbum;>;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$4;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$000(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 213
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$4;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$500(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 214
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$4;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->loaded:Z

    .line 215
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$4;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->dataLoading:Z

    .line 216
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$4;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->showList()V

    .line 217
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$4;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->updateList()V

    .line 218
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$4;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$602(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 219
    return-void
.end method
