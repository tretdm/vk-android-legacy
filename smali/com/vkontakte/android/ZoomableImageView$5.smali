.class Lcom/vkontakte/android/ZoomableImageView$5;
.super Ljava/lang/Object;
.source "ZoomableImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ZoomableImageView;->setImageMatrixAnimated(Landroid/graphics/Matrix;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ZoomableImageView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ZoomableImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ZoomableImageView$5;->this$0:Lcom/vkontakte/android/ZoomableImageView;

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView$5;->this$0:Lcom/vkontakte/android/ZoomableImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ZoomableImageView;->access$7(Lcom/vkontakte/android/ZoomableImageView;Z)V

    .line 734
    return-void
.end method
