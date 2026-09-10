.class Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment$ImagesListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImagesGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImagesListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment$ImagesListAdapter;->this$0:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment$ImagesListAdapter;)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment$ImagesListAdapter;-><init>(Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment$ImagesListAdapter;->this$0:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->access$0(Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 225
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 231
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;

    invoke-direct {v0}, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;-><init>()V

    .line 233
    .local v0, "holder":Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;
    :goto_0
    sget-object v2, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment$ImagesListAdapter;->this$0:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->access$0(Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0, v2, p2, p1, v1}, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->getView(Landroid/content/Context;Landroid/view/View;ILjava/lang/Object;)Landroid/view/View;

    move-result-object p2

    .line 235
    return-object p2

    .line 231
    .end local v0    # "holder":Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;

    move-object v0, v1

    goto :goto_0
.end method
