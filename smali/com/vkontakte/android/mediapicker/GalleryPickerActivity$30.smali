.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$30;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showOptions()V
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
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$30;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .line 1563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1568
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getCompleteOptionsSize()I

    move-result v0

    if-lt p2, v0, :cond_1

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getNeedSquare()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$30;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$30;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsCropped()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1569
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$30;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0, p2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$32(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;I)V

    .line 1572
    :goto_0
    return-void

    .line 1571
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$30;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$11(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ZI[I)V

    goto :goto_0
.end method
