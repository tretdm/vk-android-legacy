.class Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView$2;
.super Landroid/widget/ImageButton;
.source "ImagePickerHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->addActionButton(IILandroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView$2;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;

    .line 102
    invoke-direct {p0, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 106
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v0

    add-int/2addr v0, p2

    invoke-super {p0, v0, p2}, Landroid/widget/ImageButton;->onMeasure(II)V

    .line 107
    return-void
.end method
