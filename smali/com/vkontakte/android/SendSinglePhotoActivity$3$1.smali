.class Lcom/vkontakte/android/SendSinglePhotoActivity$3$1;
.super Ljava/lang/Object;
.source "SendSinglePhotoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SendSinglePhotoActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/SendSinglePhotoActivity$3;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SendSinglePhotoActivity$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$3$1;->this$1:Lcom/vkontakte/android/SendSinglePhotoActivity$3;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 114
    iget-object v1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$3$1;->this$1:Lcom/vkontakte/android/SendSinglePhotoActivity$3;

    invoke-static {v1}, Lcom/vkontakte/android/SendSinglePhotoActivity$3;->access$0(Lcom/vkontakte/android/SendSinglePhotoActivity$3;)Lcom/vkontakte/android/SendSinglePhotoActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/SendSinglePhotoActivity;->access$3(Lcom/vkontakte/android/SendSinglePhotoActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$3$1;->this$1:Lcom/vkontakte/android/SendSinglePhotoActivity$3;

    invoke-static {v2}, Lcom/vkontakte/android/SendSinglePhotoActivity$3;->access$0(Lcom/vkontakte/android/SendSinglePhotoActivity$3;)Lcom/vkontakte/android/SendSinglePhotoActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/SendSinglePhotoActivity;->access$4(Lcom/vkontakte/android/SendSinglePhotoActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 115
    iget-object v1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$3$1;->this$1:Lcom/vkontakte/android/SendSinglePhotoActivity$3;

    invoke-static {v1}, Lcom/vkontakte/android/SendSinglePhotoActivity$3;->access$0(Lcom/vkontakte/android/SendSinglePhotoActivity$3;)Lcom/vkontakte/android/SendSinglePhotoActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/SendSinglePhotoActivity;->access$3(Lcom/vkontakte/android/SendSinglePhotoActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$3$1;->this$1:Lcom/vkontakte/android/SendSinglePhotoActivity$3;

    invoke-static {v2}, Lcom/vkontakte/android/SendSinglePhotoActivity$3;->access$0(Lcom/vkontakte/android/SendSinglePhotoActivity$3;)Lcom/vkontakte/android/SendSinglePhotoActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/SendSinglePhotoActivity;->access$4(Lcom/vkontakte/android/SendSinglePhotoActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$3$1;->this$1:Lcom/vkontakte/android/SendSinglePhotoActivity$3;

    invoke-static {v2}, Lcom/vkontakte/android/SendSinglePhotoActivity$3;->access$0(Lcom/vkontakte/android/SendSinglePhotoActivity$3;)Lcom/vkontakte/android/SendSinglePhotoActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/SendSinglePhotoActivity;->access$4(Lcom/vkontakte/android/SendSinglePhotoActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 116
    .local v0, "ih":I
    iget-object v1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$3$1;->this$1:Lcom/vkontakte/android/SendSinglePhotoActivity$3;

    invoke-static {v1}, Lcom/vkontakte/android/SendSinglePhotoActivity$3;->access$0(Lcom/vkontakte/android/SendSinglePhotoActivity$3;)Lcom/vkontakte/android/SendSinglePhotoActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/SendSinglePhotoActivity;->access$3(Lcom/vkontakte/android/SendSinglePhotoActivity;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    return-void
.end method
