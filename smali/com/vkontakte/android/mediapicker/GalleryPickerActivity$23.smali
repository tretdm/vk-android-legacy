.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$23;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showCaptionBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$23;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .line 1068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$23;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$23;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsTexted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$23;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    const/4 v1, 0x0

    const-string v2, ""

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$23;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-static {v0, v1, v2, v3}, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils;->applyTextToImage(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ZLjava/lang/String;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    .line 1075
    :cond_0
    return-void
.end method
