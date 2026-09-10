.class Lcom/vkontakte/android/PhotoAlbumListActivity$8;
.super Ljava/lang/Object;
.source "PhotoAlbumListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoAlbumListActivity;->confirmDeleteAlbum(Lcom/vkontakte/android/api/PhotoAlbum;)V
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
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$8;->this$0:Lcom/vkontakte/android/PhotoAlbumListActivity;

    iput-object p2, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$8;->val$album:Lcom/vkontakte/android/api/PhotoAlbum;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$8;->this$0:Lcom/vkontakte/android/PhotoAlbumListActivity;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumListActivity$8;->val$album:Lcom/vkontakte/android/api/PhotoAlbum;

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoAlbumListActivity;->access$6(Lcom/vkontakte/android/PhotoAlbumListActivity;Lcom/vkontakte/android/api/PhotoAlbum;)V

    .line 188
    return-void
.end method
