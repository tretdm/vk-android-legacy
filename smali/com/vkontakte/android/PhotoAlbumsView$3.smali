.class Lcom/vkontakte/android/PhotoAlbumsView$3;
.super Ljava/lang/Object;
.source "PhotoAlbumsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoAlbumsView;->init()V
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
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumsView$3;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$3;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAlbumsView;->callback:Lcom/vkontakte/android/PhotoAlbumsView$AlbumActionsCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$3;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAlbumsView;->callback:Lcom/vkontakte/android/PhotoAlbumsView$AlbumActionsCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/vkontakte/android/PhotoAlbumsView$AlbumActionsCallback;->editAlbum(Lcom/vkontakte/android/api/PhotoAlbum;)V

    .line 195
    :cond_0
    return-void
.end method
