.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$21;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->showCaptionBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$21;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    .line 927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 932
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$21;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsStyled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$21;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsTexted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$21;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    const/4 v1, 0x0

    const-string v2, ""

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$21;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v3, v3, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-static {v0, v1, v2, v3}, Lcom/vkontakte/android/imagepicker/InlineUtils;->applyTextToImage(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;ZLjava/lang/String;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    .line 934
    :cond_0
    return-void
.end method
