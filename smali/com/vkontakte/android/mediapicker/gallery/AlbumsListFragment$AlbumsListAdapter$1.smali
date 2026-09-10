.class Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$1;
.super Ljava/util/ArrayList;
.source "AlbumsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;-><init>(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

.field final synthetic val$this$0:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$1;->this$1:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$1;->val$this$0:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public indexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 297
    instance-of v2, p1, Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 298
    invoke-super {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 308
    :goto_0
    return v2

    :cond_0
    move-object v0, p1

    .line 300
    check-cast v0, Ljava/lang/Integer;

    .line 302
    .local v0, "bucketId":Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$1;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 304
    .local v1, "e":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 305
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->getBucketId()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 306
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v2

    goto :goto_0

    .line 308
    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method
