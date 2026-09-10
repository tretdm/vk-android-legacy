.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$19;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->showCaptionBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blocked:Z

.field lastLinesCount:[I

.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

.field private final synthetic val$textView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Landroid/widget/EditText;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$19;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$19;->val$textView:Landroid/widget/EditText;

    .line 878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$19;->blocked:Z

    .line 888
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$19;->lastLinesCount:[I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 912
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i1"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 886
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "inputString"    # Ljava/lang/CharSequence;
    .param p2, "i1"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 893
    iget-boolean v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$19;->blocked:Z

    if-eqz v1, :cond_0

    .line 906
    :goto_0
    return-void

    .line 896
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$19;->blocked:Z

    .line 898
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 900
    .local v0, "input":[C
    array-length v1, v0

    if-eqz v1, :cond_1

    .line 902
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$19;->val$textView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$19;->lastLinesCount:[I

    invoke-virtual {v1, v2, v0, v3}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->clearTextInput(Landroid/widget/EditText;[C[I)V

    .line 905
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$19;->blocked:Z

    goto :goto_0
.end method
