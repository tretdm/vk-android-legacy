.class Lcom/vkontakte/android/mediapicker/ui/LocalImageView$2$1;
.super Ljava/lang/Object;
.source "LocalImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/mediapicker/ui/LocalImageView$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/mediapicker/ui/LocalImageView$2;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/LocalImageView$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView$2$1;->this$1:Lcom/vkontakte/android/mediapicker/ui/LocalImageView$2;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView$2$1;->this$1:Lcom/vkontakte/android/mediapicker/ui/LocalImageView$2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView$2;->access$0(Lcom/vkontakte/android/mediapicker/ui/LocalImageView$2;Z)V

    .line 133
    return-void
.end method
