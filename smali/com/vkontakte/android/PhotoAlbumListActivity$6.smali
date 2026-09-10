.class Lcom/vkontakte/android/PhotoAlbumListActivity$6;
.super Ljava/lang/Object;
.source "PhotoAlbumListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoAlbumListActivity;->editAlbum(Lcom/vkontakte/android/api/PhotoAlbum;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoAlbumListActivity;

.field private final synthetic val$album:Lcom/vkontakte/android/api/PhotoAlbum;

.field private final synthetic val$result:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoAlbumListActivity;Lcom/vkontakte/android/api/PhotoAlbum;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$6;->this$0:Lcom/vkontakte/android/PhotoAlbumListActivity;

    iput-object p2, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$6;->val$album:Lcom/vkontakte/android/api/PhotoAlbum;

    iput-object p3, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$6;->val$result:Landroid/os/Bundle;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$6;->this$0:Lcom/vkontakte/android/PhotoAlbumListActivity;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$6;->val$album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$6;->val$result:Landroid/os/Bundle;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$6;->val$result:Landroid/os/Bundle;

    const-string v4, "descr"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$6;->val$result:Landroid/os/Bundle;

    const-string v5, "privacy"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/PhotoAlbumListActivity;->access$5(Lcom/vkontakte/android/PhotoAlbumListActivity;Lcom/vkontakte/android/api/PhotoAlbum;Ljava/lang/String;Ljava/lang/String;I)V

    .line 155
    return-void
.end method
