.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$28;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->forceOpen(Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

.field private final synthetic val$album:Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;

.field private final synthetic val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$28;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$28;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$28;->val$album:Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;

    .line 1417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1422
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$28;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {v0, v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$3(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;I)Landroid/view/View;

    move-result-object v3

    .line 1424
    .local v3, "view":Landroid/view/View;
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$28;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$28;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    iput-object v2, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .line 1425
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$28;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iput v1, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImageIndex:I

    .line 1427
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$28;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$28;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$28;->val$album:Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;

    invoke-virtual {v4}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->getImages()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    move v5, v1

    invoke-static/range {v0 .. v6}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$26(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;ILcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/view/View;Ljava/util/List;ZZ)V

    .line 1429
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$28;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->showFilters()V

    .line 1430
    return-void
.end method
