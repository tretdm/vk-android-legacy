.class Lcom/vkontakte/android/fragments/VideoListFragment$9;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/VideoGetAlbums$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/VideoListFragment;->updateNavItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/VideoListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/VideoListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$9;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 317
    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/api/VideoAlbum;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "albums":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/api/VideoAlbum;>;"
    iget-object v1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$9;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$6(Lcom/vkontakte/android/fragments/VideoListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 308
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 311
    return-void

    .line 308
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/VideoAlbum;

    .line 309
    .local v0, "a":Lcom/vkontakte/android/api/VideoAlbum;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/VideoListFragment$9;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$13(Lcom/vkontakte/android/fragments/VideoListFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    iget-object v3, v0, Lcom/vkontakte/android/api/VideoAlbum;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method
