.class Lcom/vkontakte/android/ZoomableImageView$1$1;
.super Ljava/lang/Object;
.source "ZoomableImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ZoomableImageView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ZoomableImageView$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ZoomableImageView$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ZoomableImageView$1$1;->this$1:Lcom/vkontakte/android/ZoomableImageView$1;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView$1$1;->this$1:Lcom/vkontakte/android/ZoomableImageView$1;

    invoke-static {v0}, Lcom/vkontakte/android/ZoomableImageView$1;->access$0(Lcom/vkontakte/android/ZoomableImageView$1;)Lcom/vkontakte/android/ZoomableImageView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ZoomableImageView;->access$2(Lcom/vkontakte/android/ZoomableImageView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ZoomableImageView$1$1;->this$1:Lcom/vkontakte/android/ZoomableImageView$1;

    invoke-static {v1}, Lcom/vkontakte/android/ZoomableImageView$1;->access$0(Lcom/vkontakte/android/ZoomableImageView$1;)Lcom/vkontakte/android/ZoomableImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 145
    return-void
.end method
