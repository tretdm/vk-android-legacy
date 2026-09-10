.class Lcom/vkontakte/android/mediapicker/ui/LocalImageView$3;
.super Ljava/lang/Object;
.source "LocalImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->hideOverlayView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/ui/LocalImageView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/LocalImageView;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView$3;->this$0:Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView$3;->this$0:Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->getOverlayView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    return-void
.end method
