.class Lcom/vkontakte/android/imagepicker/AlbumsListFragment$2;
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
        "Ljava/util/List",
        "<",
        "Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/AlbumsListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/AlbumsListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$2;->this$0:Lcom/vkontakte/android/imagepicker/AlbumsListFragment;

    .line 158
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$2;->run(Ljava/util/List;)V

    return-void
.end method

.method public run(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;>;"
    const/4 v1, 0x0

    .line 163
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$2;->this$0:Lcom/vkontakte/android/imagepicker/AlbumsListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->access$2(Lcom/vkontakte/android/imagepicker/AlbumsListFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$2;->this$0:Lcom/vkontakte/android/imagepicker/AlbumsListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->access$3(Lcom/vkontakte/android/imagepicker/AlbumsListFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$2;->this$0:Lcom/vkontakte/android/imagepicker/AlbumsListFragment;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->access$4(Lcom/vkontakte/android/imagepicker/AlbumsListFragment;Z)V

    .line 170
    if-nez p1, :cond_1

    .line 171
    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->showRetryButton(Z)V

    .line 177
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 168
    goto :goto_0

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$2;->this$0:Lcom/vkontakte/android/imagepicker/AlbumsListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->access$0(Lcom/vkontakte/android/imagepicker/AlbumsListFragment;)Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;->setEntries(Ljava/util/List;)V

    goto :goto_1
.end method
