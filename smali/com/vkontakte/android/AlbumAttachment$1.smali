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

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 42
    new-instance v6, Lcom/vkontakte/android/api/PhotoAlbum;

    invoke-direct {v6}, Lcom/vkontakte/android/api/PhotoAlbum;-><init>()V

    .line 43
    .local v6, "album":Lcom/vkontakte/android/api/PhotoAlbum;
    iget-object v0, p0, Lcom/vkontakte/android/AlbumAttachment$1;->this$0:Lcom/vkontakte/android/AlbumAttachment;

    iget-object v0, v0, Lcom/vkontakte/android/AlbumAttachment;->descr:Ljava/lang/String;

    iput-object v0, v6, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/AlbumAttachment$1;->this$0:Lcom/vkontakte/android/AlbumAttachment;

    iget v0, v0, Lcom/vkontakte/android/AlbumAttachment;->oid:I

    iput v0, v6, Lcom/vkontakte/android/api/PhotoAlbum;->oid:I

    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/AlbumAttachment$1;->this$0:Lcom/vkontakte/android/AlbumAttachment;

    iget v0, v0, Lcom/vkontakte/android/AlbumAttachment;->aid:I

    iput v0, v6, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/AlbumAttachment$1;->this$0:Lcom/vkontakte/android/AlbumAttachment;

    iget-object v0, v0, Lcom/vkontakte/android/AlbumAttachment;->images:Ljava/util/HashMap;

    const-string v2, "m"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    iput-object v0, v6, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/AlbumAttachment$1;->this$0:Lcom/vkontakte/android/AlbumAttachment;

    iget v0, v0, Lcom/vkontakte/android/AlbumAttachment;->size:I

    iput v0, v6, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    .line 48
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v1, "args":Landroid/os/Bundle;
    const-string v0, "album"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 50
    const-string v0, "PhotoListFragment"

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v3, v5, :cond_0

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "zte"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ZII)V

    .line 51
    return-void

    .line 50
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
