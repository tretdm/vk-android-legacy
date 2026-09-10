.class Lcom/vkontakte/android/imagepicker/ui/CropperView$1;
.super Ljava/lang/Object;
.source "CropperView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/ui/CropperView;->fadeOut(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/ui/CropperView;

.field private final synthetic val$after:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/ui/CropperView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView$1;->this$0:Lcom/vkontakte/android/imagepicker/ui/CropperView;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView$1;->val$after:Ljava/lang/Runnable;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView$1;->this$0:Lcom/vkontakte/android/imagepicker/ui/CropperView;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->invalidate()V

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView$1;->this$0:Lcom/vkontakte/android/imagepicker/ui/CropperView;

    invoke-static {v2}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->access$0(Lcom/vkontakte/android/imagepicker/ui/CropperView;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView$1;->this$0:Lcom/vkontakte/android/imagepicker/ui/CropperView;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, p0, v1, v2}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView$1;->val$after:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView$1;->val$after:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
