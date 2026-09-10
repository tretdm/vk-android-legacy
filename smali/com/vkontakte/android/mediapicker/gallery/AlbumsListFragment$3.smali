.class Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$3;
.super Lcom/vkontakte/android/mediapicker/entries/ActionCallback;
.source "AlbumsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/mediapicker/entries/ActionCallback",
        "<[",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$3;->this$0:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 230
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$3;->run([Ljava/lang/Integer;)V

    return-void
.end method

.method public run([Ljava/lang/Integer;)V
    .locals 4
    .param p1, "result"    # [Ljava/lang/Integer;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 234
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$3;->this$0:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->access$200(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)Lcom/vkontakte/android/mediapicker/entries/AlbumsListCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 236
    aget-object v0, p1, v1

    if-eqz v0, :cond_0

    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 237
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$3;->this$0:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->access$200(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)Lcom/vkontakte/android/mediapicker/entries/AlbumsListCallback;

    move-result-object v0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/AlbumsListCallback;->onCameraAlbumFound(I)V

    .line 239
    :cond_0
    aget-object v0, p1, v2

    if-eqz v0, :cond_1

    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 240
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$3;->this$0:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->access$200(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)Lcom/vkontakte/android/mediapicker/entries/AlbumsListCallback;

    move-result-object v0

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/AlbumsListCallback;->onVKCameraAlbumFound(I)V

    .line 242
    :cond_1
    return-void
.end method
