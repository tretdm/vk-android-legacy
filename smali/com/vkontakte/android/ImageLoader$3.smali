.class Lcom/vkontakte/android/ImageLoader$3;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ImageLoader;->runThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ImageLoader;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;

.field final synthetic val$e:Lcom/vkontakte/android/ImageLoader$QueueEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ImageLoader;Lcom/vkontakte/android/ImageLoader$QueueEntry;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/vkontakte/android/ImageLoader$3;->this$0:Lcom/vkontakte/android/ImageLoader;

    iput-object p2, p0, Lcom/vkontakte/android/ImageLoader$3;->val$e:Lcom/vkontakte/android/ImageLoader$QueueEntry;

    iput-object p3, p0, Lcom/vkontakte/android/ImageLoader$3;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/ImageLoader$3;->val$e:Lcom/vkontakte/android/ImageLoader$QueueEntry;

    iget-object v0, v0, Lcom/vkontakte/android/ImageLoader$QueueEntry;->v:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkontakte/android/ImageLoader$3;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    return-void
.end method
