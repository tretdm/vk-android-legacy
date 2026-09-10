.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$11;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->updateThumbnail(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

.field private final synthetic val$albumIndex:I

.field private final synthetic val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;ILcom/vkontakte/android/imagepicker/entries/ImageEntry;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$11;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iput p2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$11;->val$index:I

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$11;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    iput p4, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$11;->val$albumIndex:I

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 568
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$11;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$11;->val$index:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$3(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;I)Landroid/view/View;

    move-result-object v1

    .line 570
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 572
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;

    .line 574
    .local v0, "holder":Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;
    if-eqz v0, :cond_0

    .line 575
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$11;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->updateImage(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    .line 578
    .end local v0    # "holder":Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;
    :cond_0
    iget v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$11;->val$index:I

    if-nez v2, :cond_1

    .line 580
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$11;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$11;->val$albumIndex:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$15(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;I)Landroid/view/View;

    move-result-object v1

    .line 582
    if-nez v1, :cond_2

    .line 590
    :cond_1
    :goto_0
    return-void

    .line 585
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/imagepicker/ui/holders/AlbumViewHolder;

    .line 587
    .local v0, "holder":Lcom/vkontakte/android/imagepicker/ui/holders/AlbumViewHolder;
    if-eqz v0, :cond_1

    .line 588
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$11;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/imagepicker/ui/holders/AlbumViewHolder;->updateImage(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    goto :goto_0
.end method
