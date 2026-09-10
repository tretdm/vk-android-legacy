.class Lcom/vkontakte/android/CallActivity$3;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CallActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity$3;->this$0:Lcom/vkontakte/android/CallActivity;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const v5, 0x3faa9fbe    # 1.333f

    .line 192
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 193
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/vkontakte/android/CallActivity$3;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/CallActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 194
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .local v3, "scrWidth":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 197
    .local v2, "scrHeight":I
    sget-boolean v4, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v4, :cond_0

    .line 198
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v4, v2

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 202
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    const/16 v4, 0x11

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 203
    iget-object v4, p0, Lcom/vkontakte/android/CallActivity$3;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v4}, Lcom/vkontakte/android/CallActivity;->access$10(Lcom/vkontakte/android/CallActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v4, p0, Lcom/vkontakte/android/CallActivity$3;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v4}, Lcom/vkontakte/android/CallActivity;->access$11(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/CallActivity$3;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v5}, Lcom/vkontakte/android/CallActivity;->access$10(Lcom/vkontakte/android/CallActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 205
    return-void

    .line 200
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v4, v3

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_0
.end method
