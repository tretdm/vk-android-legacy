.class Lcom/vkontakte/android/VideoAttachView$1;
.super Ljava/lang/Object;
.source "VideoAttachView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/VideoAttachView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field removed:Z

.field final synthetic this$0:Lcom/vkontakte/android/VideoAttachView;

.field private final synthetic val$black:Landroid/view/View;

.field private final synthetic val$iv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/VideoAttachView;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/VideoAttachView$1;->this$0:Lcom/vkontakte/android/VideoAttachView;

    iput-object p2, p0, Lcom/vkontakte/android/VideoAttachView$1;->val$iv:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/vkontakte/android/VideoAttachView$1;->val$black:Landroid/view/View;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/VideoAttachView$1;->removed:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 139
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/vkontakte/android/VideoAttachView$1;->removed:Z

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachView$1;->this$0:Lcom/vkontakte/android/VideoAttachView;

    new-instance v1, Lcom/vkontakte/android/VideoAttachView$1$1;

    iget-object v2, p0, Lcom/vkontakte/android/VideoAttachView$1;->val$iv:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/vkontakte/android/VideoAttachView$1;->val$black:Landroid/view/View;

    invoke-direct {v1, p0, v2, v3}, Lcom/vkontakte/android/VideoAttachView$1$1;-><init>(Lcom/vkontakte/android/VideoAttachView$1;Landroid/widget/ImageView;Landroid/view/View;)V

    .line 147
    const-wide/16 v2, 0x5dc

    .line 144
    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/VideoAttachView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/VideoAttachView$1;->removed:Z

    .line 150
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 153
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 156
    return-void
.end method
