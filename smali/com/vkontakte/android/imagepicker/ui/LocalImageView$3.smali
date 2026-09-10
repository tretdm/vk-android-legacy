.class Lcom/vkontakte/android/imagepicker/ui/LocalImageView$3;
.super Landroid/widget/ImageView;
.source "LocalImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/ui/LocalImageView;-><init>(Landroid/content/Context;ILandroid/widget/AdapterView$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private makeRequest:Z

.field private releaseRequest:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/ui/LocalImageView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/ui/LocalImageView;Landroid/content/Context;)V
    .locals 1
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView$3;->this$0:Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

    .line 136
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView$3;->makeRequest:Z

    .line 139
    new-instance v0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView$3$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView$3$1;-><init>(Lcom/vkontakte/android/imagepicker/ui/LocalImageView$3;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView$3;->releaseRequest:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/imagepicker/ui/LocalImageView$3;Z)V
    .locals 0

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView$3;->makeRequest:Z

    return-void
.end method


# virtual methods
.method public requestLayout()V
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView$3;->makeRequest:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-super {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 164
    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView$3;->makeRequest:Z

    .line 152
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 154
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView$3;->releaseRequest:Ljava/lang/Runnable;

    const-wide/16 v1, 0x19

    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView$3;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    return-void
.end method
