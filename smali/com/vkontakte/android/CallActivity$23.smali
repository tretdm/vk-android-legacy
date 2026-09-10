.class Lcom/vkontakte/android/CallActivity$23;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CallActivity;->onInVideoStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/CallActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CallActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity$23;->this$0:Lcom/vkontakte/android/CallActivity;

    .line 1002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$23;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$10(Lcom/vkontakte/android/CallActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 1004
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$23;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$36(Lcom/vkontakte/android/CallActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1005
    return-void
.end method
