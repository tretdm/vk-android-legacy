.class public Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlbumsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/imagepicker/AlbumsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlbumsListAdapter"
.end annotation


# instance fields
.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/AlbumsListFragment;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/imagepicker/AlbumsListFragment;)V
    .locals 1

    .prologue
    .line 234
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;->this$0:Lcom/vkontakte/android/imagepicker/AlbumsListFragment;

    .line 233
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 235
    new-instance v0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter$1;-><init>(Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;->entries:Ljava/util/List;

    .line 253
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;->entries:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 272
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 278
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 284
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Lcom/vkontakte/android/imagepicker/ui/holders/AlbumViewHolder;

    invoke-direct {v0}, Lcom/vkontakte/android/imagepicker/ui/holders/AlbumViewHolder;-><init>()V

    .line 286
    .local v0, "holder":Lcom/vkontakte/android/imagepicker/ui/holders/AlbumViewHolder;
    :goto_0
    sget-object v2, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;->entries:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;

    invoke-virtual {v0, v2, p2, p1, v1}, Lcom/vkontakte/android/imagepicker/ui/holders/AlbumViewHolder;->getView(Landroid/content/Context;Landroid/view/View;ILjava/lang/Object;)Landroid/view/View;

    move-result-object p2

    .line 288
    return-object p2

    .line 284
    .end local v0    # "holder":Lcom/vkontakte/android/imagepicker/ui/holders/AlbumViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/imagepicker/ui/holders/AlbumViewHolder;

    move-object v0, v1

    goto :goto_0
.end method

.method public setEntries(Ljava/util/List;)V
    .locals 1
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
    .line 257
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;>;"
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 258
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 260
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;->notifyDataSetChanged()V

    .line 261
    return-void
.end method
