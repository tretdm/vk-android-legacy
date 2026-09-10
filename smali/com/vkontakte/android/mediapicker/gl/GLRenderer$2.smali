.class Lcom/vkontakte/android/mediapicker/gl/GLRenderer$2;
.super Ljava/lang/Object;
.source "GLRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/gl/GLRenderer;->updateSurface(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/gl/GLRenderer;

.field private final synthetic val$height:I

.field private final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/gl/GLRenderer;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$2;->this$0:Lcom/vkontakte/android/mediapicker/gl/GLRenderer;

    iput p2, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$2;->val$width:I

    iput p3, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$2;->val$height:I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$2;->this$0:Lcom/vkontakte/android/mediapicker/gl/GLRenderer;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gl/GLRenderer;->access$1(Lcom/vkontakte/android/mediapicker/gl/GLRenderer;)Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->width:I

    iget v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$2;->val$width:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$2;->this$0:Lcom/vkontakte/android/mediapicker/gl/GLRenderer;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gl/GLRenderer;->access$1(Lcom/vkontakte/android/mediapicker/gl/GLRenderer;)Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->height:I

    iget v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$2;->val$height:I

    if-eq v0, v1, :cond_1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$2;->this$0:Lcom/vkontakte/android/mediapicker/gl/GLRenderer;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gl/GLRenderer;->access$1(Lcom/vkontakte/android/mediapicker/gl/GLRenderer;)Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$2;->val$width:I

    iget v2, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$2;->val$height:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->updateSurface(II)V

    .line 64
    :cond_1
    return-void
.end method
