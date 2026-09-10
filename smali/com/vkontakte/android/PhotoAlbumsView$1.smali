.class Lcom/vkontakte/android/PhotoAlbumsView$1;
.super Landroid/content/BroadcastReceiver;
.source "PhotoAlbumsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PhotoAlbumsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoAlbumsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoAlbumsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumsView$1;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    .line 62
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 65
    const-string v2, "com.vkontakte.android.PHOTO_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    const-string v2, "aid"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 67
    .local v0, "aid":I
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView$1;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoAlbumsView;->access$0(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 74
    .end local v0    # "aid":I
    :cond_1
    const-string v2, "com.vkontakte.android.PHOTO_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 75
    const-string v2, "aid"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 76
    .restart local v0    # "aid":I
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView$1;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoAlbumsView;->access$0(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6

    .line 83
    .end local v0    # "aid":I
    :cond_3
    const-string v2, "com.vkontakte.android.UPDATE_ALBUM_COVER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 84
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView$1;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    const-string v3, "aid"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "new_cover_url"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/vkontakte/android/PhotoAlbumsView;->setCover(ILjava/lang/String;)V

    .line 86
    :cond_4
    return-void

    .line 67
    .restart local v0    # "aid":I
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/PhotoAlbum;

    .line 68
    .local v1, "album":Lcom/vkontakte/android/api/PhotoAlbum;
    iget v3, v1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-ne v0, v3, :cond_0

    .line 69
    iget v3, v1, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    .line 70
    iget-object v3, p0, Lcom/vkontakte/android/PhotoAlbumsView$1;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoAlbumsView;->access$1(Lcom/vkontakte/android/PhotoAlbumsView;)V

    goto :goto_0

    .line 76
    .end local v1    # "album":Lcom/vkontakte/android/api/PhotoAlbum;
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/PhotoAlbum;

    .line 77
    .restart local v1    # "album":Lcom/vkontakte/android/api/PhotoAlbum;
    iget v3, v1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-ne v0, v3, :cond_2

    .line 78
    iget v3, v1, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    .line 79
    iget-object v3, p0, Lcom/vkontakte/android/PhotoAlbumsView$1;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoAlbumsView;->access$1(Lcom/vkontakte/android/PhotoAlbumsView;)V

    goto :goto_1
.end method
