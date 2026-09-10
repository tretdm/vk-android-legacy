.class Lcom/vkontakte/android/imagepicker/gl/GLRenderer$3;
.super Ljava/lang/Object;
.source "GLRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/gl/GLRenderer;->invoke_async(Ljava/lang/Runnable;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;)V
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
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderer$3;->this$0:Lcom/vkontakte/android/imagepicker/gl/GLRenderer;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderer$3;->val$action:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderer$3;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 81
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderer$3;->this$0:Lcom/vkontakte/android/imagepicker/gl/GLRenderer;

    invoke-static {v1}, Lcom/vkontakte/android/imagepicker/gl/GLRenderer;->access$1(Lcom/vkontakte/android/imagepicker/gl/GLRenderer;)Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderer$3;->val$action:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->getBitmap(Ljava/lang/Runnable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderer$3;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->post(Ljava/lang/Object;)V

    .line 85
    :cond_0
    return-void
.end method
