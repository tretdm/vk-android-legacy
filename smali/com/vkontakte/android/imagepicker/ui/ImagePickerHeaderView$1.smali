.class Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView$1;
.super Ljava/lang/Object;
.source "ImagePickerHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView$1;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView$1;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;)Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView$1;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;)Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView$Callback;->onBackPressed()V

    .line 165
    :cond_0
    return-void
.end method
