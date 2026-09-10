.class Lcom/vkontakte/android/VideoAttachView$1$1;
.super Ljava/lang/Object;
.source "VideoAttachView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/VideoAttachView$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/VideoAttachView$1;

.field private final synthetic val$black:Landroid/view/View;

.field private final synthetic val$iv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/VideoAttachView$1;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/VideoAttachView$1$1;->this$1:Lcom/vkontakte/android/VideoAttachView$1;

    iput-object p2, p0, Lcom/vkontakte/android/VideoAttachView$1$1;->val$iv:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/vkontakte/android/VideoAttachView$1$1;->val$black:Landroid/view/View;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachView$1$1;->val$iv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/vkontakte/android/VideoAttachView$1$1;->val$iv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 146
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachView$1$1;->val$black:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/vkontakte/android/VideoAttachView$1$1;->val$black:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 147
    return-void
.end method
