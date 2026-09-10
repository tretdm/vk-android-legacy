.class Lcom/vkontakte/android/PhotoAlbumListActivity$5;
.super Ljava/lang/Object;
.source "PhotoAlbumListActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoAlbumListActivity;->createAlbum(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoAlbumListActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoAlbumListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$5;->this$0:Lcom/vkontakte/android/PhotoAlbumListActivity;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$5;->this$0:Lcom/vkontakte/android/PhotoAlbumListActivity;

    const v1, 0x7f090052

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 143
    return-void
.end method

.method public success(Lcom/vkontakte/android/api/PhotoAlbum;)V
    .locals 1
    .param p1, "album"    # Lcom/vkontakte/android/api/PhotoAlbum;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$5;->this$0:Lcom/vkontakte/android/PhotoAlbumListActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumListActivity;->access$4(Lcom/vkontakte/android/PhotoAlbumListActivity;)Lcom/vkontakte/android/PhotoAlbumsView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/PhotoAlbumsView;->addOrReplace(Lcom/vkontakte/android/api/PhotoAlbum;)V

    .line 138
    return-void
.end method
