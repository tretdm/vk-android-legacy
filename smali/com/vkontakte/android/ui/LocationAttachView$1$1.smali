.class Lcom/vkontakte/android/ui/LocationAttachView$1$1;
.super Ljava/lang/Object;
.source "LocationAttachView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/LocationAttachView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ui/LocationAttachView$1;

.field private final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/LocationAttachView$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/LocationAttachView$1$1;->this$1:Lcom/vkontakte/android/ui/LocationAttachView$1;

    iput-object p2, p0, Lcom/vkontakte/android/ui/LocationAttachView$1$1;->val$bmp:Landroid/graphics/Bitmap;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 72
    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v1, 0x2

    .line 73
    .local v1, "m":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/LocationAttachView$1$1;->val$bmp:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    mul-int/lit8 v4, v1, 0x19

    mul-int/lit16 v5, v1, 0x12c

    mul-int/lit16 v6, v1, 0x82

    invoke-static {v2, v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74
    .local v0, "bmp2":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/vkontakte/android/ui/LocationAttachView$1$1;->this$1:Lcom/vkontakte/android/ui/LocationAttachView$1;

    invoke-static {v2}, Lcom/vkontakte/android/ui/LocationAttachView$1;->access$0(Lcom/vkontakte/android/ui/LocationAttachView$1;)Lcom/vkontakte/android/ui/LocationAttachView;

    move-result-object v2

    const v3, 0x7f06000a

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/LocationAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    return-void

    .line 72
    .end local v0    # "bmp2":Landroid/graphics/Bitmap;
    .end local v1    # "m":I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
