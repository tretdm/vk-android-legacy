.class Lcom/vkontakte/android/imagepicker/ui/LocalImageView$3$1;
.super Ljava/lang/Object;
.source "LocalImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/imagepicker/ui/LocalImageView$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/imagepicker/ui/LocalImageView$3;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/ui/LocalImageView$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView$3$1;->this$1:Lcom/vkontakte/android/imagepicker/ui/LocalImageView$3;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView$3$1;->this$1:Lcom/vkontakte/android/imagepicker/ui/LocalImageView$3;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView$3;->access$0(Lcom/vkontakte/android/imagepicker/ui/LocalImageView$3;Z)V

    .line 145
    return-void
.end method
