.class Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "PhotoAlbumsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;
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
    .line 72
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 75
    const-string v3, "com.vkontakte.android.PHOTO_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    const-string v3, "aid"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 77
    .local v0, "aid":I
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$000(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/PhotoAlbum;

    .line 78
    .local v1, "album":Lcom/vkontakte/android/api/PhotoAlbum;
    iget v3, v1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-ne v0, v3, :cond_0

    .line 79
    iget v3, v1, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    .line 80
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->updateList()V

    goto :goto_0

    .line 84
    .end local v0    # "aid":I
    .end local v1    # "album":Lcom/vkontakte/android/api/PhotoAlbum;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v3, "com.vkontakte.android.PHOTO_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 85
    const-string v3, "aid"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 86
    .restart local v0    # "aid":I
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->access$000(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/PhotoAlbum;

    .line 87
    .restart local v1    # "album":Lcom/vkontakte/android/api/PhotoAlbum;
    iget v3, v1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-ne v0, v3, :cond_2

    .line 88
    iget v3, v1, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    .line 89
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->updateList()V

    goto :goto_1

    .line 93
    .end local v0    # "aid":I
    .end local v1    # "album":Lcom/vkontakte/android/api/PhotoAlbum;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    const-string v3, "com.vkontakte.android.UPDATE_ALBUM_COVER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 94
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    const-string v4, "aid"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "new_cover_url"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->setCover(ILjava/lang/String;)V

    .line 96
    :cond_4
    return-void
.end method
