.class Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$1;
.super Ljava/lang/Object;
.source "GalleryPickerFooterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->fillActionButton(Landroid/content/Context;ILandroid/widget/RelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    iput p2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$1;->val$type:I

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->access$0(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->access$1(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->access$2(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 341
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$1;->val$type:I

    if-nez v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->access$2(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;->cancel()V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->access$2(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;->apply()V

    goto :goto_0

    .line 349
    :cond_2
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$1;->val$type:I

    if-nez v0, :cond_3

    .line 351
    invoke-static {}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->checkTapLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->access$0(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;->onCancelPressed()V

    goto :goto_0

    .line 356
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->access$3(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 357
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->access$0(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;->onRetryPressed()V

    goto :goto_0

    .line 359
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->access$0(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;->onCompletePressed()V

    goto :goto_0
.end method
