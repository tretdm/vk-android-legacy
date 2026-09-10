.class Lcom/vkontakte/android/PhotoViewerActivity$14$1;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/PhotoViewerActivity$14;

.field private final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity$14;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$14$1;->this$1:Lcom/vkontakte/android/PhotoViewerActivity$14;

    iput-object p2, p0, Lcom/vkontakte/android/PhotoViewerActivity$14$1;->val$bmp:Landroid/graphics/Bitmap;

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 431
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$14$1;->this$1:Lcom/vkontakte/android/PhotoViewerActivity$14;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerActivity$14;->access$0(Lcom/vkontakte/android/PhotoViewerActivity$14;)Lcom/vkontakte/android/PhotoViewerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$14$1;->val$bmp:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->access$11(Lcom/vkontakte/android/PhotoViewerActivity;Landroid/graphics/Bitmap;Z)V

    .line 432
    return-void
.end method
