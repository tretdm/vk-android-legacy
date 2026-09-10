.class Lcom/vkontakte/android/ui/GifView$AnimationRunner$1;
.super Ljava/lang/Object;
.source "GifView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/GifView$AnimationRunner;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ui/GifView$AnimationRunner;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/GifView$AnimationRunner;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/GifView$AnimationRunner$1;->this$1:Lcom/vkontakte/android/ui/GifView$AnimationRunner;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView$AnimationRunner$1;->this$1:Lcom/vkontakte/android/ui/GifView$AnimationRunner;

    invoke-static {v0}, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->access$1(Lcom/vkontakte/android/ui/GifView$AnimationRunner;)Lcom/vkontakte/android/ui/GifView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/GifView;->requestLayout()V

    .line 217
    return-void
.end method
