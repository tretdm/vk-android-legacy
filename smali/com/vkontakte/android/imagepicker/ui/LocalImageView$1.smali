.class Lcom/vkontakte/android/imagepicker/ui/LocalImageView$1;
.super Lcom/vkontakte/android/imagepicker/utils/ActionCallback;
.source "LocalImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/imagepicker/ui/LocalImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/imagepicker/utils/ActionCallback",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/ui/LocalImageView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/ui/LocalImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView$1;->this$0:Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

    .line 54
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 59
    instance-of v3, p1, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 61
    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView$1;->this$0:Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

    invoke-static {v3}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->access$0(Lcom/vkontakte/android/imagepicker/ui/LocalImageView;)Landroid/widget/ImageView;

    move-result-object v3

    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 68
    .restart local p1    # "data":Ljava/lang/Object;
    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;

    move-object v1, v0

    .line 70
    .local v1, "result":Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView$1;->this$0:Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

    invoke-static {v3}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->access$1(Lcom/vkontakte/android/imagepicker/ui/LocalImageView;)I

    move-result v3

    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;->getImageId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 73
    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView$1;->this$0:Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

    invoke-static {v3, v1}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->access$2(Lcom/vkontakte/android/imagepicker/ui/LocalImageView;Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    .end local v1    # "result":Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;
    :catch_0
    move-exception v2

    .line 77
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "Error in the LocalImageView callback"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
