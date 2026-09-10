.class Lcom/vkontakte/android/fragments/ChatFragment$20;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment;->animateJump()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatFragment;

.field private final synthetic val$iv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$20;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/ChatFragment$20;->val$iv:Landroid/widget/ImageView;

    .line 1238
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1240
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$20;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1241
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$20;->val$iv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1242
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$20;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$30(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$20;->val$iv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1243
    return-void
.end method
