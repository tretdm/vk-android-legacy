.class Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$4;
.super Ljava/lang/Object;
.source "ImagePickerFooterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->fillEdtiorActionsWrap(Landroid/content/Context;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

.field private final synthetic val$action:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$4;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    iput p2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$4;->val$action:I

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$4;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$4;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;->getEditorActionsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$4;->val$action:I

    packed-switch v0, :pswitch_data_0

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 521
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$4;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateFilterActionButton()V

    goto :goto_0

    .line 527
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$4;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;->onTextPressed()V

    goto :goto_0

    .line 531
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$4;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;->onCropPressed()V

    goto :goto_0

    .line 535
    :pswitch_3
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$4;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;->onEnchancePressed()V

    goto :goto_0

    .line 517
    :pswitch_data_0
    .packed-switch 0x140
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
