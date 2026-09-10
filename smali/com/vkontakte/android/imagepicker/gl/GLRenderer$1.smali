.class Lcom/vkontakte/android/imagepicker/gl/GLRenderer$1;
.super Ljava/lang/Object;
.source "GLRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/gl/GLRenderer;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/gl/GLRenderer;

.field private final synthetic val$height:I

.field private final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/gl/GLRenderer;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderer$1;->this$0:Lcom/vkontakte/android/imagepicker/gl/GLRenderer;

    iput p2, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderer$1;->val$width:I

    iput p3, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderer$1;->val$height:I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderer$1;->this$0:Lcom/vkontakte/android/imagepicker/gl/GLRenderer;

    new-instance v1, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;

    iget v2, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderer$1;->val$width:I

    iget v3, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderer$1;->val$height:I

    invoke-direct {v1, v2, v3}, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;-><init>(II)V

    invoke-static {v0, v1}, Lcom/vkontakte/android/imagepicker/gl/GLRenderer;->access$0(Lcom/vkontakte/android/imagepicker/gl/GLRenderer;Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;)V

    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderer$1;->this$0:Lcom/vkontakte/android/imagepicker/gl/GLRenderer;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/gl/GLRenderer;->access$1(Lcom/vkontakte/android/imagepicker/gl/GLRenderer;)Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/imagepicker/gl/GLRenderer$Renderer;

    invoke-direct {v1}, Lcom/vkontakte/android/imagepicker/gl/GLRenderer$Renderer;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 50
    return-void
.end method
