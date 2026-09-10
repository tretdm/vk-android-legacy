.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$31;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->forceOpen(Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

.field private final synthetic val$album:Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

.field private final synthetic val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$31;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$31;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$31;->val$album:Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

    .line 1754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1759
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$31;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$4(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;I)Landroid/view/View;

    move-result-object v3

    .line 1761
    .local v3, "view":Landroid/view/View;
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$31;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$31;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iput-object v2, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .line 1762
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$31;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iput v1, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImageIndex:I

    .line 1764
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$31;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$31;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$31;->val$album:Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

    invoke-virtual {v4}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->getImages()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    move v5, v1

    invoke-static/range {v0 .. v6}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$31(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/view/View;Ljava/util/List;ZZ)V

    .line 1766
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getAreFiltersSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1767
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$31;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->showFilters()V

    .line 1768
    :cond_0
    return-void
.end method
