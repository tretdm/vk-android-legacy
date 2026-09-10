.class Lcom/vkontakte/android/AlbumAttachment$1;
.super Ljava/lang/Object;
.source "AlbumAttachment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AlbumAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AlbumAttachment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AlbumAttachment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AlbumAttachment$1;->this$0:Lcom/vkontakte/android/AlbumAttachment;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    new-instance v0, Lcom/vkontakte/android/api/PhotoAlbum;

    invoke-direct {v0}, Lcom/vkontakte/android/api/PhotoAlbum;-><init>()V

    .line 42
    .local v0, "album":Lcom/vkontakte/android/api/PhotoAlbum;
    iget-object v2, p0, Lcom/vkontakte/android/AlbumAttachment$1;->this$0:Lcom/vkontakte/android/AlbumAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/AlbumAttachment;->descr:Ljava/lang/String;

    iput-object v2, v0, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    .line 43
    iget-object v2, p0, Lcom/vkontakte/android/AlbumAttachment$1;->this$0:Lcom/vkontakte/android/AlbumAttachment;

    iget v2, v2, Lcom/vkontakte/android/AlbumAttachment;->oid:I

    iput v2, v0, Lcom/vkontakte/android/api/PhotoAlbum;->oid:I

    .line 44
    iget-object v2, p0, Lcom/vkontakte/android/AlbumAttachment$1;->this$0:Lcom/vkontakte/android/AlbumAttachment;

    iget v2, v2, Lcom/vkontakte/android/AlbumAttachment;->aid:I

    iput v2, v0, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    .line 45
    iget-object v2, p0, Lcom/vkontakte/android/AlbumAttachment$1;->this$0:Lcom/vkontakte/android/AlbumAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/AlbumAttachment;->images:Ljava/util/HashMap;

    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    iput-object v2, v0, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    .line 46
    iget-object v2, p0, Lcom/vkontakte/android/AlbumAttachment$1;->this$0:Lcom/vkontakte/android/AlbumAttachment;

    iget v2, v2, Lcom/vkontakte/android/AlbumAttachment;->size:I

    iput v2, v0, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    .line 47
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 48
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "album"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 49
    const-string v3, "PhotoListFragment"

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v3, v1, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 50
    return-void
.end method
