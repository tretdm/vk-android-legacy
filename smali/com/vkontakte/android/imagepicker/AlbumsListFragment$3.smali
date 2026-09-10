.class Lcom/vkontakte/android/imagepicker/AlbumsListFragment$3;
.super Lcom/vkontakte/android/imagepicker/utils/ActionCallback;
.source "AlbumsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/imagepicker/utils/ActionCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/AlbumsListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/AlbumsListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$3;->this$0:Lcom/vkontakte/android/imagepicker/AlbumsListFragment;

    .line 178
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$3;->this$0:Lcom/vkontakte/android/imagepicker/AlbumsListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->access$1(Lcom/vkontakte/android/imagepicker/AlbumsListFragment;)Lcom/vkontakte/android/imagepicker/utils/AlbumsListCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$3;->this$0:Lcom/vkontakte/android/imagepicker/AlbumsListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->access$1(Lcom/vkontakte/android/imagepicker/AlbumsListFragment;)Lcom/vkontakte/android/imagepicker/utils/AlbumsListCallback;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/AlbumsListCallback;->onCameraAlbumFound(I)V

    .line 185
    :cond_0
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$3;->run(Ljava/lang/Integer;)V

    return-void
.end method
