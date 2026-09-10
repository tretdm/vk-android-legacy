.class Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$3;
.super Landroid/widget/FrameLayout;
.source "ImagePickerFooterView.java"


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

.field private final synthetic val$image:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$3;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$3;->val$image:Landroid/widget/ImageView;

    .line 468
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 472
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$3;->val$image:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 473
    return-void
.end method
