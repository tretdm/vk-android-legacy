.class Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$2;
.super Ljava/lang/Object;
.source "ImagePickerFooterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->fillActionButtonBig(Landroid/content/Context;ILandroid/widget/RelativeLayout;)V
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
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$2;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    iput p2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$2;->val$type:I

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$2;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$2;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->access$1(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$2;->val$type:I

    if-nez v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$2;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;->onBigCancelPressed()V

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$2;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;->onBigCompletePressed()V

    goto :goto_0
.end method
