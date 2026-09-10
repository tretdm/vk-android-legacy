.class Lcom/vkontakte/android/imagepicker/gl/GLRenderer$5;
.super Ljava/lang/Object;
.source "GLRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/gl/GLRenderer;->invoke_sync(Ljava/lang/Runnable;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/gl/GLRenderer;

.field private final synthetic val$action:Ljava/lang/Runnable;

.field private final synthetic val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/gl/GLRenderer;Ljava/lang/Runnable;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderer$5;->this$0:Lcom/vkontakte/android/imagepicker/gl/GLRenderer;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderer$5;->val$action:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderer$5;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 136
    .local v0, "ms":J
    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderer$5;->this$0:Lcom/vkontakte/android/imagepicker/gl/GLRenderer;

    invoke-static {v3}, Lcom/vkontakte/android/imagepicker/gl/GLRenderer;->access$1(Lcom/vkontakte/android/imagepicker/gl/GLRenderer;)Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderer$5;->val$action:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->getBitmap(Ljava/lang/Runnable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 138
    .local v2, "result":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 139
    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderer$5;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    invoke-virtual {v3, v2}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->exec(Ljava/lang/Object;)V

    .line 143
    :cond_0
    return-void
.end method
