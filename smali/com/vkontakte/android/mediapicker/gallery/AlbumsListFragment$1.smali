.class Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$1;
.super Ljava/lang/Object;
.source "AlbumsListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$1;->this$0:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$1;->this$0:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->access$100(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->access$000(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

    .line 154
    .local v0, "album":Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$1;->this$0:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->access$200(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)Lcom/vkontakte/android/mediapicker/entries/AlbumsListCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$1;->this$0:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->access$200(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)Lcom/vkontakte/android/mediapicker/entries/AlbumsListCallback;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lcom/vkontakte/android/mediapicker/entries/AlbumsListCallback;->onAlbumChosen(ILcom/vkontakte/android/mediapicker/entries/AlbumEntry;)V

    .line 156
    :cond_0
    return-void
.end method
