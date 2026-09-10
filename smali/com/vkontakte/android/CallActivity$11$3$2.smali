.class Lcom/vkontakte/android/CallActivity$11$3$2;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CallActivity$11$3;->onCamera(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/CallActivity$11$3;

.field private final synthetic val$available:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CallActivity$11$3;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity$11$3$2;->this$2:Lcom/vkontakte/android/CallActivity$11$3;

    iput-boolean p2, p0, Lcom/vkontakte/android/CallActivity$11$3$2;->val$available:Z

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 628
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11$3$2;->this$2:Lcom/vkontakte/android/CallActivity$11$3;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$11$3;->access$0(Lcom/vkontakte/android/CallActivity$11$3;)Lcom/vkontakte/android/CallActivity$11;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$10(Lcom/vkontakte/android/CallActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11$3$2;->this$2:Lcom/vkontakte/android/CallActivity$11$3;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$11$3;->access$0(Lcom/vkontakte/android/CallActivity$11$3;)Lcom/vkontakte/android/CallActivity$11;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$10(Lcom/vkontakte/android/CallActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v3

    iget-boolean v0, p0, Lcom/vkontakte/android/CallActivity$11$3$2;->val$available:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11$3$2;->this$2:Lcom/vkontakte/android/CallActivity$11$3;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$11$3;->access$0(Lcom/vkontakte/android/CallActivity$11$3;)Lcom/vkontakte/android/CallActivity$11;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$36(Lcom/vkontakte/android/CallActivity;)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/vkontakte/android/CallActivity$11$3$2;->val$available:Z

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 630
    return-void

    :cond_1
    move v0, v2

    .line 628
    goto :goto_0

    :cond_2
    move v2, v1

    .line 629
    goto :goto_1
.end method
