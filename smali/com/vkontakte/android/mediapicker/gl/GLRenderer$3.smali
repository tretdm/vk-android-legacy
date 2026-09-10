.class Lcom/vkontakte/android/mediapicker/gl/GLRenderer$3;
.super Ljava/lang/Object;
.source "GLRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/gl/GLRenderer;->invoke_async(Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/gl/GLRenderer;

.field private final synthetic val$action:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/gl/GLRenderer;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$3;->this$0:Lcom/vkontakte/android/mediapicker/gl/GLRenderer;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$3;->val$action:Ljava/lang/Runnable;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$3;->this$0:Lcom/vkontakte/android/mediapicker/gl/GLRenderer;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gl/GLRenderer;->access$1(Lcom/vkontakte/android/mediapicker/gl/GLRenderer;)Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$3;->val$action:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->drawFrame(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method
