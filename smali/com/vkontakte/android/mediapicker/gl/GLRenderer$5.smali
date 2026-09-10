.class Lcom/vkontakte/android/mediapicker/gl/GLRenderer$5;
.super Ljava/lang/Object;
.source "GLRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/gl/GLRenderer;->invoke_sync(Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/gl/GLRenderer;

.field final synthetic val$action:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/gl/GLRenderer;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$5;->this$0:Lcom/vkontakte/android/mediapicker/gl/GLRenderer;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$5;->val$action:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 132
    .local v0, "ms":J
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$5;->this$0:Lcom/vkontakte/android/mediapicker/gl/GLRenderer;

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/gl/GLRenderer;->access$000(Lcom/vkontakte/android/mediapicker/gl/GLRenderer;)Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$5;->val$action:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->drawFrame(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method
