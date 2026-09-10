.class Lcom/vkontakte/android/PhotoAlbumListActivity$4;
.super Ljava/lang/Object;
.source "PhotoAlbumListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoAlbumListActivity;->showCreateAlbumDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoAlbumListActivity;

.field private final synthetic val$result:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoAlbumListActivity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$4;->this$0:Lcom/vkontakte/android/PhotoAlbumListActivity;

    iput-object p2, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$4;->val$result:Landroid/os/Bundle;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$4;->this$0:Lcom/vkontakte/android/PhotoAlbumListActivity;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$4;->val$result:Landroid/os/Bundle;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$4;->val$result:Landroid/os/Bundle;

    const-string v3, "descr"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$4;->val$result:Landroid/os/Bundle;

    const-string v4, "privacy"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/vkontakte/android/PhotoAlbumListActivity;->access$3(Lcom/vkontakte/android/PhotoAlbumListActivity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 128
    return-void
.end method
