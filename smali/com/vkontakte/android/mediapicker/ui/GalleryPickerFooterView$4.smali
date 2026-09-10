.class Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$4;
.super Ljava/lang/Object;
.source "GalleryPickerFooterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->fillEdtiorActionsWrap(Landroid/content/Context;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

.field private final synthetic val$action:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$4;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    iput p2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$4;->val$action:I

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$4;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->access$0(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$4;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->access$0(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;->getEditorActionsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$4;->val$action:I

    packed-switch v0, :pswitch_data_0

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 581
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$4;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateFilterActionButton()V

    goto :goto_0

    .line 585
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$4;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->access$0(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;->onTextPressed()V

    goto :goto_0

    .line 589
    :pswitch_2
    invoke-static {}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->checkTapLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$4;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->access$0(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;->onCropPressed()V

    goto :goto_0

    .line 594
    :pswitch_3
    const/16 v0, 0x258

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->checkTapLimit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$4;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->access$0(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$4;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    const/16 v2, 0x143

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->toggleEditorActionEnabled(I)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;->onEnhancePressed(Z)V

    goto :goto_0

    .line 578
    :pswitch_data_0
    .packed-switch 0x140
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
