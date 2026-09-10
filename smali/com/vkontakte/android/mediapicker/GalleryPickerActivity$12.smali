.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$12;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateThumbnail(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

.field private final synthetic val$albumIndex:I

.field private final synthetic val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ILcom/vkontakte/android/mediapicker/entries/ImageEntry;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$12;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iput p2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$12;->val$index:I

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$12;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iput p4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$12;->val$albumIndex:I

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 666
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$12;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iget v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$12;->val$index:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$4(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;I)Landroid/view/View;

    move-result-object v1

    .line 668
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 670
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;

    .line 672
    .local v0, "holder":Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;
    if-eqz v0, :cond_0

    .line 673
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$12;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->updateImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    .line 676
    .end local v0    # "holder":Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;
    :cond_0
    iget v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$12;->val$index:I

    if-nez v2, :cond_1

    .line 678
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$12;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iget v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$12;->val$albumIndex:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$20(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;I)Landroid/view/View;

    move-result-object v1

    .line 680
    if-nez v1, :cond_2

    .line 688
    :cond_1
    :goto_0
    return-void

    .line 683
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;

    .line 685
    .local v0, "holder":Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;
    if-eqz v0, :cond_1

    .line 686
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$12;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->updateImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    goto :goto_0
.end method
