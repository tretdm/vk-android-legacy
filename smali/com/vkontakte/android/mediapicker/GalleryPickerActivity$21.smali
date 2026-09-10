.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$21;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showCaptionBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blocked:Z

.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

.field final synthetic val$textView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Landroid/widget/EditText;)V
    .locals 1

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$21;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$21;->val$textView:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1025
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$21;->blocked:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 1053
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i1"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 1031
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "inputString"    # Ljava/lang/CharSequence;
    .param p2, "i1"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 1036
    iget-boolean v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$21;->blocked:Z

    if-eqz v1, :cond_0

    .line 1047
    :goto_0
    return-void

    .line 1039
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$21;->blocked:Z

    .line 1041
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1043
    .local v0, "input":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1044
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$21;->val$textView:Landroid/widget/EditText;

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->clearTextInput(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 1046
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$21;->blocked:Z

    goto :goto_0
.end method
