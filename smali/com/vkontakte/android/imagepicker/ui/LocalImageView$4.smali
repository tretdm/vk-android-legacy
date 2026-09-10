.class Lcom/vkontakte/android/imagepicker/ui/LocalImageView$4;
.super Ljava/lang/Object;
.source "LocalImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->hideOverlay(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/ui/LocalImageView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/ui/LocalImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView$4;->this$0:Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView$4;->this$0:Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->getOverlay()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    return-void
.end method
