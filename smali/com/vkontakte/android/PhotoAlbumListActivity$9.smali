.class Lcom/vkontakte/android/PhotoAlbumListActivity$9;
.super Ljava/lang/Object;
.source "PhotoAlbumListActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/PhotosDeleteAlbum$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoAlbumListActivity;->deleteAlbum(Lcom/vkontakte/android/api/PhotoAlbum;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoAlbumListActivity;

.field private final synthetic val$album:Lcom/vkontakte/android/api/PhotoAlbum;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoAlbumListActivity;Lcom/vkontakte/android/api/PhotoAlbum;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$9;->this$0:Lcom/vkontakte/android/PhotoAlbumListActivity;

    iput-object p2, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$9;->val$album:Lcom/vkontakte/android/api/PhotoAlbum;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$9;->this$0:Lcom/vkontakte/android/PhotoAlbumListActivity;

    const v1, 0x7f090053

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 205
    return-void
.end method

.method public success()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$9;->this$0:Lcom/vkontakte/android/PhotoAlbumListActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumListActivity;->access$4(Lcom/vkontakte/android/PhotoAlbumListActivity;)Lcom/vkontakte/android/PhotoAlbumsView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$9;->val$album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PhotoAlbumsView;->remove(I)V

    .line 200
    return-void
.end method
