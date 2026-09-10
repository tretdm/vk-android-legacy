.class Lcom/vkontakte/android/LinkRedirActivity$1;
.super Ljava/lang/Object;
.source "LinkRedirActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/LinkRedirActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/LinkRedirActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/LinkRedirActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/LinkRedirActivity$1;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$1;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 230
    return-void
.end method

.method public success(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
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
    .line 216
    .local p1, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/PhotoAlbum;>;"
    .local p2, "system":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/PhotoAlbum;>;"
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 217
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 224
    iget-object v2, p0, Lcom/vkontakte/android/LinkRedirActivity$1;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 225
    return-void

    .line 217
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    .line 218
    .local v0, "a":Lcom/vkontakte/android/api/PhotoAlbum;
    iget v3, v0, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    const/16 v4, -0x2328

    if-ne v3, v4, :cond_0

    .line 219
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 220
    .local v1, "args":Landroid/os/Bundle;
    const-string v3, "album"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 221
    const-string v3, "PhotoListFragment"

    iget-object v4, p0, Lcom/vkontakte/android/LinkRedirActivity$1;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-static {v3, v1, v4}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0
.end method
