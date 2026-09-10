.class Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$2;
.super Ljava/lang/Object;
.source "GalleryPickerFooterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->fillActionButtonBig(Landroid/content/Context;ILandroid/widget/RelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;I)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$2;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    iput p2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 483
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$2;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->access$000(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$2;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->access$100(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$2;->val$type:I

    if-nez v0, :cond_1

    .line 487
    invoke-static {}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->checkTapLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$2;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->access$000(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;->onBigCancelPressed()V

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    invoke-static {}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->checkTapLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$2;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->access$000(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;->onBigCompletePressed()V

    goto :goto_0
.end method
