.class Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$7;
.super Ljava/lang/Object;
.source "ImagePickerFooterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateBadgeAnimated(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

.field private final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$7;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    iput p2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$7;->val$count:I

    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 682
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$7;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->access$4(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$7;->val$count:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    return-void
.end method
