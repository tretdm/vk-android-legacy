.class public Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlbumsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;
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
            "Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;",
            ">;"
        }
    .end annotation
.end field

.field private needAnimation:Z

.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)V
    .locals 1

    .prologue
    .line 292
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->this$0:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    .line 291
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 293
    new-instance v0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$1;-><init>(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->entries:Ljava/util/List;

    .line 311
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->entries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;)Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->this$0:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    return-object v0
.end method

.method private animateListView()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->needAnimation:Z

    .line 331
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->this$0:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->access$2(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->this$0:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->access$3(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->this$0:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->access$2(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$2;-><init>(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;)V

    .line 362
    const-wide/16 v2, 0xa

    .line 334
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 385
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 397
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 403
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;

    invoke-direct {v0}, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;-><init>()V

    .line 405
    .local v0, "holder":Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;
    :goto_0
    sget-object v2, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->entries:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

    invoke-virtual {v0, v2, p2, p1, v1}, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->getView(Landroid/content/Context;Landroid/view/View;ILjava/lang/Object;)Landroid/view/View;

    move-result-object p2

    .line 407
    return-object p2

    .line 403
    .end local v0    # "holder":Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;

    move-object v0, v1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 391
    const/4 v0, 0x1

    return v0
.end method

.method public prepareListViewAnimation()V
    .locals 3

    .prologue
    const v2, 0x3f666666    # 0.9f

    .line 367
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->this$0:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->access$3(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->needAnimation:Z

    .line 371
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->this$0:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->access$3(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAlpha(F)V

    .line 372
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->this$0:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->access$3(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setScaleX(F)V

    .line 373
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->this$0:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->access$3(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setScaleY(F)V

    goto :goto_0
.end method

.method public setEntries(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;>;"
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 316
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 318
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->notifyDataSetChanged()V

    .line 320
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->needAnimation:Z

    if-eqz v0, :cond_0

    .line 322
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->animateListView()V

    .line 324
    :cond_0
    return-void
.end method
