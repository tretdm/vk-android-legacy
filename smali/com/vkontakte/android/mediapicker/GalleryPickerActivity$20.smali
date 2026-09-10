.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$20;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$rawText:Ljava/lang/String;

.field private final synthetic val$textView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$20;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$20;->val$textView:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$20;->val$rawText:Ljava/lang/String;

    .line 1004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1009
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$20;->val$textView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1010
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    move v0, v2

    .line 1012
    .local v0, "isTexted":Z
    :goto_0
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$20;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v4}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$20;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v4}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v4}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$20;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v4}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v4}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsTexted()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$20;->val$rawText:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$20;->val$rawText:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1016
    :cond_0
    :goto_1
    return-void

    .end local v0    # "isTexted":Z
    :cond_1
    move v0, v3

    .line 1010
    goto :goto_0

    .line 1015
    .restart local v0    # "isTexted":Z
    :cond_2
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$20;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$20;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v5}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v5

    iget-object v5, v5, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v5}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$20;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v5}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v5

    iget-object v5, v5, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v5}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsTexted()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_2
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$20;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-static {v4, v3, v1, v2}, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils;->applyTextToImage(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ZLjava/lang/String;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2
.end method
