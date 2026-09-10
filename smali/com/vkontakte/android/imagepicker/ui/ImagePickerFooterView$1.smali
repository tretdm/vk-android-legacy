.class Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$1;
.super Ljava/lang/Object;
.source "ImagePickerFooterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->fillActionButton(Landroid/content/Context;ILandroid/widget/RelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$1;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    iput p2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$1;->val$type:I

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$1;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$1;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->access$1(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$1;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->access$2(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$CropperCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 294
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$1;->val$type:I

    if-nez v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$1;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->access$2(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$CropperCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$CropperCallback;->onCropReset()V

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$1;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->access$2(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$CropperCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$CropperCallback;->onCropApply()V

    goto :goto_0

    .line 302
    :cond_2
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$1;->val$type:I

    if-nez v0, :cond_3

    .line 303
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$1;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;->onCancelPressed()V

    goto :goto_0

    .line 306
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$1;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->access$3(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 307
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$1;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;->onRetryPressed()V

    goto :goto_0

    .line 309
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$1;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;->onCompletePressed()V

    goto :goto_0
.end method
